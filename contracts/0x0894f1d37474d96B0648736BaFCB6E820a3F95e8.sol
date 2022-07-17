contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of uint256 sub_cdb5f8e5;
uint256 sub_1a5bb982;
uint256 totalTokenVested;
uint256 stor5;
uint256 sub_34262ca4;
uint256 sub_3137f630;
uint8 stor8;
mapping of uint256 sub_4b89ad0b;
array of struct sub_c48eb418;
mapping of uint256 sub_a4d7384e;
mapping of uint256 sub_037bfb62;
mapping of address sub_afff7b7f;
mapping of uint256 sub_d0f07144;
mapping of uint256 sub_2b39e91a;

function sub_037bfb62(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_037bfb62[arg1]
}

function sub_1a5bb982(?) {
    return sub_1a5bb982
}

function sub_2b39e91a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2b39e91a[arg1]
}

function sub_3137f630(?) {
    return sub_3137f630
}

function sub_34262ca4(?) {
    return sub_34262ca4
}

function sub_4b89ad0b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b89ad0b[arg1]
}

function totalTokenVested() {
    return totalTokenVested
}

function sub_88a6ab3f(?) {
    if 0 >= sub_cdb5f8e5.length:
        revert with 'NH{q', 50
    return sub_88a6ab3f
}

function owner() {
    return owner
}

function sub_a4d7384e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a4d7384e[arg1]
}

function sub_afff7b7f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_afff7b7f[arg1]
}

function sub_b74e7a32(?) {
    return bool(stor8)
}

function sub_c48eb418(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_c48eb418[arg1].field_0
    return sub_c48eb418[arg1][arg2].field_0, sub_c48eb418[arg1][arg2].field_256, sub_c48eb418[arg1][arg2].field_512
}

function sub_cdb5f8e5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_cdb5f8e5.length
    return sub_cdb5f8e5[arg1]
}

function sub_d0f07144(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d0f07144[arg1]
}

function token() {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function startVesting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = 1
}

function sub_0ea514cc(?) {
    if 0 >= sub_cdb5f8e5.length:
        revert with 'NH{q', 50
    return block.timestamp >= sub_88a6ab3f
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8a74dbe6(?) {
    if not stor8:
        return bool(stor8)
    if 0 >= sub_cdb5f8e5.length:
        revert with 'NH{q', 50
    return block.timestamp >= sub_88a6ab3f
}

function sub_b0322f75(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3137f630 = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = arg1
}

function balance() {
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function tokenSupply() {
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_34262ca4 - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + sub_34262ca4)
}

function sub_bd1601bb(?) {
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_34262ca4 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + sub_34262ca4 < totalTokenVested:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + sub_34262ca4 - totalTokenVested)
}

function removeInvestor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address zero forbidden'
    sub_037bfb62[address(arg1)] = 0
    sub_4b89ad0b[address(arg1)] = 0
    idx = 0
    while idx < sub_1a5bb982:
        mem[0] = idx
        mem[32] = 13
        if sub_afff7b7f[idx] == arg1:
            mem[0] = idx
            mem[32] = 13
            sub_afff7b7f[idx] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not sub_1a5bb982:
        revert with 'NH{q', 17
    sub_1a5bb982--
    if totalTokenVested < sub_037bfb62[address(arg1)]:
        revert with 'NH{q', 17
    totalTokenVested -= sub_037bfb62[address(arg1)]
    sub_a4d7384e[address(arg1)] = 0
    emit 0x9e105c61: block.timestamp, arg1
}

