contract main {




// =====================  Runtime code  =====================


address owner;
address sub_a384e485Address;
mapping of uint256 sub_841fa66b;

function sub_841fa66b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_841fa66b[arg1]
}

function owner() payable {
    return owner
}

function sub_a384e485(?) payable {
    return sub_a384e485Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function sub_38d1b278(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_a384e485Address = address(arg1)
}

function setFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_841fa66b[address(arg1)] = arg2
}

function sub_e69aeac0(?) payable {
    require ext_code.size(sub_a384e485Address)
    staticcall sub_a384e485Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_a1ca3a94(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if 1000 < arg4:
        revert with 'NH{q', 17
    if arg1 and -arg4 + 1000 > -1 / arg1:
        revert with 'NH{q', 17
    if (1000 * arg1) - (arg4 * arg1) and arg3 > -1 / (1000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 17
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if 1000 * arg2 > (-1000 * arg1) + (arg4 * arg1) - 1:
        revert with 'NH{q', 17
    if not (1000 * arg2) + (1000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 18
    return ((1000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (1000 * arg2) + (1000 * arg1) - (arg4 * arg1))
}

function sub_4402d0a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(sub_a384e485Address)
    staticcall sub_a384e485Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'amount exceeds balance'
    require ext_code.size(sub_a384e485Address)
    call sub_a384e485Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0419d065(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
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
    require cd[36] == cd[36]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token0() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].getReserves() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].getReserves() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    mem[0] = mem[140 len 20]
    if 1000 < sub_841fa66b[mem[140 len 20]]:
        revert with 'NH{q', 17
    if cd[36] and -sub_841fa66b[mem[140 len 20]] + 1000 > -1 / cd[36]:
        revert with 'NH{q', 17
    if address(ext_call.return_data[0]) == sub_a384e485Address:
        if (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and Mask(112, 0, ext_call.return_data[32]) > -1 / (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-1000 * cd[36]) + (sub_841fa66b[mem[140 len 20]] * cd[36]) - 1:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
            revert with 'NH{q', 18
        if address(ext_call.return_data[0]) != sub_a384e485Address:
            _62 = sha3(address(mem[160]), 2)
            if 1000 < sub_841fa66b[address(mem[160])]:
                revert with 'NH{q', 17
            if (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and -sub_841fa66b[address(mem[160])] + 1000 > -1 / (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
                revert with 'NH{q', 17
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) and ext_call.return_data[50 len 14] > -1 / (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] > (-1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) + (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[18 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 18
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[50 len 14]) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[50 len 14]) / (1000 * ext_call.return_data[18 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) < cd[36]:
                revert with 'NH{q', 17
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])
            return mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97], 
                   (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (stor[_62] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])) - (stor[_62] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])),
                   ((1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (stor[_62] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])) - (stor[_62] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]))) - cd[36]
        _63 = sha3(address(mem[160]), 2)
        if 1000 < sub_841fa66b[address(mem[160])]:
            revert with 'NH{q', 17
        if (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and -sub_841fa66b[address(mem[160])] + 1000 > -1 / (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
            revert with 'NH{q', 17
        if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) and ext_call.return_data[18 len 14] > -1 / (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] > (-1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) + (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[50 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
            revert with 'NH{q', 18
        if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[18 len 14]) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[18 len 14]) / (1000 * ext_call.return_data[50 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) < cd[36]:
            revert with 'NH{q', 17
        mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])
        return mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97], 
               (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (stor[_63] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])) - (stor[_63] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])),
               ((1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (stor[_63] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])) - (stor[_63] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]))) - cd[36]
    if (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and Mask(112, 0, ext_call.return_data[0]) > -1 / (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-1000 * cd[36]) + (sub_841fa66b[mem[140 len 20]] * cd[36]) - 1:
        revert with 'NH{q', 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
        revert with 'NH{q', 18
    if address(ext_call.return_data[0]) != sub_a384e485Address:
        _64 = sha3(address(mem[160]), 2)
        if 1000 < sub_841fa66b[address(mem[160])]:
            revert with 'NH{q', 17
        if (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and -sub_841fa66b[address(mem[160])] + 1000 > -1 / (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
            revert with 'NH{q', 17
        if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) and ext_call.return_data[50 len 14] > -1 / (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] > (-1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) + (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[18 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
            revert with 'NH{q', 18
        if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[50 len 14]) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[50 len 14]) / (1000 * ext_call.return_data[18 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) < cd[36]:
            revert with 'NH{q', 17
        mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])
        return mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97], 
               (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (stor[_64] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])) - (stor[_64] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])),
               ((1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (stor[_64] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])) - (stor[_64] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]))) - cd[36]
    _65 = sha3(address(mem[160]), 2)
    if 1000 < sub_841fa66b[address(mem[160])]:
        revert with 'NH{q', 17
    if (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and -sub_841fa66b[address(mem[160])] + 1000 > -1 / (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
        revert with 'NH{q', 17
    if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) and ext_call.return_data[18 len 14] > -1 / (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[50 len 14] > (-1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) + (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - 1:
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[50 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
        revert with 'NH{q', 18
    if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[18 len 14]) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[18 len 14]) / (1000 * ext_call.return_data[50 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) < cd[36]:
        revert with 'NH{q', 17
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])
    return mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97], 
           (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (stor[_65] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])) - (stor[_65] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])),
           ((1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (stor[_65] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36])) - (stor[_65] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[0]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[0]] * cd[36]))) - cd[36]
}

