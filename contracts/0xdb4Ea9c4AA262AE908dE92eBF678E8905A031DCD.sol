contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
address tokenBAddress;
uint256 sub_43c93333;
uint256 sub_88d35559;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of address referrals;
array of uint256 sub_1c1b4f3a;
array of uint256 sub_357cf890;
mapping of uint256 sub_720a8520;
array of struct sub_14f9dce8;
mapping of uint256 sub_10525814;
uint256 minClaimTime;

function tokenA() {
    return address(stor1.length)
}

function sub_10525814(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_10525814[address(arg1)][arg2]
}

function sub_11c8c910(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_10525814[arg1][arg2]
}

function sub_14f9dce8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_14f9dce8[arg1].field_0
    return sub_14f9dce8[arg1][arg2].field_0, sub_14f9dce8[arg1][arg2].field_256, sub_14f9dce8[arg1][arg2].field_512
}

function sub_1c1b4f3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 7
    return sub_1c1b4f3a[arg1]
}

function sub_357cf890(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_357cf890[arg1]
}

function sub_43c93333(?) {
    return sub_43c93333
}

function tokenB() {
    return tokenBAddress
}

function sub_720a8520(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_720a8520[arg1][arg2]
}

function sub_88d35559(?) {
    return sub_88d35559
}

function owner() {
    return owner
}

function referrals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrals[arg1]
}

function minClaimTime() {
    return minClaimTime
}

function _fallback() payable {
    revert
}

function getBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8b5a2cde(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minClaimTime = arg1
}

function sub_1010920c(?) {
    idx = 256
    s = 23
    while 416 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return sub_357cf890.length, mem[288 len 128]
}

function getStakeAmounts() {
    idx = 320
    s = 16
    while 544 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return sub_1c1b4f3a.length, mem[352 len 192]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_0ddd3a17(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'so luong hoac thoi gian khong hop le'
    if arg2 >= 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'so luong hoac thoi gian khong hop le'
    if arg1 >= 7:
        revert with 'NH{q', 50
    if arg2 >= 5:
        revert with 'NH{q', 50
    sub_720a8520[stor16[arg1]][stor23[arg2]] = arg3
}

function swap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and sub_88d35559 > -1 / arg1:
        revert with 'NH{q', 17
    if not sub_43c93333:
        revert with 'NH{q', 18
    require ext_code.size(tokenBAddress)
    call tokenBAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 * sub_88d35559 / sub_43c93333
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Swap(arg1 * sub_88d35559 / sub_43c93333, arg1, msg.sender);
}

function sub_fcb34a5f(?) {
    mem[0] = msg.sender
    mem[32] = 29
    mem[64] = (32 * sub_14f9dce8[address(msg.sender)].field_0) + 128
    mem[96] = sub_14f9dce8[address(msg.sender)].field_0
    s = 128
    idx = 0
    while idx < sub_14f9dce8[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 29)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = sub_14f9dce8[address(msg.sender)][idx].field_0
        mem[_13 + 32] = sub_14f9dce8[address(msg.sender)][idx].field_256
        mem[_13 + 64] = sub_14f9dce8[address(msg.sender)][idx].field_512
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _21 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_21 + 32]
        mem[t + 64] = mem[_21 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _14 + (96 * _15) + -mem[64] + 64
}

function sub_2e9f411e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_720a8520[arg1][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'So tien hoac thoi gian khong hop le'
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_14f9dce8[address(msg.sender)].field_0++
    sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0 = arg1
    sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_256 = arg2
    sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_512 = block.timestamp
    if sub_14f9dce8[address(msg.sender)].field_0 < 1:
        revert with 'NH{q', 17
    sub_10525814[address(msg.sender)][stor29[address(msg.sender)].field_0 - 1] = block.timestamp
}

