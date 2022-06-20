contract main {




// =====================  Runtime code  =====================


address _owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
uint8 decimals;
uint256 fee;
uint256 feeDivisor;
uint256 sub_2d1b87fd;
uint256 sub_29859c9e;
address deadAddress;
uint256 stor13;

function totalSupply() {
    return totalSupply
}

function deadAddress() {
    return deadAddress
}

function sub_29859c9e(?) {
    return sub_29859c9e
}

function sub_2d1b87fd(?) {
    return sub_2d1b87fd
}

function decimals() {
    return decimals
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function owner() {
    return _owner
}

function feeDivisor() {
    return feeDivisor
}

function _owner() {
    return _owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function fee() {
    return fee
}

function disableFee() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = 0
    feeDivisor = 0
}

function enableFee() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = sub_2d1b87fd
    feeDivisor = sub_29859c9e
}

function changeFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
    feeDivisor = arg2
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function sub_ec61cc90(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor13 = 2
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13 = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function releaseTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor13 = 2
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor13 = 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if stor3[address(msg.sender)]:
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
    else:
        if stor3[address(arg1)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
        else:
            if not fee:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
            else:
                if arg2 and fee > -1 / arg2:
                    revert with 0, 17
                if not feeDivisor:
                    revert with 0, 18
                if arg2 < arg2 * fee / feeDivisor:
                    revert with 0, 17
                if balanceOf[stor12] > !(arg2 * fee / feeDivisor):
                    revert with 0, 17
                balanceOf[stor12] += arg2 * fee / feeDivisor
                if balanceOf[address(arg1)] > !(arg2 - (arg2 * fee / feeDivisor)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * fee / feeDivisor)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if stor3[address(arg1)]:
        if balanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        balanceOf[address(arg2)] += arg3
    else:
        if stor3[address(arg2)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
        else:
            if not fee:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
            else:
                if arg3 and fee > -1 / arg3:
                    revert with 0, 17
                if not feeDivisor:
                    revert with 0, 18
                if arg3 < arg3 * fee / feeDivisor:
                    revert with 0, 17
                if balanceOf[stor12] > !(arg3 * fee / feeDivisor):
                    revert with 0, 17
                balanceOf[stor12] += arg3 * fee / feeDivisor
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * fee / feeDivisor)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * fee / feeDivisor)
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function name() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x768dc710(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _owner
                if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                    if unknown_0x9a36f932(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return feeDivisor
                    require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if allowance[msg.sender][address(arg1)] < arg2:
                        revert with 0, 'BEP20: decreased allowance below zero'
                    if not msg.sender:
                        revert with 0, 'BEP20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'BEP20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
                    return 1
                require not msg.value
                if bool(stor6.length):
                    if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor6.length):
                        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor6.length):
                            if 31 < uint255(stor6.length) * 0.5:
                                mem[160] = uint256(stor6.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor6.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)])
                            mem[160] = 256 * stor6.length.field_8
                    else:
                        if bool(stor6.length) == stor6.length.field_1 < 32:
                            revert with 0, 34
                        if stor6.length.field_1:
                            if 31 < stor6.length.field_1:
                                mem[160] = uint256(stor6.field_0)
                                idx = 160
                                s = 0
                                while stor6.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor6[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)])
                            mem[160] = 256 * stor6.length.field_8
                    mem[ceil32(uint255(stor6.length) * 0.5) + 224 len ceil32(uint255(stor6.length) * 0.5)] = mem[160 len ceil32(uint255(stor6.length) * 0.5)]
                    if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
                        mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
                if bool(stor6.length) == stor6.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor6.length):
                    if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6.length):
                        if 31 < uint255(stor6.length) * 0.5:
                            mem[160] = uint256(stor6.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor6.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)])
                        mem[160] = 256 * stor6.length.field_8
                else:
                    if bool(stor6.length) == stor6.length.field_1 < 32:
                        revert with 0, 34
                    if stor6.length.field_1:
                        if 31 < stor6.length.field_1:
                            mem[160] = uint256(stor6.field_0)
                            idx = 160
                            s = 0
                            while stor6.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)])
                        mem[160] = 256 * stor6.length.field_8
                mem[ceil32(stor6.length.field_1) + 224 len ceil32(stor6.length.field_1)] = mem[160 len ceil32(stor6.length.field_1)]
                if ceil32(stor6.length.field_1) > stor6.length.field_1:
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 224] = 0
                return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 224 len 2 * ceil32(stor6.length.field_1)]), 
            if unknown_0x768dc710(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor3[arg1])
            if uint32(call.func_hash) >> 224 != unknown_0x79cc6790(?????):
                require unknown_0x86d55557(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                fee = 0
                feeDivisor = 0
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if allowance[address(arg1)][address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: burn amount exceeds allowance'
                if not address(arg1):
                    revert with 0, 'BEP20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'BEP20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg2
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), address(arg1), msg.sender);
                if not address(arg1):
                    revert with 0, 'BEP20: burn from the zero address'
                if balanceOf[address(arg1)] < arg2:
                    revert with 0, 'BEP20: burn amount exceeds balance'
                balanceOf[address(arg1)] -= arg2
                if totalSupply < arg2:
                    revert with 0, 17
                totalSupply -= arg2
                emit Transfer(arg2, address(arg1), 0);
        if unknown_0xe3ca2d65(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe3ca2d65(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                fee = arg1
                feeDivisor = arg2
            else:
                if unknown_0xea2f0b37(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor3[address(arg1)] = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xec61cc90(?????):
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if _owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(_owner, address(arg1));
                        _owner = address(arg1)
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if _owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if stor13 == 2:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor13 = 2
                        call address(arg1) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor13 = 1
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xb2bdfa7b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _owner
            if uint32(call.func_hash) >> 224 != unknown_0xdd62ed3e(?????):
                require unknown_0xddca3f43(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return fee
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            return allowance[address(arg1)][address(arg2)]
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if not msg.sender:
            revert with 0, 'BEP20: transfer from the zero address'
        if not address(arg1):
            revert with 0, 'BEP20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'BEP20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if stor3[address(msg.sender)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
        else:
            if stor3[address(arg1)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
            else:
                if not fee:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                else:
                    if arg2 and fee > -1 / arg2:
                        revert with 0, 17
                    if not feeDivisor:
                        revert with 0, 18
                    if arg2 < arg2 * fee / feeDivisor:
                        revert with 0, 17
                    if balanceOf[stor12] > !(arg2 * fee / feeDivisor):
                        revert with 0, 17
                    balanceOf[stor12] += arg2 * fee / feeDivisor
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * fee / feeDivisor)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * fee / feeDivisor)
        emit Transfer(arg2, msg.sender, address(arg1));
    else:
        if unknown_0x30d2091d(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x437823ec(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x30d2091d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    fee = sub_2d1b87fd
                    feeDivisor = sub_29859c9e
                else:
                    if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return decimals
                    if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if allowance[msg.sender][address(arg1)] > !arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'BEP20: approve from the zero address'
                        if not address(arg1):
                            revert with 0, 'BEP20: approve to the zero address'
                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
                        emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
                        return 1
                    require unknown_0x42966c68(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not msg.sender:
                        revert with 0, 'BEP20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 'BEP20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg1
                    if totalSupply < arg1:
                        revert with 0, 17
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
            else:
                if unknown_0x437823ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor3[address(arg1)] = 1
                else:
                    if unknown_0x5342acb4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor3[address(arg1)])
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return balanceOf[address(arg1)]
                    require unknown_0x74313b4a(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if stor13 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor13 = 2
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    stor13 = 1
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != name():
                if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not msg.sender:
                    revert with 0, 'BEP20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'BEP20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, address(arg1));
                return 1
            require not msg.value
            if bool(stor5.length):
                if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor5.length):
                        if 31 < uint255(stor5.length) * 0.5:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor5.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                        mem[160] = 256 * stor5.length.field_8
                else:
                    if bool(stor5.length) == stor5.length.field_1 < 32:
                        revert with 0, 34
                    if stor5.length.field_1:
                        if 31 < stor5.length.field_1:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while stor5.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                        mem[160] = 256 * stor5.length.field_8
                mem[ceil32(uint255(stor5.length) * 0.5) + 224 len ceil32(uint255(stor5.length) * 0.5)] = mem[160 len ceil32(uint255(stor5.length) * 0.5)]
                if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
                    mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if bool(stor5.length):
                if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor5.length):
                    if 31 < uint255(stor5.length) * 0.5:
                        mem[160] = uint256(stor5.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor5.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                    mem[160] = 256 * stor5.length.field_8
            else:
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 0, 34
                if stor5.length.field_1:
                    if 31 < stor5.length.field_1:
                        mem[160] = uint256(stor5.field_0)
                        idx = 160
                        s = 0
                        while stor5.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                    mem[160] = 256 * stor5.length.field_8
            mem[ceil32(stor5.length.field_1) + 224 len ceil32(stor5.length.field_1)] = mem[160 len ceil32(stor5.length.field_1)]
            if ceil32(stor5.length.field_1) > stor5.length.field_1:
                mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 224] = 0
            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 224 len 2 * ceil32(stor5.length.field_1)]), 
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x27c8f835(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return deadAddress
            if unknown_0x29859c9e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_29859c9e
            require unknown_0x2d1b87fd(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return sub_2d1b87fd
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if not address(arg1):
            revert with 0, 'BEP20: transfer from the zero address'
        if not address(arg2):
            revert with 0, 'BEP20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'BEP20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if stor3[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
        else:
            if stor3[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
            else:
                if not fee:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                else:
                    if arg3 and fee > -1 / arg3:
                        revert with 0, 17
                    if not feeDivisor:
                        revert with 0, 18
                    if arg3 < arg3 * fee / feeDivisor:
                        revert with 0, 17
                    if balanceOf[stor12] > !(arg3 * fee / feeDivisor):
                        revert with 0, 17
                    balanceOf[stor12] += arg3 * fee / feeDivisor
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * fee / feeDivisor)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * fee / feeDivisor)
        emit Transfer(arg3, address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 'BEP20: transfer amount exceeds allowance'
        if not address(arg1):
            revert with 0, 'BEP20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'BEP20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
