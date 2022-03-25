contract main {




// =====================  Runtime code  =====================


#
#  - sub_0fbfe693(?)
#  - sub_14337cb6(?)
#
address owner;
address newOwner;
uint256 stor2;
uint256 sub_cae34acc;
uint256 sub_7ec92adc;
uint256 sub_7d17a131;
mapping of struct sub_0ceec2a7;
mapping of address sub_343f12b9;
mapping of uint256 sub_9d13150d;
array of struct stor9;
array of uint256 symbol;
array of uint256 name;
uint256 decimals;
uint256 sub_6f56a240;
uint256 sub_26d17d44;
mapping of uint256 sub_0b0a0e20;
mapping of uint256 sub_ad87852c;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function sub_0b0a0e20(?) {
    require calldata.size - 4 >= 64
    return sub_0b0a0e20[address(arg1)][address(arg2)]
}

function sub_0ceec2a7(?) {
    require calldata.size - 4 >= 32
    mem[128] = sub_0ceec2a7[address(arg1)][2].field_0
    idx = 128
    s = 0
    while sub_0ceec2a7[address(arg1)][2].length + 96 > idx:
        mem[idx + 32] = sub_0ceec2a7[address(arg1)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_0ceec2a7[address(arg1)][2].length, data=mem[128 len sub_0ceec2a7[address(arg1)][2].length]), 
           sub_0ceec2a7[address(arg1)].field_256,
           sub_0ceec2a7[address(arg1)].field_768,
           sub_0ceec2a7[address(arg1)].field_0,
           sub_0ceec2a7[address(arg1)].field_256
}

function sub_26d17d44(?) {
    return sub_26d17d44
}

function decimals() {
    return decimals
}

function sub_343f12b9(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return sub_343f12b9[arg1[all]]
}

function sub_466c915b(?) {
    return sub_0ceec2a7[address(arg1)][2][0 len sub_0ceec2a7[address(arg1)][2].length].field_0
}

function sub_6f56a240(?) {
    return sub_6f56a240
}

function sub_7d17a131(?) {
    return sub_7d17a131
}

function sub_7ec92adc(?) {
    return sub_7ec92adc
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    return allowance[address(arg1)][address(arg2)][address(arg3)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9d13150d(?) {
    require calldata.size - 4 >= 64
    return sub_9d13150d[address(arg2)][address(arg1)]
}

function sub_ad87852c(?) {
    require calldata.size - 4 >= 64
    return sub_ad87852c[address(arg1)][address(arg2)]
}

function sub_cae34acc(?) {
    return sub_cae34acc
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (10^18 * sub_26d17d44)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_a9b12449(?) {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'Zero ratio'
    sub_ad87852c[msg.sender][address(arg2)] = arg1
    emit 0x43ddf297: arg1, msg.sender, arg2, 2
    return 1
}

function sub_bae0376b(?) {
    require calldata.size - 4 >= 64
    return sub_0b0a0e20[address(arg1)][address(arg2)], 
           sub_ad87852c[address(arg1)][address(arg2)],
           sub_0b0a0e20[address(arg2)][address(arg1)],
           sub_ad87852c[address(arg2)][address(arg1)]
}

function sub_06645412(?) {
    require calldata.size - 4 >= 32
    if not sub_0ceec2a7[address(arg1)][2].length:
        return 0
    if sub_0ceec2a7[address(arg1)].field_0 > sub_7d17a131:
        revert with 0, 'sub error'
    return (sub_7d17a131 - sub_0ceec2a7[address(arg1)].field_0 / 10^18)
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    allowance[msg.sender][address(arg1)][address(arg2)] = arg3
    if arg1 != msg.sender:
        emit 0x8f4372d5: arg3, msg.sender, arg2, arg1
    else:
        emit Approval(arg3, msg.sender, arg2);
    return 1
}

function sub_3922233c(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg1.length > 20:
        return 5 * 10^17
    require arg1.length
    return (10 * 10^18 / arg1.length)
}

function sub_122aa9da(?) {
    if stor2 != 1:
        revert with 0, 'Loop: LOCKED'
    stor2 = 0
    require msg.sender == owner
    call owner with:
       value sub_7ec92adc wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_7ec92adc = 0
    stor2 = 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function claim() {
    if stor2 != 1:
        revert with 0, 'Loop: LOCKED'
    stor2 = 0
    if not sub_0ceec2a7[msg.sender][2].length:
        revert with 0, 'No LNS'
    if sub_0ceec2a7[msg.sender].field_0 > sub_7d17a131:
        revert with 0, 'sub error'
    call msg.sender with:
       value sub_7d17a131 - sub_0ceec2a7[msg.sender].field_0 / 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_0ceec2a7[msg.sender].field_0 = sub_7d17a131
    stor2 = 1
}

function netBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if sub_0ceec2a7[address(arg1)].field_384 <= 2:
        return sub_9d13150d[address(arg1)][address(arg1)]
    if sub_0ceec2a7[address(arg1)].field_256 > block.timestamp:
        revert with 0, 'sub error'
    if sub_6f56a240:
        require sub_6f56a240
        if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(arg1)].field_256:
            revert with 0, 'mul error'
    return (sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240))
}

function sub_7803223a(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if 10^18 * arg1^2 > sub_9d13150d[msg.sender][address(arg4)]:
        revert with 0, 'Low Hz'
    mem[ceil32(arg2.length) + 192] = arg3.length
    mem[ceil32(arg2.length) + 224 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg2.length) + 224] = 0
    emit 0xc00fbc8d: 64, ceil32(arg2.length) + 96, arg2.length, arg2[all], 0, mem[arg2.length + 224 len ceil32(arg2.length) + ceil32(arg3.length) - arg2.length], msg.sender, arg1, arg4
    return 0
}

function sub_9ac6ef9c(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    require msg.sender == owner
    if cd[4] < 30000:
        if cd[4] <= 0:
            revert with 0, 'Out of range'
        if cd[4] > 10000:
            revert with 0, 'Out of range'
    else:
        if cd[4] >= 100000:
            if cd[4] <= 0:
                revert with 0, 'Out of range'
            if cd[4] > 10000:
                revert with 0, 'Out of range'
    stor9[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor9[cd[4]][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor9[cd[4]].length + 31 / 32 > idx:
        stor9[cd[4]][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9[cd[4]].field_256 = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        stor9[cd[4]][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while stor9[cd[4]][1].length + 31 / 32 > idx:
        stor9[cd[4]][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if arg4 > allowance[address(arg1)][address(arg2)][msg.sender]:
        revert with 0, 'sub error'
    allowance[address(arg1)][address(arg2)][msg.sender] -= arg4
    if arg2 != arg1:
        if arg4 > sub_9d13150d[address(arg1)][address(arg2)]:
            revert with 0, 'sub error'
        sub_9d13150d[address(arg1)][address(arg2)] -= arg4
        if arg4 + sub_9d13150d[address(arg3)][address(arg2)] < sub_9d13150d[address(arg3)][address(arg2)]:
            revert with 0, 'add error'
        sub_9d13150d[address(arg3)][address(arg2)] += arg4
        emit 0xd7ff2575: arg4, arg1, arg3, arg2
    else:
        if sub_0ceec2a7[address(arg1)].field_384 <= 2:
            if arg4 > sub_9d13150d[address(arg1)][address(arg1)]:
                revert with 0, 'sub error'
            sub_9d13150d[address(arg1)][address(arg1)] -= arg4
        else:
            if sub_0ceec2a7[address(arg1)].field_256 > block.timestamp:
                revert with 0, 'sub error'
            if sub_6f56a240:
                require sub_6f56a240
                if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(arg1)].field_256:
                    revert with 0, 'mul error'
            if arg4 > sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240):
                revert with 0, 'sub error'
            sub_9d13150d[address(arg1)][address(arg1)] = sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) - arg4
        sub_0ceec2a7[address(arg1)].field_256 = uint128(block.timestamp)
        if arg4 + sub_9d13150d[address(arg3)][address(arg1)] < sub_9d13150d[address(arg3)][address(arg1)]:
            revert with 0, 'add error'
        sub_9d13150d[address(arg3)][address(arg1)] += arg4
        emit Transfer(arg4, arg1, arg3);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if sub_0ceec2a7[address(arg1)].field_384 < 1000:
        if sub_0ceec2a7[address(arg1)].field_384 <= 2:
            if sub_9d13150d[address(arg1)][address(arg1)] >= 10^18:
                return (sub_9d13150d[address(arg1)][address(arg1)] - (sub_9d13150d[address(arg1)][address(arg1)] % 10^18) + uint128(10^15 * sub_0ceec2a7[address(arg1)].field_384))
        else:
            if sub_0ceec2a7[address(arg1)].field_256 > block.timestamp:
                revert with 0, 'sub error'
            if sub_6f56a240:
                require sub_6f56a240
                if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(arg1)].field_256:
                    revert with 0, 'mul error'
            if sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) >= 10^18:
                return (sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) - (sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) % 10^18) + uint128(10^15 * sub_0ceec2a7[address(arg1)].field_384))
        return (uint128(10^15 * sub_0ceec2a7[address(arg1)].field_384) + 10^18)
    if sub_0ceec2a7[address(arg1)].field_384 <= 2:
        if sub_9d13150d[address(arg1)][address(arg1)] >= 10^18:
            return (sub_9d13150d[address(arg1)][address(arg1)] + -(sub_9d13150d[address(arg1)][address(arg1)] % 10^18) + (2775 * 10^11 * 24 * 3600))
    else:
        if sub_0ceec2a7[address(arg1)].field_256 > block.timestamp:
            revert with 0, 'sub error'
        if sub_6f56a240:
            require sub_6f56a240
            if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(arg1)].field_256:
                revert with 0, 'mul error'
        if sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) >= 10^18:
            return (sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) + (-1 * sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + -(sub_9d13150d[address(arg1)][address(arg1)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) % 10^18) + (2775 * 10^11 * 24 * 3600))
    return 1999 * 10^15
}