function withdrawAll(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'so tien rut lon hon so du nay'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenBAddress)
    staticcall tokenBAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenBAddress)
    call tokenBAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_adca3fa9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_14f9dce8[address(msg.sender)].field_0 <= 0:
        revert with 0, 'khong co gui lai'
    if arg1 > sub_14f9dce8[address(msg.sender)].field_0:
        revert with 0, 'chi muc gui khong hop le'
    if arg1 >= sub_14f9dce8[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if sub_14f9dce8[address(msg.sender)][arg1].field_512 > -sub_14f9dce8[address(msg.sender)][arg1].field_256 - 1:
        revert with 'NH{q', 17
    if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 > block.timestamp:
        if block.timestamp < sub_10525814[address(msg.sender)][arg1]:
            revert with 'NH{q', 17
        if sub_14f9dce8[address(msg.sender)][arg1].field_0 and sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0:
            revert with 'NH{q', 17
        if sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000 and block.timestamp - sub_10525814[address(msg.sender)][arg1] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000:
            revert with 'NH{q', 17
        if not sub_14f9dce8[address(msg.sender)][arg1].field_256:
            revert with 'NH{q', 18
        return ((block.timestamp * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256)
    if 0 > -sub_14f9dce8[address(msg.sender)][arg1].field_0 - 1:
        revert with 'NH{q', 17
    if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 < sub_10525814[address(msg.sender)][arg1]:
        revert with 'NH{q', 17
    if sub_14f9dce8[address(msg.sender)][arg1].field_0 and sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0:
        revert with 'NH{q', 17
    if sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000 and sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 - sub_10525814[address(msg.sender)][arg1] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000:
        revert with 'NH{q', 17
    if not sub_14f9dce8[address(msg.sender)][arg1].field_256:
        revert with 'NH{q', 18
    return ((sub_14f9dce8[address(msg.sender)][arg1].field_512 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) + (sub_14f9dce8[address(msg.sender)][arg1].field_256 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256)
}

function sub_e569e240(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_14f9dce8[address(msg.sender)].field_0 <= 0:
        revert with 0, 'khong co gui lai'
    if arg1 > sub_14f9dce8[address(msg.sender)].field_0:
        revert with 0, 'chi muc gui khong hop le'
    if arg1 >= sub_14f9dce8[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if sub_14f9dce8[address(msg.sender)][arg1].field_512 > -sub_14f9dce8[address(msg.sender)][arg1].field_256 - 1:
        revert with 'NH{q', 17
    if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 <= block.timestamp:
        if sub_14f9dce8[address(msg.sender)].field_0 < 1:
            revert with 'NH{q', 17
        if sub_14f9dce8[address(msg.sender)].field_0 - 1 >= sub_14f9dce8[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if arg1 >= sub_14f9dce8[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_14f9dce8[address(msg.sender)][arg1].field_0 = sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0
        sub_14f9dce8[address(msg.sender)][arg1].field_256 = sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0
        sub_14f9dce8[address(msg.sender)][arg1].field_512 = sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0
        if not sub_14f9dce8[address(msg.sender)].field_0:
            revert with 'NH{q', 49
        sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0 = 0
        sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0 = 0
        sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0 = 0
        sub_14f9dce8[address(msg.sender)].field_0--
        if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 < sub_10525814[address(msg.sender)][arg1]:
            revert with 'NH{q', 17
        if sub_14f9dce8[address(msg.sender)][arg1].field_0 and sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0:
            revert with 'NH{q', 17
        if sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000 and sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 - sub_10525814[address(msg.sender)][arg1] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000:
            revert with 'NH{q', 17
        if not sub_14f9dce8[address(msg.sender)][arg1].field_256:
            revert with 'NH{q', 18
        if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 > block.timestamp:
            sub_10525814[address(msg.sender)][arg1] = block.timestamp
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (sub_14f9dce8[address(msg.sender)][arg1].field_512 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) + (sub_14f9dce8[address(msg.sender)][arg1].field_256 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256
        else:
            if (sub_14f9dce8[address(msg.sender)][arg1].field_512 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) + (sub_14f9dce8[address(msg.sender)][arg1].field_256 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256 > -sub_14f9dce8[address(msg.sender)][arg1].field_0 - 1:
                revert with 'NH{q', 17
            sub_10525814[address(msg.sender)][arg1] = block.timestamp
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((sub_14f9dce8[address(msg.sender)][arg1].field_512 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) + (sub_14f9dce8[address(msg.sender)][arg1].field_256 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256) + sub_14f9dce8[address(msg.sender)][arg1].field_0
    else:
        if sub_10525814[address(msg.sender)][arg1] > -minClaimTime - 1:
            revert with 'NH{q', 17
        if sub_10525814[address(msg.sender)][arg1] + minClaimTime > block.timestamp:
            revert with 0, 'khong du thoi gian de yeu cau'
        if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 > block.timestamp:
            if block.timestamp < sub_10525814[address(msg.sender)][arg1]:
                revert with 'NH{q', 17
            if sub_14f9dce8[address(msg.sender)][arg1].field_0 and sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0:
                revert with 'NH{q', 17
            if sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000 and block.timestamp - sub_10525814[address(msg.sender)][arg1] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000:
                revert with 'NH{q', 17
            if not sub_14f9dce8[address(msg.sender)][arg1].field_256:
                revert with 'NH{q', 18
            if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 > block.timestamp:
                sub_10525814[address(msg.sender)][arg1] = block.timestamp
                require ext_code.size(address(stor1.length))
                call address(stor1.length).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.timestamp * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256
            else:
                if (block.timestamp * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256 > -sub_14f9dce8[address(msg.sender)][arg1].field_0 - 1:
                    revert with 'NH{q', 17
                sub_10525814[address(msg.sender)][arg1] = block.timestamp
                require ext_code.size(address(stor1.length))
                call address(stor1.length).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((block.timestamp * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256) + sub_14f9dce8[address(msg.sender)][arg1].field_0
        else:
            if sub_14f9dce8[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if sub_14f9dce8[address(msg.sender)].field_0 - 1 >= sub_14f9dce8[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if arg1 >= sub_14f9dce8[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            sub_14f9dce8[address(msg.sender)][arg1].field_0 = sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0
            sub_14f9dce8[address(msg.sender)][arg1].field_256 = sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0
            sub_14f9dce8[address(msg.sender)][arg1].field_512 = sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0
            if not sub_14f9dce8[address(msg.sender)].field_0:
                revert with 'NH{q', 49
            sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0 = 0
            sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0 = 0
            sub_14f9dce8[address(msg.sender)][sub_14f9dce8[address(msg.sender)].field_0].field_0 = 0
            sub_14f9dce8[address(msg.sender)].field_0--
            if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 < sub_10525814[address(msg.sender)][arg1]:
                revert with 'NH{q', 17
            if sub_14f9dce8[address(msg.sender)][arg1].field_0 and sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0:
                revert with 'NH{q', 17
            if sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000 and sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 - sub_10525814[address(msg.sender)][arg1] > -1 / sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000:
                revert with 'NH{q', 17
            if not sub_14f9dce8[address(msg.sender)][arg1].field_256:
                revert with 'NH{q', 18
            if sub_14f9dce8[address(msg.sender)][arg1].field_512 + sub_14f9dce8[address(msg.sender)][arg1].field_256 > block.timestamp:
                sub_10525814[address(msg.sender)][arg1] = block.timestamp
                require ext_code.size(address(stor1.length))
                call address(stor1.length).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_14f9dce8[address(msg.sender)][arg1].field_512 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) + (sub_14f9dce8[address(msg.sender)][arg1].field_256 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256
            else:
                if (sub_14f9dce8[address(msg.sender)][arg1].field_512 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) + (sub_14f9dce8[address(msg.sender)][arg1].field_256 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256 > -sub_14f9dce8[address(msg.sender)][arg1].field_0 - 1:
                    revert with 'NH{q', 17
                sub_10525814[address(msg.sender)][arg1] = block.timestamp
                require ext_code.size(address(stor1.length))
                call address(stor1.length).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((sub_14f9dce8[address(msg.sender)][arg1].field_512 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) + (sub_14f9dce8[address(msg.sender)][arg1].field_256 * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) - (sub_10525814[address(msg.sender)][arg1] * sub_14f9dce8[address(msg.sender)][arg1].field_0 * sub_720a8520[stor29[address(msg.sender)][arg1].field_0][stor29[address(msg.sender)][arg1].field_256] / 100000) / sub_14f9dce8[address(msg.sender)][arg1].field_256) + sub_14f9dce8[address(msg.sender)][arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function sub_45265efd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_88d35559:
        revert with 'NH{q', 18
    if msg.value / sub_88d35559 and 10^18 > -1 / msg.value / sub_88d35559:
        revert with 'NH{q', 17
    if msg.value <= 0:
        revert with 0, 'chuyen gia tri ZERO'
    if msg.sender == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dia chi gioi thieu khong duoc la dia chi nguoi mua'
    if address(arg1):
        if referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != address(arg1):
                revert with 0, 'Must have only one referral'
        if address(arg1):
            if not referrals[address(msg.sender)]:
                referrals[address(msg.sender)] = address(arg1)
            if 10^18 * msg.value / sub_88d35559 and stor5 > -1 / 10^18 * msg.value / sub_88d35559:
                revert with 'NH{q', 17
            if 10^18 * msg.value / sub_88d35559 * stor5 and sub_43c93333 > -1 / 10^18 * msg.value / sub_88d35559 * stor5:
                revert with 'NH{q', 17
            if not sub_88d35559:
                revert with 'NH{q', 18
            require ext_code.size(tokenBAddress)
            call tokenBAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 10^18 * msg.value / sub_88d35559 * stor5 * sub_43c93333 / sub_88d35559 / 100000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
            emit 0xa82ffe9b: (10^18 * msg.value / sub_88d35559 * stor5 * sub_43c93333 / sub_88d35559 / 100000), msg.sender, address(arg1)
            if referrals[address(arg1)]:
                if 10^18 * msg.value / sub_88d35559 and stor6 > -1 / 10^18 * msg.value / sub_88d35559:
                    revert with 'NH{q', 17
                if 10^18 * msg.value / sub_88d35559 * stor6 and sub_43c93333 > -1 / 10^18 * msg.value / sub_88d35559 * stor6:
                    revert with 'NH{q', 17
                if not sub_88d35559:
                    revert with 'NH{q', 18
                require ext_code.size(tokenBAddress)
                call tokenBAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args referrals[address(arg1)], 10^18 * msg.value / sub_88d35559 * stor6 * sub_43c93333 / sub_88d35559 / 100000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                emit 0xa82ffe9b: (10^18 * msg.value / sub_88d35559 * stor6 * sub_43c93333 / sub_88d35559 / 100000), msg.sender, referrals[address(arg1)]
                if referrals[referrals[address(arg1)]]:
                    if 10^18 * msg.value / sub_88d35559 and stor7 > -1 / 10^18 * msg.value / sub_88d35559:
                        revert with 'NH{q', 17
                    if 10^18 * msg.value / sub_88d35559 * stor7 and sub_43c93333 > -1 / 10^18 * msg.value / sub_88d35559 * stor7:
                        revert with 'NH{q', 17
                    if not sub_88d35559:
                        revert with 'NH{q', 18
                    require ext_code.size(tokenBAddress)
                    call tokenBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args referrals[referrals[address(arg1)]], 10^18 * msg.value / sub_88d35559 * stor7 * sub_43c93333 / sub_88d35559 / 100000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                    emit 0xa82ffe9b: (10^18 * msg.value / sub_88d35559 * stor7 * sub_43c93333 / sub_88d35559 / 100000), msg.sender, referrals[referrals[address(arg1)]]
                    if referrals[referrals[referrals[address(arg1)]]]:
                        if 10^18 * msg.value / sub_88d35559 and stor8 > -1 / 10^18 * msg.value / sub_88d35559:
                            revert with 'NH{q', 17
                        if 10^18 * msg.value / sub_88d35559 * stor8 and sub_43c93333 > -1 / 10^18 * msg.value / sub_88d35559 * stor8:
                            revert with 'NH{q', 17
                        if not sub_88d35559:
                            revert with 'NH{q', 18
                        require ext_code.size(tokenBAddress)
                        call tokenBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args referrals[referrals[referrals[address(arg1)]]], 10^18 * msg.value / sub_88d35559 * stor8 * sub_43c93333 / sub_88d35559 / 100000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                        emit 0xa82ffe9b: (10^18 * msg.value / sub_88d35559 * stor8 * sub_43c93333 / sub_88d35559 / 100000), msg.sender, referrals[referrals[referrals[address(arg1)]]]
                        if referrals[referrals[referrals[referrals[address(arg1)]]]]:
                            if 10^18 * msg.value / sub_88d35559 and stor9 > -1 / 10^18 * msg.value / sub_88d35559:
                                revert with 'NH{q', 17
                            if 10^18 * msg.value / sub_88d35559 * stor9 and sub_43c93333 > -1 / 10^18 * msg.value / sub_88d35559 * stor9:
                                revert with 'NH{q', 17
                            if not sub_88d35559:
                                revert with 'NH{q', 18
                            require ext_code.size(tokenBAddress)
                            call tokenBAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args referrals[referrals[referrals[referrals[address(arg1)]]]], 10^18 * msg.value / sub_88d35559 * stor9 * sub_43c93333 / sub_88d35559 / 100000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                            emit 0xa82ffe9b: (10^18 * msg.value / sub_88d35559 * stor9 * sub_43c93333 / sub_88d35559 / 100000), msg.sender, referrals[referrals[referrals[referrals[address(arg1)]]]]
                            if referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]:
                                if 10^18 * msg.value / sub_88d35559 and stor9 > -1 / 10^18 * msg.value / sub_88d35559:
                                    revert with 'NH{q', 17
                                if 10^18 * msg.value / sub_88d35559 * stor9 and sub_43c93333 > -1 / 10^18 * msg.value / sub_88d35559 * stor9:
                                    revert with 'NH{q', 17
                                if not sub_88d35559:
                                    revert with 'NH{q', 18
                                require ext_code.size(tokenBAddress)
                                call tokenBAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]], 10^18 * msg.value / sub_88d35559 * stor9 * sub_43c93333 / sub_88d35559 / 100000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                                emit 0xa82ffe9b: (10^18 * msg.value / sub_88d35559 * stor9 * sub_43c93333 / sub_88d35559 / 100000), msg.sender, referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]
                                if referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]:
                                    if False and sub_43c93333 > 0:
                                        revert with 'NH{q', 17
                                    if not sub_88d35559:
                                        revert with 'NH{q', 18
                                    require ext_code.size(tokenBAddress)
                                    call tokenBAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]], 0 / sub_88d35559 / 100000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                                    emit 0xa82ffe9b: (0 / sub_88d35559 / 100000), msg.sender, referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]
                                    if referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]]:
                                        if False and sub_43c93333 > 0:
                                            revert with 'NH{q', 17
                                        if not sub_88d35559:
                                            revert with 'NH{q', 18
                                        require ext_code.size(tokenBAddress)
                                        call tokenBAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]], 0 / sub_88d35559 / 100000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                                        emit 0xa82ffe9b: (0 / sub_88d35559 / 100000), msg.sender, referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]]
                                        if referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]]]:
                                            if False and sub_43c93333 > 0:
                                                revert with 'NH{q', 17
                                            if not sub_88d35559:
                                                revert with 'NH{q', 18
                                            require ext_code.size(tokenBAddress)
                                            call tokenBAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]]], 0 / sub_88d35559 / 100000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                                            emit 0xa82ffe9b: (0 / sub_88d35559 / 100000), msg.sender, referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]]]
                                            if referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]]]]:
                                                if False and sub_43c93333 > 0:
                                                    revert with 'NH{q', 17
                                                if not sub_88d35559:
                                                    revert with 'NH{q', 18
                                                require ext_code.size(tokenBAddress)
                                                call tokenBAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]]]], 0 / sub_88d35559 / 100000
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'khong du token tien thuong cho nguoi gioi thieu'
                                                emit 0xa82ffe9b: (0 / sub_88d35559 / 100000), msg.sender, referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[referrals[address(arg1)]]]]]]]]]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * msg.value / sub_88d35559
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Bought((10^18 * msg.value / sub_88d35559), msg.sender);
}



}
