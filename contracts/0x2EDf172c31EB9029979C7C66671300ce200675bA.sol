contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 18


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint256 stor6;
address owner;
address uniswapPairAddress;
mapping of address relationship;
address stor10;
mapping of uint8 stor11;
uint8 inSwap;
address stor14;
array of struct sub_8a0488f5;
uint256 stor21;
mapping of uint256 sub_9c284850;
uint256 sub_04ad87d2;
address stor25;
uint256 airdropAmount;
uint256 sub_30668b9b;

function sub_04ad87d2(?) {
    return sub_04ad87d2
}

function totalSupply() {
    return totalSupply
}

function sub_30668b9b(?) {
    return sub_30668b9b
}

function relationship(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return relationship[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8a0488f5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_8a0488f5.length
    return sub_8a0488f5[arg1].field_0
}

function owner() {
    return owner
}

function sub_9c284850(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9c284850[arg1]
}

function uniswapPair() {
    return uniswapPairAddress
}

function inSwap() {
    return bool(inSwap)
}

function sub_dcace9ab(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e8642801(?) {
    return sub_8a0488f5.length
}

function airdropAmount() {
    return airdropAmount
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateAirdropAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not permitted'
    airdropAmount = arg1
}

function sub_6a5aba75(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor0 != msg.sender:
        revert with 0, 'not permitted'
    inSwap = uint8(bool(arg1))
}

function sub_9a56075f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'not permitted'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_7bdfe09f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, 'not permitted'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5bb57f90(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    if stor0 != msg.sender:
        revert with 0, 'not permitted'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_418f9c9d(?) {
    mem[64] = (32 * sub_8a0488f5.length) + 128
    mem[96] = sub_8a0488f5.length
    if not sub_8a0488f5.length:
        mem[(32 * sub_8a0488f5.length) + 128] = 32
        mem[(32 * sub_8a0488f5.length) + 160] = sub_8a0488f5.length
        idx = 0
        s = 128
        t = (32 * sub_8a0488f5.length) + 192
        while idx < sub_8a0488f5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_8a0488f5.length) + 128
           len (96 * sub_8a0488f5.length) + 64
    mem[128] = address(sub_8a0488f5.field_0)
    idx = 128
    s = 0
    while (32 * sub_8a0488f5.length) + 96 > idx:
        mem[idx + 32] = sub_8a0488f5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_8a0488f5.length) + 128] = 32
    mem[(32 * sub_8a0488f5.length) + 160] = sub_8a0488f5.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_8a0488f5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_8a0488f5.length) + -mem[64] + 192
}

function airdrop(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if relationship[msg.sender]:
        revert with 0, 'already bind relationship'
    if arg1 != msg.sender:
        if arg1:
            if relationship[address(arg1)]:
                if not relationship[address(msg.sender)]:
                    relationship[address(msg.sender)] = arg1
            else:
                if not relationship[address(msg.sender)]:
                    relationship[address(msg.sender)] = this.address
        else:
            if not relationship[address(msg.sender)]:
                relationship[address(msg.sender)] = this.address
    else:
        if not relationship[address(msg.sender)]:
            relationship[address(msg.sender)] = this.address
    if balanceOf[stor25] < airdropAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor25] -= airdropAmount
    if balanceOf[msg.sender] > !airdropAmount:
        revert with 0, 17
    balanceOf[msg.sender] += airdropAmount
    emit Transfer(airdropAmount, stor25, msg.sender);
    stor6 = 1
}

function swapTokensForDoge(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    mem[128] = this.address
    require ext_code.size(stor10)
    staticcall stor10.WETH() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = stor14
    mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg1
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 420
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor10)
    call stor10.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(arg2), block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
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