function sub_63e00b8a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
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
    require cd[36] == cd[36]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token0() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token1() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].getReserves() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].getReserves() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    if address(ext_call.return_data[0]) == sub_a384e485Address:
        _72 = sha3(mem[140 len 20], 2)
        if 1000 < sub_841fa66b[mem[140 len 20]]:
            revert with 'NH{q', 17
        if cd[36] and -sub_841fa66b[mem[140 len 20]] + 1000 > -1 / cd[36]:
            revert with 'NH{q', 17
        if (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and Mask(112, 0, ext_call.return_data[32]) > -1 / (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-1000 * cd[36]) + (sub_841fa66b[mem[140 len 20]] * cd[36]) - 1:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
            revert with 'NH{q', 18
        if address(ext_call.return_data[0]) != sub_a384e485Address:
            _74 = sha3(address(mem[160]), 2)
            if 1000 < sub_841fa66b[address(mem[160])]:
                revert with 'NH{q', 17
            if (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and -sub_841fa66b[address(mem[160])] + 1000 > -1 / (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
                revert with 'NH{q', 17
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) and ext_call.return_data[50 len 14] > -1 / (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] > (-1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) + (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[18 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 18
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[50 len 14]) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[50 len 14]) / (1000 * ext_call.return_data[18 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) <= cd[36]:
                revert with 0, '!Profit'
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            _86 = mem[128]
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(_86)
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[36]
            require ext_code.size(sub_a384e485Address)
            call sub_a384e485Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_86), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            _106 = mem[128]
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if address(ext_call.return_data[0]) != sub_a384e485Address:
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 0, address(_86) << 64
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_86) << 64)] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(0, address(_86) << 64)]
                if ceil32(0, address(_86) << 64) <= 0, address(_86) << 64:
                    require ext_code.size(address(_106))
                    call address(_106).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]), 0, address(this.address), 128, 0, address(_86) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_86) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _774 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_774)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_774), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                    else:
                        _776 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_776)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_776), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                else:
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 0, address(_86) << 64 + 293] = 0
                    require ext_code.size(address(_106))
                    call address(_106).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]), 0, address(this.address), 128, 0, address(_86) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_86) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _822 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_822)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_822), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                    else:
                        _824 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_824)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_824), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
            else:
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 0, address(_86) << 64
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_86) << 64)] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(0, address(_86) << 64)]
                if ceil32(0, address(_86) << 64) <= 0, address(_86) << 64:
                    require ext_code.size(address(_106))
                    call address(_106).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]), address(this.address), 128, 0, address(_86) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_86) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _780 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_780)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_780), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                    else:
                        _782 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_782)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_782), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                else:
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 0, address(_86) << 64 + 293] = 0
                    require ext_code.size(address(_106))
                    call address(_106).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]), address(this.address), 128, 0, address(_86) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_86) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _826 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_826)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_826), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                    else:
                        _828 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_828)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_828), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 1 >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(mem[172 len 20])
            if address(ext_call.return_data[0]) == sub_a384e485Address:
                call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (stor[_74] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])) - (stor[_74] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])), 0, address(this.address), 128, 0
            else:
                call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (stor[_74] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])) - (stor[_74] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])), address(this.address), 128, 0
        else:
            _75 = sha3(address(mem[160]), 2)
            if 1000 < sub_841fa66b[address(mem[160])]:
                revert with 'NH{q', 17
            if (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and -sub_841fa66b[address(mem[160])] + 1000 > -1 / (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
                revert with 'NH{q', 17
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) and ext_call.return_data[18 len 14] > -1 / (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] > (-1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) + (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[50 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 18
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[18 len 14]) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[18 len 14]) / (1000 * ext_call.return_data[50 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) <= cd[36]:
                revert with 0, '!Profit'
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            _88 = mem[128]
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(_88)
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[36]
            require ext_code.size(sub_a384e485Address)
            call sub_a384e485Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_88), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            _107 = mem[128]
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if address(ext_call.return_data[0]) != sub_a384e485Address:
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 0, address(_88) << 64
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_88) << 64)] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(0, address(_88) << 64)]
                if ceil32(0, address(_88) << 64) <= 0, address(_88) << 64:
                    require ext_code.size(address(_107))
                    call address(_107).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]), 0, address(this.address), 128, 0, address(_88) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_88) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _786 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_786)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_786), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                    else:
                        _788 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_788)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_788), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                else:
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 0, address(_88) << 64 + 293] = 0
                    require ext_code.size(address(_107))
                    call address(_107).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]), 0, address(this.address), 128, 0, address(_88) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_88) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _830 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_830)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_830), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                    else:
                        _832 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_832)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_832), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
            else:
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 0, address(_88) << 64
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_88) << 64)] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(0, address(_88) << 64)]
                if ceil32(0, address(_88) << 64) <= 0, address(_88) << 64:
                    require ext_code.size(address(_107))
                    call address(_107).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]), address(this.address), 128, 0, address(_88) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_88) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _792 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_792)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_792), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                    else:
                        _794 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_794)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_794), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                else:
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 0, address(_88) << 64 + 293] = 0
                    require ext_code.size(address(_107))
                    call address(_107).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]), address(this.address), 128, 0, address(_88) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_88) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _834 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_834)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_834), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                    else:
                        _836 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_836)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_836), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 1 >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(mem[172 len 20])
            if address(ext_call.return_data[0]) == sub_a384e485Address:
                call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (stor[_75] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])) - (stor[_75] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])), 0, address(this.address), 128, 0
            else:
                call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (stor[_75] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])) - (stor[_75] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[32])) - (stor[_72] * cd[36] * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * cd[36]) - (stor[_72] * cd[36])), address(this.address), 128, 0
    else:
        _73 = sha3(mem[140 len 20], 2)
        if 1000 < sub_841fa66b[mem[140 len 20]]:
            revert with 'NH{q', 17
        if cd[36] and -sub_841fa66b[mem[140 len 20]] + 1000 > -1 / cd[36]:
            revert with 'NH{q', 17
        if (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and Mask(112, 0, ext_call.return_data[0]) > -1 / (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-1000 * cd[36]) + (sub_841fa66b[mem[140 len 20]] * cd[36]) - 1:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
            revert with 'NH{q', 18
        if address(ext_call.return_data[0]) != sub_a384e485Address:
            _76 = sha3(address(mem[160]), 2)
            if 1000 < sub_841fa66b[address(mem[160])]:
                revert with 'NH{q', 17
            if (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and -sub_841fa66b[address(mem[160])] + 1000 > -1 / (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
                revert with 'NH{q', 17
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) and ext_call.return_data[50 len 14] > -1 / (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] > (-1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) + (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[18 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 18
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[50 len 14]) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[50 len 14]) / (1000 * ext_call.return_data[18 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) <= cd[36]:
                revert with 0, '!Profit'
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            _90 = mem[128]
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(_90)
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[36]
            require ext_code.size(sub_a384e485Address)
            call sub_a384e485Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_90), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            _108 = mem[128]
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if address(ext_call.return_data[0]) != sub_a384e485Address:
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 0, address(_90) << 64
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_90) << 64)] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(0, address(_90) << 64)]
                if ceil32(0, address(_90) << 64) <= 0, address(_90) << 64:
                    require ext_code.size(address(_108))
                    call address(_108).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]), 0, address(this.address), 128, 0, address(_90) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_90) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _798 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_798)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_798), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                    else:
                        _800 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_800)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_800), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                else:
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 0, address(_90) << 64 + 293] = 0
                    require ext_code.size(address(_108))
                    call address(_108).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]), 0, address(this.address), 128, 0, address(_90) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_90) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _838 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_838)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_838), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                    else:
                        _840 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_840)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_840), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
            else:
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 0, address(_90) << 64
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_90) << 64)] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(0, address(_90) << 64)]
                if ceil32(0, address(_90) << 64) <= 0, address(_90) << 64:
                    require ext_code.size(address(_108))
                    call address(_108).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]), address(this.address), 128, 0, address(_90) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_90) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _804 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_804)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_804), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                    else:
                        _806 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_806)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_806), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                else:
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 0, address(_90) << 64 + 293] = 0
                    require ext_code.size(address(_108))
                    call address(_108).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]), address(this.address), 128, 0, address(_90) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_90) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _842 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_842)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_842), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                    else:
                        _844 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_844)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_844), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 1 >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(mem[172 len 20])
            if address(ext_call.return_data[0]) == sub_a384e485Address:
                call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (stor[_76] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])) - (stor[_76] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])), 0, address(this.address), 128, 0
            else:
                call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) - (stor[_76] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]) * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])) - (stor[_76] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])), address(this.address), 128, 0
        else:
            _77 = sha3(address(mem[160]), 2)
            if 1000 < sub_841fa66b[address(mem[160])]:
                revert with 'NH{q', 17
            if (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) and -sub_841fa66b[address(mem[160])] + 1000 > -1 / (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]):
                revert with 'NH{q', 17
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) and ext_call.return_data[18 len 14] > -1 / (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] > (-1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) + (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[50 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])):
                revert with 'NH{q', 18
            if (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[18 len 14]) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36]) * ext_call.return_data[18 len 14]) / (1000 * ext_call.return_data[50 len 14]) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) - (sub_841fa66b[address(mem[160])] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (sub_841fa66b[mem[140 len 20]] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (sub_841fa66b[mem[140 len 20]] * cd[36])) <= cd[36]:
                revert with 0, '!Profit'
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            _92 = mem[128]
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(_92)
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[36]
            require ext_code.size(sub_a384e485Address)
            call sub_a384e485Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_92), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= ('cd', 4).length:
                revert with 'NH{q', 50
            _109 = mem[128]
            mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if address(ext_call.return_data[0]) != sub_a384e485Address:
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 0, address(_92) << 64
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_92) << 64)] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(0, address(_92) << 64)]
                if ceil32(0, address(_92) << 64) <= 0, address(_92) << 64:
                    require ext_code.size(address(_109))
                    call address(_109).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]), 0, address(this.address), 128, 0, address(_92) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_92) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _810 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_810)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_810), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                    else:
                        _812 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_812)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_812), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                else:
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 0, address(_92) << 64 + 293] = 0
                    require ext_code.size(address(_109))
                    call address(_109).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]), 0, address(this.address), 128, 0, address(_92) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_92) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _846 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_846)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_846), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                    else:
                        _848 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_848)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_848), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
            else:
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = 0, address(_92) << 64
                mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_92) << 64)] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(0, address(_92) << 64)]
                if ceil32(0, address(_92) << 64) <= 0, address(_92) << 64:
                    require ext_code.size(address(_109))
                    call address(_109).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]), address(this.address), 128, 0, address(_92) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_92) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _816 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_816)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_816), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                    else:
                        _818 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_818)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_818), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                else:
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 0, address(_92) << 64 + 293] = 0
                    require ext_code.size(address(_109))
                    call address(_109).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]), address(this.address), 128, 0, address(_92) << 64, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(0, address(_92) << 64)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if address(ext_call.return_data[0]) == sub_a384e485Address:
                        _850 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_850)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_850), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                    else:
                        _852 = mem[160]
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(_852)
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(_852), (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 1 >= ('cd', 4).length:
                revert with 'NH{q', 50
            require ext_code.size(mem[172 len 20])
            if address(ext_call.return_data[0]) == sub_a384e485Address:
                call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (stor[_77] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])) - (stor[_77] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])), 0, address(this.address), 128, 0
            else:
                call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) - (stor[_77] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36]) * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])) - (stor[_77] * (1000 * cd[36] * Mask(112, 0, ext_call.return_data[0])) - (stor[_73] * cd[36] * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * cd[36]) - (stor[_73] * cd[36])), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
