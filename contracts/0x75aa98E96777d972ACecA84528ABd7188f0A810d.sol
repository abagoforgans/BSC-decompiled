contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address daoAddress;
uint256 sub_d1933fe4;
array of struct stor4;

function historyCount() {
    return stor4.length
}

function dao() {
    return daoAddress
}

function owner() {
    return owner
}

function sub_d1933fe4(?) {
    return sub_d1933fe4
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_4793918f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d1933fe4 = arg1
}

function sub_a0795101(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    daoAddress = address(arg1)
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

function sub_f7049d78(?) {
    if stor4.length < 1:
        revert with 'NH{q', 17
    if stor4.length - 1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[stor4.length].field_0:
        idx = 288
        s = 0
        while (32 * stor4[stor4.length].field_0) + 256 > idx:
            mem[idx + 32] = stor[s + sha3((5 * stor4.length) + ('name', 'stor4', 4) - 2)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor4[stor4.length].field_0:
        idx = (32 * stor4[stor4.length].field_0) + 320
        s = 0
        while (32 * stor4[stor4.length].field_0) + (32 * stor4[stor4.length].field_0) + 288 > idx:
            mem[idx + 32] = stor[s + sha3((5 * stor4.length) + ('name', 'stor4', 4) - 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor4[stor4.length].field_0:
        return not bool(stor4[stor4.length].field_0)
    return block.timestamp >= stor4[stor4.length].field_0
}

function sub_83624074(?) payable {
    if stor4.length < 1:
        revert with 'NH{q', 17
    if stor4.length - 1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[stor4.length].field_0 <= 0:
        if msg.value <= 0:
            revert with 0, 'Bid is too low.'
    else:
        if stor4[stor4.length].field_0 < 1:
            revert with 'NH{q', 17
        if stor4[stor4.length].field_0 - 1 >= stor4[stor4.length].field_0:
            revert with 'NH{q', 50
        if stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) - 1) + stor4[stor4.length].field_0].field_0 and 13 > -1 / stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) - 1) + stor4[stor4.length].field_0].field_0:
            revert with 'NH{q', 17
        if msg.value <= 13 * stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) - 1) + stor4[stor4.length].field_0].field_0 / 10:
            revert with 0, 'Bid is too low.'
    stor4[stor4.length].field_0++
    stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) - 2) + stor4[stor4.length].field_0].field_0 = msg.sender
    stor4[stor4.length].field_0++
    stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) - 1) + stor4[stor4.length].field_0].field_0 = msg.value
    if stor4[stor4.length].field_0 > 1:
        if stor4[stor4.length].field_0 < 2:
            revert with 'NH{q', 17
        if stor4[stor4.length].field_0 - 2 >= stor4[stor4.length].field_0:
            revert with 'NH{q', 50
        if stor4[stor4.length].field_0 < 2:
            revert with 'NH{q', 17
        if stor4[stor4.length].field_0 - 2 >= stor4[stor4.length].field_0:
            revert with 'NH{q', 50
        call stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) - 2) + stor4[stor4.length].field_0].field_0 with:
           value stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) - 1) + stor4[stor4.length].field_0].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function close() {
    if stor4.length < 1:
        revert with 'NH{q', 17
    if stor4.length - 1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[stor4.length].field_0:
        idx = 288
        s = 0
        while (32 * stor4[stor4.length].field_0) + 256 > idx:
            mem[idx + 32] = stor[s + sha3((5 * stor4.length) + ('name', 'stor4', 4) - 2)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor4[stor4.length].field_0:
        idx = (32 * stor4[stor4.length].field_0) + 320
        s = 0
        while (32 * stor4[stor4.length].field_0) + (32 * stor4[stor4.length].field_0) + 288 > idx:
            mem[idx + 32] = stor[s + sha3((5 * stor4.length) + ('name', 'stor4', 4) - 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor4[stor4.length].field_0:
        revert with 0, 'Can not close auction now.'
    if block.timestamp < stor4[stor4.length].field_0:
        revert with 0, 'Can not close auction now.'
    if stor4.length < 1:
        revert with 'NH{q', 17
    if stor4.length - 1 >= stor4.length:
        revert with 'NH{q', 50
    stor4[stor4.length].field_0 = 1
    if stor4[stor4.length].field_0 <= 0:
        require ext_code.size(stor1)
        call stor1.0x42966c68 with:
             gas gas_remaining wei
            args stor4[stor4.length].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor4[stor4.length].field_0 < 1:
            revert with 'NH{q', 17
        if stor4[stor4.length].field_0 - 1 >= stor4[stor4.length].field_0:
            revert with 'NH{q', 50
        require ext_code.size(stor1)
        call stor1.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), stor[sha3((5 * stor4.length) + ('name', 'stor4', 4) - 2) + stor4[stor4.length].field_0].field_0, stor4[stor4.length].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call daoAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function history(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor4.length:
        revert with 'NH{q', 50
    if stor4[arg1].field_768:
        mem[448] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 3)].field_0
        idx = 448
        s = 0
        while (32 * stor4[arg1].field_768) + 416 > idx:
            mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor4[arg1].field_768) + 448] = stor4[arg1].field_1024
    if stor4[arg1].field_1024:
        mem[(32 * stor4[arg1].field_768) + 480] = stor[sha3((5 * arg1) + ('name', 'stor4', 4) + 4)].field_0
        idx = (32 * stor4[arg1].field_768) + 480
        s = 0
        while (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 448 > idx:
            mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor4', 4) + 4)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 480] = 32
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 512] = stor4[arg1].field_0
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 544] = stor4[arg1].field_256
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 576] = bool(stor4[arg1].field_512)
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 608] = 160
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 672] = stor4[arg1].field_768
    idx = 0
    s = 448
    t = (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 704
    while idx < stor4[arg1].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 640] = (32 * stor4[arg1].field_768) + 192
    mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 704] = stor4[arg1].field_1024
    mem[(64 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 736 len 32 * stor4[arg1].field_1024] = mem[(32 * stor4[arg1].field_768) + 480 len 32 * stor4[arg1].field_1024]
    return memory
      from (32 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 480
       len (96 * stor4[arg1].field_768) + (32 * stor4[arg1].field_1024) + 256
}

function sub_3da1bba1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4.length:
        if stor4.length < 1:
            revert with 'NH{q', 17
        if stor4.length - 1 >= stor4.length:
            revert with 'NH{q', 50
        if not stor4[stor4.length].field_0:
            revert with 0, 'Auction in progress'
    mem[100] = arg1
    staticcall stor1.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Not my token'
    mem[ceil32(return_data.size) + 96] = arg1
    if block.timestamp > -sub_d1933fe4 - 1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 128] = block.timestamp + sub_d1933fe4
    mem[ceil32(return_data.size) + 160] = 0
    mem[ceil32(return_data.size) + 192] = 96
    mem[ceil32(return_data.size) + 224] = 96
    stor4.length++
    stor4[stor4.length].field_0 = arg1
    stor4[stor4.length].field_256 = block.timestamp + sub_d1933fe4
    stor4[stor4.length].field_512 = 0
    stor4[stor4.length].field_768 = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        idx = 0
        while stor4[stor4.length].field_768 > idx:
            stor[idx + sha3((5 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ext_call.return_data[0]) + 128 > idx:
            stor[s + sha3((5 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
        while stor4[stor4.length].field_768 > idx:
            stor[idx + sha3((5 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor4.length].field_1024 = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        idx = 0
        while stor4[stor4.length].field_1024 > idx:
            stor[idx + sha3((5 * stor4.length) + ('name', 'stor4', 4) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ext_call.return_data[0]) + 128 > idx:
            stor[s + sha3((5 * stor4.length) + ('name', 'stor4', 4) + 4)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
        while stor4[stor4.length].field_1024 > idx:
            stor[idx + sha3((5 * stor4.length) + ('name', 'stor4', 4) + 4)].field_0 = 0
            idx = idx + 1
            continue 
}



}