function sub_fc32b087(?) {
    if sub_9c284850[msg.sender] <= balanceOf[this.address]:
        if not sub_9c284850[msg.sender]:
            return 0
        require ext_code.size(uniswapPairAddress)
        staticcall uniswapPairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor10)
        staticcall stor10.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(uniswapPairAddress)
        staticcall uniswapPairAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) and sub_9c284850[msg.sender] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * sub_9c284850[msg.sender] / Mask(112, 0, ext_call.return_data[0]))
        if Mask(112, 0, ext_call.return_data[0]) and sub_9c284850[msg.sender] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * sub_9c284850[msg.sender] / Mask(112, 0, ext_call.return_data[32]))
    if not balanceOf[this.address]:
        return 0
    require ext_code.size(uniswapPairAddress)
    staticcall uniswapPairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor10)
    staticcall stor10.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapPairAddress)
    staticcall uniswapPairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) and balanceOf[this.address] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[32]) * balanceOf[this.address] / Mask(112, 0, ext_call.return_data[0]))
    if Mask(112, 0, ext_call.return_data[0]) and balanceOf[this.address] > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 18
    return (Mask(112, 0, ext_call.return_data[0]) * balanceOf[this.address] / Mask(112, 0, ext_call.return_data[32]))
}

function sub_c7c185ae(?) {
    mem[100] = this.address
    require ext_code.size(stor14)
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if ext_call.return_data[0] > 0x57619f0fb38a94d242e6bdc8057619f0fb38a94d242e6bdc8057619f0fb38a:
            revert with 0, 17
        if not stor21:
            revert with 0, 18
        if sub_8a0488f5.length:
            idx = 0
            s = 0
            while idx < sub_8a0488f5.length:
                mem[0] = sub_8a0488f5[idx].field_0
                mem[32] = 1
                if s > !balanceOf[stor19[idx].field_0]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + balanceOf[stor19[idx].field_0]
                continue 
            idx = 0
            while idx < sub_8a0488f5.length:
                mem[32] = 1
                if 750 * ext_call.return_data[0] / stor21 and balanceOf[stor19[idx].field_0] > -1 / 750 * ext_call.return_data[0] / stor21:
                    revert with 0, 17
                if not s * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length:
                    revert with 0, 18
                if idx >= sub_8a0488f5.length:
                    revert with 0, 50
                mem[0] = 19
                mem[mem[64] + 4] = sub_8a0488f5[idx].field_0
                mem[mem[64] + 36] = 750 * ext_call.return_data[0] / stor21 * balanceOf[stor19[idx].field_0] / s * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length
                require ext_code.size(stor14)
                call stor14.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_8a0488f5[idx].field_0, 750 * ext_call.return_data[0] / stor21 * balanceOf[stor19[idx].field_0] / s * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _48 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_48] == bool(mem[_48])
                if idx >= sub_8a0488f5.length:
                    revert with 0, 50
                mem[0] = 19
                mem[mem[64]] = sub_8a0488f5[idx].field_0
                mem[mem[64] + 32] = 750 * ext_call.return_data[0] / stor21 * balanceOf[stor19[idx].field_0] / s * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length
                emit 0x2104d4e6: sub_8a0488f5[idx].field_0, 750 * ext_call.return_data[0] / stor21 * balanceOf[stor19[idx].field_0] / s * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length * sub_8a0488f5.length
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor14)
            staticcall stor14.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _40 = mem[_39]
            mem[mem[64] + 4] = stor25
            mem[mem[64] + 36] = _40
            require ext_code.size(stor14)
            call stor14.0xa9059cbb with:
                 gas gas_remaining wei
                args stor25, _40
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_43] == bool(mem[_43])
}