function sub_2453c36d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_34262ca4 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + sub_34262ca4 < totalTokenVested:
        revert with 'NH{q', 17
    if arg2 > ext_call.return_data[0] + sub_34262ca4 - totalTokenVested:
        revert with 0, 'Unable to transfer. Wrong value'
    if 0 >= sub_cdb5f8e5.length:
        revert with 'NH{q', 50
    if block.timestamp < sub_88a6ab3f:
        revert with 0, 'PVTA sale not end. Unable to transfer.'
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xf2af4b0b: address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == owner:
        revert with 0, 'Owner unauthorize to claim.'
    if not stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting date is not yet finalize.  '
    if arg1 >= sub_c48eb418[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if sub_c48eb418[address(msg.sender)][arg1].field_0 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your investment is not yet release.'
    if sub_037bfb62[address(msg.sender)] <= 0:
        revert with 0, 'You have no balance'
    if arg1 >= sub_c48eb418[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    sub_c48eb418[address(msg.sender)][arg1].field_512 = block.timestamp
    if sub_037bfb62[address(msg.sender)] < sub_c48eb418[address(msg.sender)][arg1].field_256:
        revert with 'NH{q', 17
    sub_037bfb62[address(msg.sender)] -= sub_c48eb418[address(msg.sender)][arg1].field_256
    if sub_34262ca4 > -sub_c48eb418[address(msg.sender)][arg1].field_256 - 1:
        revert with 'NH{q', 17
    sub_34262ca4 += sub_c48eb418[address(msg.sender)][arg1].field_256
    if sub_d0f07144[address(msg.sender)] > -sub_c48eb418[address(msg.sender)][arg1].field_256 - 1:
        revert with 'NH{q', 17
    sub_d0f07144[address(msg.sender)] += sub_c48eb418[address(msg.sender)][arg1].field_256
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_c48eb418[address(msg.sender)][arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x16867e3f: block.timestamp, msg.sender, sub_c48eb418[address(msg.sender)][arg1].field_256
}

function buyToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'Address zero forbidden'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_34262ca4 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + sub_34262ca4 < totalTokenVested:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + sub_34262ca4 - totalTokenVested < arg2:
        revert with 0, 'Contract not enough token.'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_34262ca4 - 1:
        revert with 'NH{q', 17
    if arg2 > ext_call.return_data[0] + sub_34262ca4:
        revert with 0, 'Token over purchase'
    if sub_3137f630 >= block.timestamp:
        revert with 0, 'PVTA sale is not yet started.'
    if 0 >= sub_cdb5f8e5.length:
        revert with 'NH{q', 50
    if block.timestamp >= sub_88a6ab3f:
        revert with 0, 'PVTA sale is already ended.'
    if sub_037bfb62[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_037bfb62[address(arg1)] += arg2
    stor5 = sub_cdb5f8e5.length
    idx = 0
    while idx < stor5:
        if not stor5:
            revert with 'NH{q', 18
        if idx >= sub_cdb5f8e5.length:
            revert with 'NH{q', 50
        if sub_4b89ad0b[address(arg1)]:
            mem[32] = 10
            if idx >= sub_c48eb418[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 10)
            sub_c48eb418[address(arg1)][idx].field_256 = sub_037bfb62[address(arg1)] / stor5
        else:
            mem[0] = arg1
            mem[32] = 10
            _52 = mem[64]
            mem[64] = mem[64] + 96
            mem[_52] = sub_cdb5f8e5[idx]
            mem[_52 + 32] = sub_037bfb62[address(arg1)] / stor5
            mem[_52 + 64] = 0
            sub_c48eb418[address(arg1)].field_0++
            mem[0] = sha3(address(arg1), 10)
            sub_c48eb418[address(arg1)][sub_c48eb418[address(arg1)].field_0].field_0 = sub_cdb5f8e5[idx]
            sub_c48eb418[address(arg1)][sub_c48eb418[address(arg1)].field_0].field_256 = sub_037bfb62[address(arg1)] / stor5
            sub_c48eb418[address(arg1)][sub_c48eb418[address(arg1)].field_0].field_512 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if sub_4b89ad0b[address(arg1)]:
        emit 0xd93a216a: block.timestamp, address(arg1), arg2
    else:
        sub_afff7b7f[stor3] = arg1
        if sub_1a5bb982 == -1:
            revert with 'NH{q', 17
        sub_1a5bb982++
        emit 0x655155b1: block.timestamp, address(arg1), arg2
    if totalTokenVested > -arg2 - 1:
        revert with 'NH{q', 17
    totalTokenVested += arg2
    if sub_a4d7384e[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_a4d7384e[address(arg1)] += arg2
    if sub_4b89ad0b[address(arg1)] == -1:
        revert with 'NH{q', 17
    sub_4b89ad0b[address(arg1)]++
}

function sub_5942e754(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor8:
        sub_cdb5f8e5.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_cdb5f8e5.length > idx:
                sub_cdb5f8e5[idx] = 0
                idx = idx + 1
                continue 
            if sub_1a5bb982 > 0:
                idx = 0
                while idx < sub_1a5bb982:
                    mem[0] = sub_afff7b7f[idx]
                    mem[32] = 12
                    if sub_037bfb62[stor13[idx]] > 0:
                        sub_c48eb418[stor13[idx]].field_0 = 0
                        s = sha3(sha3(sub_afff7b7f[idx], 10))
                        while sha3(sha3(sub_afff7b7f[idx], 10)) + (3 * sub_c48eb418[stor13[idx]].field_0) > s:
                            stor[s] = 0
                            uint256(stor1[s]) = 0
                            sub_cdb5f8e5[s] = 0
                            s = s + 3
                            continue 
                        mem[0] = sub_afff7b7f[idx]
                        mem[32] = 9
                        sub_4b89ad0b[stor13[idx]] = 0
                        stor5 = sub_cdb5f8e5.length
                        s = 0
                        while s < stor5:
                            if not stor5:
                                revert with 'NH{q', 18
                            if s >= sub_cdb5f8e5.length:
                                revert with 'NH{q', 50
                            if sub_4b89ad0b[stor13[idx]]:
                                mem[32] = 10
                                if s >= sub_c48eb418[stor13[idx]].field_0:
                                    revert with 'NH{q', 50
                                mem[0] = sha3(sub_afff7b7f[idx], 10)
                                sub_c48eb418[stor13[idx]][s].field_256 = sub_037bfb62[stor13[idx]] / stor5
                            else:
                                mem[0] = sub_afff7b7f[idx]
                                mem[32] = 10
                                _326 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_326] = sub_cdb5f8e5[s]
                                mem[_326 + 32] = sub_037bfb62[stor13[idx]] / stor5
                                mem[_326 + 64] = 0
                                sub_c48eb418[stor13[idx]].field_0++
                                mem[0] = sha3(sub_afff7b7f[idx], 10)
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_0 = sub_cdb5f8e5[s]
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_256 = sub_037bfb62[stor13[idx]] / stor5
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_512 = 0
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 4).length) + 128 > idx:
                sub_cdb5f8e5[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_cdb5f8e5.length > idx:
                sub_cdb5f8e5[idx] = 0
                idx = idx + 1
                continue 
            if sub_1a5bb982 > 0:
                idx = 0
                while idx < sub_1a5bb982:
                    mem[0] = sub_afff7b7f[idx]
                    mem[32] = 12
                    if sub_037bfb62[stor13[idx]] > 0:
                        sub_c48eb418[stor13[idx]].field_0 = 0
                        s = sha3(sha3(sub_afff7b7f[idx], 10))
                        while sha3(sha3(sub_afff7b7f[idx], 10)) + (3 * sub_c48eb418[stor13[idx]].field_0) > s:
                            stor[s] = 0
                            uint256(stor1[s]) = 0
                            sub_cdb5f8e5[s] = 0
                            s = s + 3
                            continue 
                        mem[0] = sub_afff7b7f[idx]
                        mem[32] = 9
                        sub_4b89ad0b[stor13[idx]] = 0
                        stor5 = sub_cdb5f8e5.length
                        s = 0
                        while s < stor5:
                            if not stor5:
                                revert with 'NH{q', 18
                            if s >= sub_cdb5f8e5.length:
                                revert with 'NH{q', 50
                            if sub_4b89ad0b[stor13[idx]]:
                                mem[32] = 10
                                if s >= sub_c48eb418[stor13[idx]].field_0:
                                    revert with 'NH{q', 50
                                mem[0] = sha3(sub_afff7b7f[idx], 10)
                                sub_c48eb418[stor13[idx]][s].field_256 = sub_037bfb62[stor13[idx]] / stor5
                            else:
                                mem[0] = sub_afff7b7f[idx]
                                mem[32] = 10
                                _366 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_366] = sub_cdb5f8e5[s]
                                mem[_366 + 32] = sub_037bfb62[stor13[idx]] / stor5
                                mem[_366 + 64] = 0
                                sub_c48eb418[stor13[idx]].field_0++
                                mem[0] = sha3(sub_afff7b7f[idx], 10)
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_0 = sub_cdb5f8e5[s]
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_256 = sub_037bfb62[stor13[idx]] / stor5
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_512 = 0
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    else:
        if 0 >= sub_cdb5f8e5.length:
            revert with 'NH{q', 50
        if block.timestamp >= sub_88a6ab3f:
            revert with 0, 'Vesting already started.'
        sub_cdb5f8e5.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_cdb5f8e5.length > idx:
                sub_cdb5f8e5[idx] = 0
                idx = idx + 1
                continue 
            if sub_1a5bb982 > 0:
                idx = 0
                while idx < sub_1a5bb982:
                    mem[0] = sub_afff7b7f[idx]
                    mem[32] = 12
                    if sub_037bfb62[stor13[idx]] > 0:
                        sub_c48eb418[stor13[idx]].field_0 = 0
                        s = sha3(sha3(sub_afff7b7f[idx], 10))
                        while sha3(sha3(sub_afff7b7f[idx], 10)) + (3 * sub_c48eb418[stor13[idx]].field_0) > s:
                            stor[s] = 0
                            uint256(stor1[s]) = 0
                            sub_cdb5f8e5[s] = 0
                            s = s + 3
                            continue 
                        mem[0] = sub_afff7b7f[idx]
                        mem[32] = 9
                        sub_4b89ad0b[stor13[idx]] = 0
                        stor5 = sub_cdb5f8e5.length
                        s = 0
                        while s < stor5:
                            if not stor5:
                                revert with 'NH{q', 18
                            if s >= sub_cdb5f8e5.length:
                                revert with 'NH{q', 50
                            if sub_4b89ad0b[stor13[idx]]:
                                mem[32] = 10
                                if s >= sub_c48eb418[stor13[idx]].field_0:
                                    revert with 'NH{q', 50
                                mem[0] = sha3(sub_afff7b7f[idx], 10)
                                sub_c48eb418[stor13[idx]][s].field_256 = sub_037bfb62[stor13[idx]] / stor5
                            else:
                                mem[0] = sub_afff7b7f[idx]
                                mem[32] = 10
                                _333 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_333] = sub_cdb5f8e5[s]
                                mem[_333 + 32] = sub_037bfb62[stor13[idx]] / stor5
                                mem[_333 + 64] = 0
                                sub_c48eb418[stor13[idx]].field_0++
                                mem[0] = sha3(sub_afff7b7f[idx], 10)
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_0 = sub_cdb5f8e5[s]
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_256 = sub_037bfb62[stor13[idx]] / stor5
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_512 = 0
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 4).length) + 128 > idx:
                sub_cdb5f8e5[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_cdb5f8e5.length > idx:
                sub_cdb5f8e5[idx] = 0
                idx = idx + 1
                continue 
            if sub_1a5bb982 > 0:
                idx = 0
                while idx < sub_1a5bb982:
                    mem[0] = sub_afff7b7f[idx]
                    mem[32] = 12
                    if sub_037bfb62[stor13[idx]] > 0:
                        sub_c48eb418[stor13[idx]].field_0 = 0
                        s = sha3(sha3(sub_afff7b7f[idx], 10))
                        while sha3(sha3(sub_afff7b7f[idx], 10)) + (3 * sub_c48eb418[stor13[idx]].field_0) > s:
                            stor[s] = 0
                            uint256(stor1[s]) = 0
                            sub_cdb5f8e5[s] = 0
                            s = s + 3
                            continue 
                        mem[0] = sub_afff7b7f[idx]
                        mem[32] = 9
                        sub_4b89ad0b[stor13[idx]] = 0
                        stor5 = sub_cdb5f8e5.length
                        s = 0
                        while s < stor5:
                            if not stor5:
                                revert with 'NH{q', 18
                            if s >= sub_cdb5f8e5.length:
                                revert with 'NH{q', 50
                            if sub_4b89ad0b[stor13[idx]]:
                                mem[32] = 10
                                if s >= sub_c48eb418[stor13[idx]].field_0:
                                    revert with 'NH{q', 50
                                mem[0] = sha3(sub_afff7b7f[idx], 10)
                                sub_c48eb418[stor13[idx]][s].field_256 = sub_037bfb62[stor13[idx]] / stor5
                            else:
                                mem[0] = sub_afff7b7f[idx]
                                mem[32] = 10
                                _373 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_373] = sub_cdb5f8e5[s]
                                mem[_373 + 32] = sub_037bfb62[stor13[idx]] / stor5
                                mem[_373 + 64] = 0
                                sub_c48eb418[stor13[idx]].field_0++
                                mem[0] = sha3(sub_afff7b7f[idx], 10)
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_0 = sub_cdb5f8e5[s]
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_256 = sub_037bfb62[stor13[idx]] / stor5
                                sub_c48eb418[stor13[idx]][sub_c48eb418[stor13[idx]].field_0].field_512 = 0
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
}



}