function sub_a2d5ef6c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    if stor2 != 1:
        revert with 0, 'Loop: LOCKED'
    stor2 = 0
    if ('cd', 4).length > 20:
        if 5 * 10^17 != msg.value:
            revert with 0, 'Fee error'
    else:
        require ('cd', 4).length
        if 10 * 10^18 / ('cd', 4).length != msg.value:
            revert with 0, 'Fee error'
    if sub_343f12b9[call.data[cd[4] + 36 len ('cd', 4).length]]:
        revert with 0, 'Not available'
    if Mask(255, 1, (256 * not sub_0ceec2a7[address(cd[36])].field_512) - 1 and sub_0ceec2a7[address(cd[36])].field_512):
        revert with 0, 'Named'
    sub_343f12b9[call.data[cd[4] + 36 len ('cd', 4).length]] = address(cd[36])
    sub_0ceec2a7[address(cd[36])].field_512 = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_0ceec2a7[address(cd[36])][s + 2].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_0ceec2a7[address(cd[36])][2].length + 31 / 32 > idx:
        sub_0ceec2a7[address(cd[36])][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    if (msg.value / 2) + (30 * msg.value / 100) > msg.value:
        revert with 0, 'sub error'
    if not sub_0ceec2a7[address(cd[36])].field_768:
        sub_7ec92adc += 30 * msg.value / 100
        sub_7ec92adc = msg.value - (msg.value / 2) - (30 * msg.value / 100) + sub_7ec92adc
        if Mask(255, 1, msg.value):
            require msg.value / 2
            if 10^18 * msg.value / 2 / msg.value / 2 != 10^18:
                revert with 0, 'mul error'
        require sub_cae34acc
        if (10^18 * msg.value / 2 / sub_cae34acc) + sub_7d17a131 < sub_7d17a131:
            revert with 0, 'add error'
        sub_7d17a131 += 10^18 * msg.value / 2 / sub_cae34acc
        sub_0ceec2a7[address(cd[36])].field_0 = (10^18 * msg.value / 2 / sub_cae34acc) + sub_7d17a131
        if sub_cae34acc + 1 < sub_cae34acc:
            revert with 0, 'add error'
        sub_cae34acc++
        emit 0xc7185829: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 30 * msg.value / 100, sub_7d17a131, address(cd[36]), 0
    else:
        if not sub_0ceec2a7[sub_0ceec2a7[address(cd[36])].field_768][2].length:
            sub_7ec92adc += 30 * msg.value / 100
            sub_7ec92adc = msg.value - (msg.value / 2) - (30 * msg.value / 100) + sub_7ec92adc
            if Mask(255, 1, msg.value):
                require msg.value / 2
                if 10^18 * msg.value / 2 / msg.value / 2 != 10^18:
                    revert with 0, 'mul error'
            require sub_cae34acc
            if (10^18 * msg.value / 2 / sub_cae34acc) + sub_7d17a131 < sub_7d17a131:
                revert with 0, 'add error'
            sub_7d17a131 += 10^18 * msg.value / 2 / sub_cae34acc
            sub_0ceec2a7[address(cd[36])].field_0 = (10^18 * msg.value / 2 / sub_cae34acc) + sub_7d17a131
            if sub_cae34acc + 1 < sub_cae34acc:
                revert with 0, 'add error'
            sub_cae34acc++
            emit 0xc7185829: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 30 * msg.value / 100, sub_7d17a131, address(cd[36]), 0
        else:
            call sub_0ceec2a7[address(cd[36])].field_768 with:
               value 30 * msg.value / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_7ec92adc = msg.value - (msg.value / 2) - (30 * msg.value / 100) + sub_7ec92adc
            if Mask(255, 1, msg.value):
                require msg.value / 2
                if 10^18 * msg.value / 2 / msg.value / 2 != 10^18:
                    revert with 0, 'mul error'
            require sub_cae34acc
            if (10^18 * msg.value / 2 / sub_cae34acc) + sub_7d17a131 < sub_7d17a131:
                revert with 0, 'add error'
            sub_7d17a131 += 10^18 * msg.value / 2 / sub_cae34acc
            sub_0ceec2a7[address(cd[36])].field_0 = (10^18 * msg.value / 2 / sub_cae34acc) + sub_7d17a131
            if sub_cae34acc + 1 < sub_cae34acc:
                revert with 0, 'add error'
            sub_cae34acc++
            emit 0xc7185829: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 30 * msg.value / 100, sub_7d17a131, address(cd[36]), sub_0ceec2a7[address(cd[36])].field_768
    stor2 = 1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor2 != 1:
        revert with 0, 'Loop: LOCKED'
    stor2 = 0
    if msg.sender == arg1:
        revert with 0, 'Self transfer'
    if arg2 >= 10^18:
        if not sub_0b0a0e20[address(arg1)][msg.sender]:
            revert with 0, 'Not accept u'
        if sub_0ceec2a7[address(msg.sender)].field_384 <= 2:
            if arg2 > sub_9d13150d[address(msg.sender)][address(msg.sender)]:
                revert with 0, 'sub error'
            sub_9d13150d[address(msg.sender)][address(msg.sender)] -= arg2
        else:
            if sub_0ceec2a7[address(msg.sender)].field_256 > block.timestamp:
                revert with 0, 'sub error'
            if sub_6f56a240:
                require sub_6f56a240
                if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(msg.sender)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(msg.sender)].field_256:
                    revert with 0, 'mul error'
            if arg2 > sub_9d13150d[address(msg.sender)][address(msg.sender)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(msg.sender)].field_256 * sub_6f56a240):
                revert with 0, 'sub error'
            sub_9d13150d[address(msg.sender)][address(msg.sender)] = sub_9d13150d[address(msg.sender)][address(msg.sender)] + (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(msg.sender)].field_256 * sub_6f56a240) - arg2
        sub_0ceec2a7[address(msg.sender)].field_256 = uint128(block.timestamp)
        if arg2 + sub_9d13150d[address(arg1)][address(msg.sender)] < sub_9d13150d[address(arg1)][address(msg.sender)]:
            revert with 0, 'add error'
        sub_9d13150d[address(arg1)][address(msg.sender)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg2 >= 2 * 10^17:
            if arg2 >= 3 * 10^17:
                if not arg2:
                    if not sub_0b0a0e20[msg.sender][address(arg1)]:
                        revert with 0, 'Never trusted.'
                    sub_0b0a0e20[msg.sender][address(arg1)] = 0
                    if 1 > sub_0ceec2a7[address(arg1)].field_384:
                        revert with 0, 'sub error'
                    sub_0ceec2a7[address(arg1)].field_384 = uint128(sub_0ceec2a7[address(arg1)].field_384 - 1)
                    if 2 == uint128(sub_0ceec2a7[address(arg1)].field_384 - 1):
                        if sub_0ceec2a7[address(arg1)].field_256 > block.timestamp:
                            revert with 0, 'sub error'
                        if sub_6f56a240:
                            require sub_6f56a240
                            if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(arg1)].field_256:
                                revert with 0, 'mul error'
                        if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + sub_9d13150d[address(arg1)][address(arg1)] < sub_9d13150d[address(arg1)][address(arg1)]:
                            revert with 0, 'add error'
                        sub_9d13150d[address(arg1)][address(arg1)] = (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + sub_9d13150d[address(arg1)][address(arg1)]
                        if 1 > sub_26d17d44:
                            revert with 0, 'sub error'
                        sub_26d17d44--
                    emit 0x43ddf297: 0, msg.sender, arg1, 0
                else:
                    mem[96] = 96
                    mem[128] = 96
                    mem[32] = 9
                    mem[224] = stor9[arg2 / 10^13].length
                    mem[256] = stor9[arg2 / 10^13].field_0
                    idx = 256
                    s = 0
                    while stor9[arg2 / 10^13].length + 256 > idx + 32:
                        mem[idx + 32] = stor9[arg2 / 10^13][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[160] = 224
                    mem[64] = ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 288
                    mem[ceil32(stor9[arg2 / 10^13].length) + 256] = stor9[arg2 / 10^13][1].length
                    mem[0] = sha3(arg2 / 10^13, 9) + 1
                    mem[ceil32(stor9[arg2 / 10^13].length) + 288] = stor9[arg2 / 10^13][1].field_0
                    idx = ceil32(stor9[arg2 / 10^13].length) + 288
                    s = 0
                    while ceil32(stor9[arg2 / 10^13].length) + stor9[arg2 / 10^13][1].length + 256 > idx:
                        mem[idx + 32] = stor9[arg2 / 10^13][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[192] = ceil32(stor9[arg2 / 10^13].length) + 256
                    if stor9[arg2 / 10^13][1].length <= 0:
                        revert with 0, 'Command error'
                    mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 288] = 64
                    mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 352] = stor9[arg2 / 10^13].length
                    mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len ceil32(stor9[arg2 / 10^13].length)] = mem[256 len ceil32(stor9[arg2 / 10^13].length)]
                    mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 320] = stor9[arg2 / 10^13].length + 96
                    mem[stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 384] = stor9[arg2 / 10^13][1].length
                    mem[stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 416 len ceil32(stor9[arg2 / 10^13][1].length)] = mem[ceil32(stor9[arg2 / 10^13].length) + 288 len ceil32(stor9[arg2 / 10^13][1].length)]
                    if not stor9[arg2 / 10^13][1].length % 32:
                        emit 0xc00fbc8d: Array(len=stor9[arg2 / 10^13].length, data=mem[256 len ceil32(stor9[arg2 / 10^13].length)], mem[(2 * ceil32(stor9[arg2 / 10^13].length)) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len stor9[arg2 / 10^13][1].length + stor9[arg2 / 10^13].length + -ceil32(stor9[arg2 / 10^13].length) + 32]), stor9[arg2 / 10^13].length + 96, msg.sender, 12557, arg1
                    else:
                        mem[floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 416] = mem[floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + -stor9[arg2 / 10^13][1].length % 32 + 448 len stor9[arg2 / 10^13][1].length % 32]
                        emit 0xc00fbc8d: Array(len=stor9[arg2 / 10^13].length, data=mem[256 len ceil32(stor9[arg2 / 10^13].length)], mem[(2 * ceil32(stor9[arg2 / 10^13].length)) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + -ceil32(stor9[arg2 / 10^13].length) + 64]), stor9[arg2 / 10^13].length + 96, msg.sender, 12557, arg1
            else:
                if arg2 >= 20001 * 10^13:
                    sub_ad87852c[msg.sender][address(arg1)] = 10^16 * arg2 % 2 * 10^17 / 10^13
                    emit 0x43ddf297: (10^16 * arg2 % 2 * 10^17 / 10^13), msg.sender, arg1, 2
                else:
                    if not arg2:
                        if not sub_0b0a0e20[msg.sender][address(arg1)]:
                            revert with 0, 'Never trusted.'
                        sub_0b0a0e20[msg.sender][address(arg1)] = 0
                        if 1 > sub_0ceec2a7[address(arg1)].field_384:
                            revert with 0, 'sub error'
                        sub_0ceec2a7[address(arg1)].field_384 = uint128(sub_0ceec2a7[address(arg1)].field_384 - 1)
                        if 2 == uint128(sub_0ceec2a7[address(arg1)].field_384 - 1):
                            if sub_0ceec2a7[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'sub error'
                            if sub_6f56a240:
                                require sub_6f56a240
                                if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(arg1)].field_256:
                                    revert with 0, 'mul error'
                            if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + sub_9d13150d[address(arg1)][address(arg1)] < sub_9d13150d[address(arg1)][address(arg1)]:
                                revert with 0, 'add error'
                            sub_9d13150d[address(arg1)][address(arg1)] = (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + sub_9d13150d[address(arg1)][address(arg1)]
                            if 1 > sub_26d17d44:
                                revert with 0, 'sub error'
                            sub_26d17d44--
                        emit 0x43ddf297: 0, msg.sender, arg1, 0
                    else:
                        mem[96] = 96
                        mem[128] = 96
                        mem[32] = 9
                        mem[224] = stor9[arg2 / 10^13].length
                        mem[256] = stor9[arg2 / 10^13].field_0
                        idx = 256
                        s = 0
                        while stor9[arg2 / 10^13].length + 256 > idx + 32:
                            mem[idx + 32] = stor9[arg2 / 10^13][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[160] = 224
                        mem[64] = ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 288
                        mem[ceil32(stor9[arg2 / 10^13].length) + 256] = stor9[arg2 / 10^13][1].length
                        mem[0] = sha3(arg2 / 10^13, 9) + 1
                        mem[ceil32(stor9[arg2 / 10^13].length) + 288] = stor9[arg2 / 10^13][1].field_0
                        idx = ceil32(stor9[arg2 / 10^13].length) + 288
                        s = 0
                        while ceil32(stor9[arg2 / 10^13].length) + stor9[arg2 / 10^13][1].length + 256 > idx:
                            mem[idx + 32] = stor9[arg2 / 10^13][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[192] = ceil32(stor9[arg2 / 10^13].length) + 256
                        if stor9[arg2 / 10^13][1].length <= 0:
                            revert with 0, 'Command error'
                        mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 288] = 64
                        mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 352] = stor9[arg2 / 10^13].length
                        mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len ceil32(stor9[arg2 / 10^13].length)] = mem[256 len ceil32(stor9[arg2 / 10^13].length)]
                        mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 320] = stor9[arg2 / 10^13].length + 96
                        mem[stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 384] = stor9[arg2 / 10^13][1].length
                        mem[stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 416 len ceil32(stor9[arg2 / 10^13][1].length)] = mem[ceil32(stor9[arg2 / 10^13].length) + 288 len ceil32(stor9[arg2 / 10^13][1].length)]
                        if not stor9[arg2 / 10^13][1].length % 32:
                            emit 0xc00fbc8d: Array(len=stor9[arg2 / 10^13].length, data=mem[256 len ceil32(stor9[arg2 / 10^13].length)], mem[(2 * ceil32(stor9[arg2 / 10^13].length)) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len stor9[arg2 / 10^13][1].length + stor9[arg2 / 10^13].length + -ceil32(stor9[arg2 / 10^13].length) + 32]), stor9[arg2 / 10^13].length + 96, msg.sender, 12557, arg1
                        else:
                            mem[floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 416] = mem[floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + -stor9[arg2 / 10^13][1].length % 32 + 448 len stor9[arg2 / 10^13][1].length % 32]
                            emit 0xc00fbc8d: Array(len=stor9[arg2 / 10^13].length, data=mem[256 len ceil32(stor9[arg2 / 10^13].length)], mem[(2 * ceil32(stor9[arg2 / 10^13].length)) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + -ceil32(stor9[arg2 / 10^13].length) + 64]), stor9[arg2 / 10^13].length + 96, msg.sender, 12557, arg1
        else:
            if arg2 >= 101 * 10^15:
                sub_0b0a0e20[msg.sender][address(arg1)] = arg2 % 10^17 / 10^15
                if sub_0b0a0e20[msg.sender][address(arg1)]:
                else:
                    if not sub_ad87852c[msg.sender][address(arg1)]:
                        sub_ad87852c[msg.sender][address(arg1)] = 10^18
                    if sub_0ceec2a7[address(arg1)].field_384 + 1 < sub_0ceec2a7[address(arg1)].field_384:
                        revert with 0, 'add error'
                    sub_0ceec2a7[address(arg1)].field_384 = uint128(sub_0ceec2a7[address(arg1)].field_384 + 1)
                    if 3 == uint128(sub_0ceec2a7[address(arg1)].field_384 + 1):
                        sub_0ceec2a7[address(arg1)].field_256 = uint128(block.timestamp)
                        if sub_26d17d44 + 1 < sub_26d17d44:
                            revert with 0, 'add error'
                        sub_26d17d44++
                    if not sub_0ceec2a7[msg.sender].field_768:
                        if not ext_code.size(arg1):
                            sub_0ceec2a7[msg.sender].field_768 = arg1
                emit 0x43ddf297: (arg2 % 10^17 / 10^15), msg.sender, arg1, 1
            else:
                if arg2 >= 3 * 10^17:
                    if not arg2:
                        if not sub_0b0a0e20[msg.sender][address(arg1)]:
                            revert with 0, 'Never trusted.'
                        sub_0b0a0e20[msg.sender][address(arg1)] = 0
                        if 1 > sub_0ceec2a7[address(arg1)].field_384:
                            revert with 0, 'sub error'
                        sub_0ceec2a7[address(arg1)].field_384 = uint128(sub_0ceec2a7[address(arg1)].field_384 - 1)
                        if 2 == uint128(sub_0ceec2a7[address(arg1)].field_384 - 1):
                            if sub_0ceec2a7[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'sub error'
                            if sub_6f56a240:
                                require sub_6f56a240
                                if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(arg1)].field_256:
                                    revert with 0, 'mul error'
                            if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + sub_9d13150d[address(arg1)][address(arg1)] < sub_9d13150d[address(arg1)][address(arg1)]:
                                revert with 0, 'add error'
                            sub_9d13150d[address(arg1)][address(arg1)] = (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + sub_9d13150d[address(arg1)][address(arg1)]
                            if 1 > sub_26d17d44:
                                revert with 0, 'sub error'
                            sub_26d17d44--
                        emit 0x43ddf297: 0, msg.sender, arg1, 0
                    else:
                        mem[96] = 96
                        mem[128] = 96
                        mem[32] = 9
                        mem[224] = stor9[arg2 / 10^13].length
                        mem[256] = stor9[arg2 / 10^13].field_0
                        idx = 256
                        s = 0
                        while stor9[arg2 / 10^13].length + 256 > idx + 32:
                            mem[idx + 32] = stor9[arg2 / 10^13][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[160] = 224
                        mem[64] = ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 288
                        mem[ceil32(stor9[arg2 / 10^13].length) + 256] = stor9[arg2 / 10^13][1].length
                        mem[0] = sha3(arg2 / 10^13, 9) + 1
                        mem[ceil32(stor9[arg2 / 10^13].length) + 288] = stor9[arg2 / 10^13][1].field_0
                        idx = ceil32(stor9[arg2 / 10^13].length) + 288
                        s = 0
                        while ceil32(stor9[arg2 / 10^13].length) + stor9[arg2 / 10^13][1].length + 256 > idx:
                            mem[idx + 32] = stor9[arg2 / 10^13][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[192] = ceil32(stor9[arg2 / 10^13].length) + 256
                        if stor9[arg2 / 10^13][1].length <= 0:
                            revert with 0, 'Command error'
                        mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 288] = 64
                        mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 352] = stor9[arg2 / 10^13].length
                        mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len ceil32(stor9[arg2 / 10^13].length)] = mem[256 len ceil32(stor9[arg2 / 10^13].length)]
                        mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 320] = stor9[arg2 / 10^13].length + 96
                        mem[stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 384] = stor9[arg2 / 10^13][1].length
                        mem[stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 416 len ceil32(stor9[arg2 / 10^13][1].length)] = mem[ceil32(stor9[arg2 / 10^13].length) + 288 len ceil32(stor9[arg2 / 10^13][1].length)]
                        if not stor9[arg2 / 10^13][1].length % 32:
                            emit 0xc00fbc8d: Array(len=stor9[arg2 / 10^13].length, data=mem[256 len ceil32(stor9[arg2 / 10^13].length)], mem[(2 * ceil32(stor9[arg2 / 10^13].length)) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len stor9[arg2 / 10^13][1].length + stor9[arg2 / 10^13].length + -ceil32(stor9[arg2 / 10^13].length) + 32]), stor9[arg2 / 10^13].length + 96, msg.sender, 12557, arg1
                        else:
                            mem[floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 416] = mem[floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + -stor9[arg2 / 10^13][1].length % 32 + 448 len stor9[arg2 / 10^13][1].length % 32]
                            emit 0xc00fbc8d: Array(len=stor9[arg2 / 10^13].length, data=mem[256 len ceil32(stor9[arg2 / 10^13].length)], mem[(2 * ceil32(stor9[arg2 / 10^13].length)) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + -ceil32(stor9[arg2 / 10^13].length) + 64]), stor9[arg2 / 10^13].length + 96, msg.sender, 12557, arg1
                else:
                    if arg2 >= 20001 * 10^13:
                        sub_ad87852c[msg.sender][address(arg1)] = 10^16 * arg2 % 2 * 10^17 / 10^13
                        emit 0x43ddf297: (10^16 * arg2 % 2 * 10^17 / 10^13), msg.sender, arg1, 2
                    else:
                        if not arg2:
                            if not sub_0b0a0e20[msg.sender][address(arg1)]:
                                revert with 0, 'Never trusted.'
                            sub_0b0a0e20[msg.sender][address(arg1)] = 0
                            if 1 > sub_0ceec2a7[address(arg1)].field_384:
                                revert with 0, 'sub error'
                            sub_0ceec2a7[address(arg1)].field_384 = uint128(sub_0ceec2a7[address(arg1)].field_384 - 1)
                            if 2 == uint128(sub_0ceec2a7[address(arg1)].field_384 - 1):
                                if sub_0ceec2a7[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'sub error'
                                if sub_6f56a240:
                                    require sub_6f56a240
                                    if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) / sub_6f56a240 != block.timestamp - sub_0ceec2a7[address(arg1)].field_256:
                                        revert with 0, 'mul error'
                                if (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + sub_9d13150d[address(arg1)][address(arg1)] < sub_9d13150d[address(arg1)][address(arg1)]:
                                    revert with 0, 'add error'
                                sub_9d13150d[address(arg1)][address(arg1)] = (block.timestamp * sub_6f56a240) - (sub_0ceec2a7[address(arg1)].field_256 * sub_6f56a240) + sub_9d13150d[address(arg1)][address(arg1)]
                                if 1 > sub_26d17d44:
                                    revert with 0, 'sub error'
                                sub_26d17d44--
                            emit 0x43ddf297: 0, msg.sender, arg1, 0
                        else:
                            mem[96] = 96
                            mem[128] = 96
                            mem[32] = 9
                            mem[224] = stor9[arg2 / 10^13].length
                            mem[256] = stor9[arg2 / 10^13].field_0
                            idx = 256
                            s = 0
                            while stor9[arg2 / 10^13].length + 256 > idx + 32:
                                mem[idx + 32] = stor9[arg2 / 10^13][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[160] = 224
                            mem[64] = ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 288
                            mem[ceil32(stor9[arg2 / 10^13].length) + 256] = stor9[arg2 / 10^13][1].length
                            mem[0] = sha3(arg2 / 10^13, 9) + 1
                            mem[ceil32(stor9[arg2 / 10^13].length) + 288] = stor9[arg2 / 10^13][1].field_0
                            idx = ceil32(stor9[arg2 / 10^13].length) + 288
                            s = 0
                            while ceil32(stor9[arg2 / 10^13].length) + stor9[arg2 / 10^13][1].length + 256 > idx:
                                mem[idx + 32] = stor9[arg2 / 10^13][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[192] = ceil32(stor9[arg2 / 10^13].length) + 256
                            if stor9[arg2 / 10^13][1].length <= 0:
                                revert with 0, 'Command error'
                            mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 288] = 64
                            mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 352] = stor9[arg2 / 10^13].length
                            mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len ceil32(stor9[arg2 / 10^13].length)] = mem[256 len ceil32(stor9[arg2 / 10^13].length)]
                            mem[ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 320] = stor9[arg2 / 10^13].length + 96
                            mem[stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 384] = stor9[arg2 / 10^13][1].length
                            mem[stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 416 len ceil32(stor9[arg2 / 10^13][1].length)] = mem[ceil32(stor9[arg2 / 10^13].length) + 288 len ceil32(stor9[arg2 / 10^13][1].length)]
                            if not stor9[arg2 / 10^13][1].length % 32:
                                emit 0xc00fbc8d: Array(len=stor9[arg2 / 10^13].length, data=mem[256 len ceil32(stor9[arg2 / 10^13].length)], mem[(2 * ceil32(stor9[arg2 / 10^13].length)) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len stor9[arg2 / 10^13][1].length + stor9[arg2 / 10^13].length + -ceil32(stor9[arg2 / 10^13].length) + 32]), stor9[arg2 / 10^13].length + 96, msg.sender, 12557, arg1
                            else:
                                mem[floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + 416] = mem[floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + ceil32(stor9[arg2 / 10^13].length) + ceil32(stor9[arg2 / 10^13][1].length) + -stor9[arg2 / 10^13][1].length % 32 + 448 len stor9[arg2 / 10^13][1].length % 32]
                                emit 0xc00fbc8d: Array(len=stor9[arg2 / 10^13].length, data=mem[256 len ceil32(stor9[arg2 / 10^13].length)], mem[(2 * ceil32(stor9[arg2 / 10^13].length)) + ceil32(stor9[arg2 / 10^13][1].length) + 384 len floor32(stor9[arg2 / 10^13][1].length) + stor9[arg2 / 10^13].length + -ceil32(stor9[arg2 / 10^13].length) + 64]), stor9[arg2 / 10^13].length + 96, msg.sender, 12557, arg1
    stor2 = 1
    return 1
}



}