function sub_9db7d7b8(?) {
    if sub_9c284850[msg.sender] <= balanceOf[this.address]:
        if sub_9c284850[msg.sender]:
            require ext_code.size(uniswapPairAddress)
            staticcall uniswapPairAddress.getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor10)
            staticcall stor10.WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(uniswapPairAddress)
            staticcall uniswapPairAddress.token0() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) and sub_9c284850[msg.sender] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) * sub_9c284850[msg.sender] / Mask(112, 0, ext_call.return_data[0]):
                    mem[0] = msg.sender
                    mem[32] = 23
                    if sub_9c284850[address(msg.sender)] < sub_9c284850[msg.sender]:
                        revert with 0, 17
                    sub_9c284850[address(msg.sender)] -= sub_9c284850[msg.sender]
                    if sub_04ad87d2 < sub_9c284850[msg.sender]:
                        revert with 0, 17
                    sub_04ad87d2 -= sub_9c284850[msg.sender]
                    if stor6 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor6 = 2
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = this.address
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 196] = sub_9c284850[msg.sender]
                    mem[(6 * ceil32(return_data.size)) + 228] = 0
                    mem[(6 * ceil32(return_data.size)) + 260] = 160
                    mem[(6 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(stor10)
                    call stor10.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor6 = 1
                    emit 0x3326d0ad: sub_9c284850[msg.sender]
            else:
                if Mask(112, 0, ext_call.return_data[0]) and sub_9c284850[msg.sender] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[0]) * sub_9c284850[msg.sender] / Mask(112, 0, ext_call.return_data[32]):
                    mem[0] = msg.sender
                    mem[32] = 23
                    if sub_9c284850[address(msg.sender)] < sub_9c284850[msg.sender]:
                        revert with 0, 17
                    sub_9c284850[address(msg.sender)] -= sub_9c284850[msg.sender]
                    if sub_04ad87d2 < sub_9c284850[msg.sender]:
                        revert with 0, 17
                    sub_04ad87d2 -= sub_9c284850[msg.sender]
                    if stor6 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor6 = 2
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = this.address
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 196] = sub_9c284850[msg.sender]
                    mem[(6 * ceil32(return_data.size)) + 228] = 0
                    mem[(6 * ceil32(return_data.size)) + 260] = 160
                    mem[(6 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(stor10)
                    call stor10.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor6 = 1
                    emit 0x3326d0ad: sub_9c284850[msg.sender]
    else:
        if balanceOf[this.address]:
            require ext_code.size(uniswapPairAddress)
            staticcall uniswapPairAddress.getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor10)
            staticcall stor10.WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(uniswapPairAddress)
            staticcall uniswapPairAddress.token0() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) and balanceOf[this.address] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) * balanceOf[this.address] / Mask(112, 0, ext_call.return_data[0]):
                    mem[0] = msg.sender
                    mem[32] = 23
                    if sub_9c284850[address(msg.sender)] < sub_9c284850[msg.sender]:
                        revert with 0, 17
                    sub_9c284850[address(msg.sender)] -= sub_9c284850[msg.sender]
                    if sub_04ad87d2 < sub_9c284850[msg.sender]:
                        revert with 0, 17
                    sub_04ad87d2 -= sub_9c284850[msg.sender]
                    if stor6 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor6 = 2
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = this.address
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 196] = sub_9c284850[msg.sender]
                    mem[(6 * ceil32(return_data.size)) + 228] = 0
                    mem[(6 * ceil32(return_data.size)) + 260] = 160
                    mem[(6 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(stor10)
                    call stor10.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor6 = 1
                    emit 0x3326d0ad: sub_9c284850[msg.sender]
            else:
                if Mask(112, 0, ext_call.return_data[0]) and balanceOf[this.address] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[0]) * balanceOf[this.address] / Mask(112, 0, ext_call.return_data[32]):
                    mem[0] = msg.sender
                    mem[32] = 23
                    if sub_9c284850[address(msg.sender)] < sub_9c284850[msg.sender]:
                        revert with 0, 17
                    sub_9c284850[address(msg.sender)] -= sub_9c284850[msg.sender]
                    if sub_04ad87d2 < sub_9c284850[msg.sender]:
                        revert with 0, 17
                    sub_04ad87d2 -= sub_9c284850[msg.sender]
                    if stor6 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor6 = 2
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = this.address
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 196] = sub_9c284850[msg.sender]
                    mem[(6 * ceil32(return_data.size)) + 228] = 0
                    mem[(6 * ceil32(return_data.size)) + 260] = 160
                    mem[(6 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(stor10)
                    call stor10.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor6 = 1
                    emit 0x3326d0ad: sub_9c284850[msg.sender]
}



}
