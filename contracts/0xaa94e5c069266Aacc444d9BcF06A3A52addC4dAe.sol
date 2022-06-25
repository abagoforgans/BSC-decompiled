contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address uniswapPairAddress;
mapping of address relationship;
address stor8;
address stor9;
address stor10;
address stor11;
mapping of uint8 stor12;
uint256 stor13;
address stor14;
uint256 stor15;
uint8 stor16;

function totalSupply() {
    return totalSupply
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

function owner() {
    return owner
}

function uniswapPair() {
    return uniswapPairAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function getPoolInfo() {
    require ext_code.size(uniswapPairAddress)
    staticcall uniswapPairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor11)
    staticcall stor11.WETH() with:
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
        return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uniswapPairAddress == arg1:
        if not stor16:
            if stor14 != msg.sender:
                revert with 0, 'please waiting pool liquidity'
            stor16 = 1
    if uniswapPairAddress == msg.sender:
        if not relationship[address(arg1)]:
            relationship[address(arg1)] = stor10
        if stor12[address(arg1)]:
            if arg2 < 0:
                revert with 0, 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 > 0x444444444444444444444444444444444444444444444444444444444444444:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if balanceOf[address(msg.sender)] < 60 * arg2 / stor15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= 60 * arg2 / stor15
            if balanceOf[this.address] > !(60 * arg2 / stor15):
                revert with 0, 17
            balanceOf[this.address] += 60 * arg2 / stor15
            emit Transfer((60 * arg2 / stor15), msg.sender, this.address);
            if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
            if totalSupply < 10 * arg2 / stor15:
                revert with 0, 17
            totalSupply -= 10 * arg2 / stor15
            emit Transfer((10 * arg2 / stor15), msg.sender, 0);
            if arg2 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if balanceOf[address(msg.sender)] < 20 * arg2 / stor15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= 20 * arg2 / stor15
            if balanceOf[stor7[address(arg1)]] > !(20 * arg2 / stor15):
                revert with 0, 17
            balanceOf[stor7[address(arg1)]] += 20 * arg2 / stor15
            emit Transfer((20 * arg2 / stor15), msg.sender, relationship[address(arg1)]);
            if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
            if balanceOf[stor7[stor7[address(arg1)]]] > !(10 * arg2 / stor15):
                revert with 0, 17
            balanceOf[stor7[stor7[address(arg1)]]] += 10 * arg2 / stor15
            emit Transfer((10 * arg2 / stor15), msg.sender, relationship[relationship[address(arg1)]]);
            if 20 * arg2 / stor15 > !(10 * arg2 / stor15):
                revert with 0, 17
            if 0 > !((20 * arg2 / stor15) + (10 * arg2 / stor15)):
                revert with 0, 17
            if (20 * arg2 / stor15) + (10 * arg2 / stor15) > !(60 * arg2 / stor15):
                revert with 0, 17
            if (20 * arg2 / stor15) + (10 * arg2 / stor15) + (60 * arg2 / stor15) > !(10 * arg2 / stor15):
                revert with 0, 17
            if arg2 < (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15):
                revert with 0, 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15)
            if balanceOf[arg1] > !(arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)):
                revert with 0, 17
            balanceOf[arg1] = balanceOf[arg1] + arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)
            emit Transfer((arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)), msg.sender, arg1);
    else:
        if uniswapPairAddress != arg1:
            if not relationship[address(arg1)]:
                relationship[address(arg1)] = msg.sender
            if arg2 < 0:
                revert with 0, 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor12[address(msg.sender)]:
                if arg2 < 0:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not balanceOf[this.address]:
                    if arg2 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if balanceOf[address(msg.sender)] < 60 * arg2 / stor15:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 60 * arg2 / stor15
                    if balanceOf[this.address] > !(60 * arg2 / stor15):
                        revert with 0, 17
                    balanceOf[this.address] += 60 * arg2 / stor15
                    emit Transfer((60 * arg2 / stor15), msg.sender, this.address);
                    if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
                    if totalSupply < 10 * arg2 / stor15:
                        revert with 0, 17
                    totalSupply -= 10 * arg2 / stor15
                    emit Transfer((10 * arg2 / stor15), msg.sender, 0);
                    if arg2 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if balanceOf[address(msg.sender)] < 20 * arg2 / stor15:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 20 * arg2 / stor15
                    if balanceOf[stor7[address(msg.sender)]] > !(20 * arg2 / stor15):
                        revert with 0, 17
                    balanceOf[stor7[address(msg.sender)]] += 20 * arg2 / stor15
                    emit Transfer((20 * arg2 / stor15), msg.sender, relationship[address(msg.sender)]);
                    if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
                    if balanceOf[stor7[stor7[address(msg.sender)]]] > !(10 * arg2 / stor15):
                        revert with 0, 17
                    balanceOf[stor7[stor7[address(msg.sender)]]] += 10 * arg2 / stor15
                    emit Transfer((10 * arg2 / stor15), msg.sender, relationship[relationship[address(msg.sender)]]);
                    if 20 * arg2 / stor15 > !(10 * arg2 / stor15):
                        revert with 0, 17
                    if 0 > !((20 * arg2 / stor15) + (10 * arg2 / stor15)):
                        revert with 0, 17
                    if (20 * arg2 / stor15) + (10 * arg2 / stor15) > !(60 * arg2 / stor15):
                        revert with 0, 17
                    if (20 * arg2 / stor15) + (10 * arg2 / stor15) + (60 * arg2 / stor15) > !(10 * arg2 / stor15):
                        revert with 0, 17
                    if arg2 < (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15):
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                else:
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
                    require ext_code.size(stor11)
                    staticcall stor11.WETH() with:
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
                        if Mask(112, 0, ext_call.return_data[32]) * balanceOf[this.address] / Mask(112, 0, ext_call.return_data[0]) >= stor13:
                            mem[(4 * ceil32(return_data.size)) + 128] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.WETH() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if balanceOf[this.address] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * balanceOf[this.address] / 3:
                                if arg2 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if balanceOf[address(msg.sender)] < 60 * arg2 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] -= 60 * arg2 / stor15
                                if balanceOf[this.address] > !(60 * arg2 / stor15):
                                    revert with 0, 17
                                balanceOf[this.address] += 60 * arg2 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              60 * arg2 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              this.address,
                                if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                                    revert with 0, 'ERC20: burn amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
                                if totalSupply < 10 * arg2 / stor15:
                                    revert with 0, 17
                                totalSupply -= 10 * arg2 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              10 * arg2 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                                if arg2 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if balanceOf[address(msg.sender)] < 20 * arg2 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] -= 20 * arg2 / stor15
                                if balanceOf[stor7[address(msg.sender)]] > !(20 * arg2 / stor15):
                                    revert with 0, 17
                                balanceOf[stor7[address(msg.sender)]] += 20 * arg2 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              20 * arg2 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              relationship[address(msg.sender)],
                                if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
                                if balanceOf[stor7[stor7[address(msg.sender)]]] > !(10 * arg2 / stor15):
                                    revert with 0, 17
                                balanceOf[stor7[stor7[address(msg.sender)]]] += 10 * arg2 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              10 * arg2 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              relationship[relationship[address(msg.sender)]],
                                if 20 * arg2 / stor15 > !(10 * arg2 / stor15):
                                    revert with 0, 17
                                if 0 > !((20 * arg2 / stor15) + (10 * arg2 / stor15)):
                                    revert with 0, 17
                                if (20 * arg2 / stor15) + (10 * arg2 / stor15) > !(60 * arg2 / stor15):
                                    revert with 0, 17
                                if (20 * arg2 / stor15) + (10 * arg2 / stor15) + (60 * arg2 / stor15) > !(10 * arg2 / stor15):
                                    revert with 0, 17
                                if arg2 < (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15):
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(msg.sender)] < arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15):
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15)
                                if balanceOf[arg1] > !(arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15),
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                return 1, mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)]
                            if eth.balance(this.address):
                                call stor9 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 196] = 2 * balanceOf[this.address] / 3
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 388
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * balanceOf[this.address] / 3, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xc4e47640: 2 * balanceOf[this.address] / 3, eth.balance(this.address)
                            if eth.balance(this.address) > -1:
                                revert with 0, 17
                            if balanceOf[this.address] < 2 * balanceOf[this.address] / 3:
                                revert with 0, 17
                            require ext_code.size(stor11)
                            call stor11.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) / 3 wei
                                 gas gas_remaining wei
                                args this.address, balanceOf[this.address] - (2 * balanceOf[this.address] / 3), 0, 0, stor14, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            call stor9 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor8 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and balanceOf[this.address] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * balanceOf[this.address] / Mask(112, 0, ext_call.return_data[32]) >= stor13:
                            mem[(4 * ceil32(return_data.size)) + 128] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.WETH() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if balanceOf[this.address] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * balanceOf[this.address] / 3:
                                if arg2 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if balanceOf[address(msg.sender)] < 60 * arg2 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] -= 60 * arg2 / stor15
                                if balanceOf[this.address] > !(60 * arg2 / stor15):
                                    revert with 0, 17
                                balanceOf[this.address] += 60 * arg2 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              60 * arg2 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              this.address,
                                if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if not msg.sender:
                                    revert with 0, 'ERC20: burn from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                                    revert with 0, 'ERC20: burn amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
                                if totalSupply < 10 * arg2 / stor15:
                                    revert with 0, 17
                                totalSupply -= 10 * arg2 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              10 * arg2 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                                if arg2 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if balanceOf[address(msg.sender)] < 20 * arg2 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] -= 20 * arg2 / stor15
                                if balanceOf[stor7[address(msg.sender)]] > !(20 * arg2 / stor15):
                                    revert with 0, 17
                                balanceOf[stor7[address(msg.sender)]] += 20 * arg2 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              20 * arg2 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              relationship[address(msg.sender)],
                                if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
                                if balanceOf[stor7[stor7[address(msg.sender)]]] > !(10 * arg2 / stor15):
                                    revert with 0, 17
                                balanceOf[stor7[stor7[address(msg.sender)]]] += 10 * arg2 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              10 * arg2 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              relationship[relationship[address(msg.sender)]],
                                if 20 * arg2 / stor15 > !(10 * arg2 / stor15):
                                    revert with 0, 17
                                if 0 > !((20 * arg2 / stor15) + (10 * arg2 / stor15)):
                                    revert with 0, 17
                                if (20 * arg2 / stor15) + (10 * arg2 / stor15) > !(60 * arg2 / stor15):
                                    revert with 0, 17
                                if (20 * arg2 / stor15) + (10 * arg2 / stor15) + (60 * arg2 / stor15) > !(10 * arg2 / stor15):
                                    revert with 0, 17
                                if arg2 < (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15):
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(msg.sender)] < arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15):
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15)
                                if balanceOf[arg1] > !(arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15),
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                return 1, mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)]
                            if eth.balance(this.address):
                                call stor9 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 196] = 2 * balanceOf[this.address] / 3
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 388
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * balanceOf[this.address] / 3, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xc4e47640: 2 * balanceOf[this.address] / 3, eth.balance(this.address)
                            if eth.balance(this.address) > -1:
                                revert with 0, 17
                            if balanceOf[this.address] < 2 * balanceOf[this.address] / 3:
                                revert with 0, 17
                            require ext_code.size(stor11)
                            call stor11.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) / 3 wei
                                 gas gas_remaining wei
                                args this.address, balanceOf[this.address] - (2 * balanceOf[this.address] / 3), 0, 0, stor14, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            call stor9 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor8 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    if arg2 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if balanceOf[address(msg.sender)] < 60 * arg2 / stor15:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 60 * arg2 / stor15
                    if balanceOf[this.address] > !(60 * arg2 / stor15):
                        revert with 0, 17
                    balanceOf[this.address] += 60 * arg2 / stor15
                    emit Transfer((60 * arg2 / stor15), msg.sender, this.address);
                    if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if not msg.sender:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
                    if totalSupply < 10 * arg2 / stor15:
                        revert with 0, 17
                    totalSupply -= 10 * arg2 / stor15
                    emit Transfer((10 * arg2 / stor15), msg.sender, 0);
                    if arg2 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if arg2 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if balanceOf[address(msg.sender)] < 20 * arg2 / stor15:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 20 * arg2 / stor15
                    if balanceOf[stor7[address(msg.sender)]] > !(20 * arg2 / stor15):
                        revert with 0, 17
                    balanceOf[stor7[address(msg.sender)]] += 20 * arg2 / stor15
                    emit Transfer((20 * arg2 / stor15), msg.sender, relationship[address(msg.sender)]);
                    if balanceOf[address(msg.sender)] < 10 * arg2 / stor15:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 10 * arg2 / stor15
                    if balanceOf[stor7[stor7[address(msg.sender)]]] > !(10 * arg2 / stor15):
                        revert with 0, 17
                    balanceOf[stor7[stor7[address(msg.sender)]]] += 10 * arg2 / stor15
                    emit Transfer((10 * arg2 / stor15), msg.sender, relationship[relationship[address(msg.sender)]]);
                    if 20 * arg2 / stor15 > !(10 * arg2 / stor15):
                        revert with 0, 17
                    if 0 > !((20 * arg2 / stor15) + (10 * arg2 / stor15)):
                        revert with 0, 17
                    if (20 * arg2 / stor15) + (10 * arg2 / stor15) > !(60 * arg2 / stor15):
                        revert with 0, 17
                    if (20 * arg2 / stor15) + (10 * arg2 / stor15) + (60 * arg2 / stor15) > !(10 * arg2 / stor15):
                        revert with 0, 17
                    if arg2 < (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15):
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', 20, ('param', 'arg2')), ('stor', ('name', 'stor15', 15)))), ('mul', -2, ('div', ('mul', 10, ('param', 'arg2')), ('stor', ('name', 'stor15', 15)))), ('mul', -1, ('div', ('mul', 60, ('param', 'arg2')), ('stor', ('name', 'stor15', 15))))))
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / stor15) + (2 * 10 * arg2 / stor15) + (60 * arg2 / stor15)
                if balanceOf[arg1] > !(arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)):
                    revert with 0, 17
                balanceOf[arg1] = balanceOf[arg1] + arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)
                emit Transfer((arg2 - (20 * arg2 / stor15) - (2 * 10 * arg2 / stor15) - (60 * arg2 / stor15)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if uniswapPairAddress == arg2:
        if not stor16:
            if stor14 != arg1:
                revert with 0, 'please waiting pool liquidity'
            stor16 = 1
    if uniswapPairAddress == arg1:
        if not relationship[address(arg2)]:
            relationship[address(arg2)] = stor10
        if stor12[address(arg2)]:
            if arg3 < 0:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg3 > 0x444444444444444444444444444444444444444444444444444444444444444:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if balanceOf[address(arg1)] < 60 * arg3 / stor15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= 60 * arg3 / stor15
            if balanceOf[this.address] > !(60 * arg3 / stor15):
                revert with 0, 17
            balanceOf[this.address] += 60 * arg3 / stor15
            emit Transfer((60 * arg3 / stor15), arg1, this.address);
            if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
            if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
            balanceOf[address(arg1)] -= 10 * arg3 / stor15
            if totalSupply < 10 * arg3 / stor15:
                revert with 0, 17
            totalSupply -= 10 * arg3 / stor15
            emit Transfer((10 * arg3 / stor15), arg1, 0);
            if arg3 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if balanceOf[address(arg1)] < 20 * arg3 / stor15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= 20 * arg3 / stor15
            if balanceOf[stor7[address(arg2)]] > !(20 * arg3 / stor15):
                revert with 0, 17
            balanceOf[stor7[address(arg2)]] += 20 * arg3 / stor15
            emit Transfer((20 * arg3 / stor15), arg1, relationship[address(arg2)]);
            if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= 10 * arg3 / stor15
            if balanceOf[stor7[stor7[address(arg2)]]] > !(10 * arg3 / stor15):
                revert with 0, 17
            balanceOf[stor7[stor7[address(arg2)]]] += 10 * arg3 / stor15
            emit Transfer((10 * arg3 / stor15), arg1, relationship[relationship[address(arg2)]]);
            if 20 * arg3 / stor15 > !(10 * arg3 / stor15):
                revert with 0, 17
            if 0 > !((20 * arg3 / stor15) + (10 * arg3 / stor15)):
                revert with 0, 17
            if (20 * arg3 / stor15) + (10 * arg3 / stor15) > !(60 * arg3 / stor15):
                revert with 0, 17
            if (20 * arg3 / stor15) + (10 * arg3 / stor15) + (60 * arg3 / stor15) > !(10 * arg3 / stor15):
                revert with 0, 17
            if arg3 < (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15):
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15)
            if balanceOf[arg2] > !(arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)):
                revert with 0, 17
            balanceOf[arg2] = balanceOf[arg2] + arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)
            emit Transfer((arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)), arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if uniswapPairAddress != arg2:
            if not relationship[address(arg2)]:
                relationship[address(arg2)] = arg1
            if arg3 < 0:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if stor12[address(arg1)]:
                if arg3 < 0:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if not balanceOf[this.address]:
                    if arg3 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if balanceOf[address(arg1)] < 60 * arg3 / stor15:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 60 * arg3 / stor15
                    if balanceOf[this.address] > !(60 * arg3 / stor15):
                        revert with 0, 17
                    balanceOf[this.address] += 60 * arg3 / stor15
                    emit Transfer((60 * arg3 / stor15), arg1, this.address);
                    if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(arg1)] -= 10 * arg3 / stor15
                    if totalSupply < 10 * arg3 / stor15:
                        revert with 0, 17
                    totalSupply -= 10 * arg3 / stor15
                    emit Transfer((10 * arg3 / stor15), arg1, 0);
                    if arg3 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if balanceOf[address(arg1)] < 20 * arg3 / stor15:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 20 * arg3 / stor15
                    if balanceOf[stor7[address(arg1)]] > !(20 * arg3 / stor15):
                        revert with 0, 17
                    balanceOf[stor7[address(arg1)]] += 20 * arg3 / stor15
                    emit Transfer((20 * arg3 / stor15), arg1, relationship[address(arg1)]);
                    if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 10 * arg3 / stor15
                    if balanceOf[stor7[stor7[address(arg1)]]] > !(10 * arg3 / stor15):
                        revert with 0, 17
                    balanceOf[stor7[stor7[address(arg1)]]] += 10 * arg3 / stor15
                    emit Transfer((10 * arg3 / stor15), arg1, relationship[relationship[address(arg1)]]);
                    if 20 * arg3 / stor15 > !(10 * arg3 / stor15):
                        revert with 0, 17
                    if 0 > !((20 * arg3 / stor15) + (10 * arg3 / stor15)):
                        revert with 0, 17
                    if (20 * arg3 / stor15) + (10 * arg3 / stor15) > !(60 * arg3 / stor15):
                        revert with 0, 17
                    if (20 * arg3 / stor15) + (10 * arg3 / stor15) + (60 * arg3 / stor15) > !(10 * arg3 / stor15):
                        revert with 0, 17
                    if arg3 < (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15):
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15)
                    if balanceOf[arg2] > !(arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)
                    emit Transfer((arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
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
                    require ext_code.size(stor11)
                    staticcall stor11.WETH() with:
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
                        if Mask(112, 0, ext_call.return_data[32]) * balanceOf[this.address] / Mask(112, 0, ext_call.return_data[0]) >= stor13:
                            mem[(4 * ceil32(return_data.size)) + 128] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.WETH() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if balanceOf[this.address] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * balanceOf[this.address] / 3:
                                if arg3 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if balanceOf[address(arg1)] < 60 * arg3 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= 60 * arg3 / stor15
                                if balanceOf[this.address] > !(60 * arg3 / stor15):
                                    revert with 0, 17
                                balanceOf[this.address] += 60 * arg3 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              60 * arg3 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              this.address,
                                if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if not arg1:
                                    revert with 0, 'ERC20: burn from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                                    revert with 0, 'ERC20: burn amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= 10 * arg3 / stor15
                                if totalSupply < 10 * arg3 / stor15:
                                    revert with 0, 17
                                totalSupply -= 10 * arg3 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              10 * arg3 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              0,
                                if arg3 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if balanceOf[address(arg1)] < 20 * arg3 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= 20 * arg3 / stor15
                                if balanceOf[stor7[address(arg1)]] > !(20 * arg3 / stor15):
                                    revert with 0, 17
                                balanceOf[stor7[address(arg1)]] += 20 * arg3 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              20 * arg3 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              relationship[address(arg1)],
                                if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= 10 * arg3 / stor15
                                if balanceOf[stor7[stor7[address(arg1)]]] > !(10 * arg3 / stor15):
                                    revert with 0, 17
                                balanceOf[stor7[stor7[address(arg1)]]] += 10 * arg3 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              10 * arg3 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              relationship[relationship[address(arg1)]],
                                if 20 * arg3 / stor15 > !(10 * arg3 / stor15):
                                    revert with 0, 17
                                if 0 > !((20 * arg3 / stor15) + (10 * arg3 / stor15)):
                                    revert with 0, 17
                                if (20 * arg3 / stor15) + (10 * arg3 / stor15) > !(60 * arg3 / stor15):
                                    revert with 0, 17
                                if (20 * arg3 / stor15) + (10 * arg3 / stor15) + (60 * arg3 / stor15) > !(10 * arg3 / stor15):
                                    revert with 0, 17
                                if arg3 < (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15):
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(arg1)] < arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15):
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15)
                                if balanceOf[arg2] > !(arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)):
                                    revert with 0, 17
                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15),
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              arg2,
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0, 
                                                'ERC20: transfer amount exceeds allowance',
                                                mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                emit Approval(address arg1, address arg2, uint256 arg3):
                                              allowance[address(arg1)][msg.sender] - arg3,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              msg.sender,
                                return 1, mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)]
                            if eth.balance(this.address):
                                call stor9 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 196] = 2 * balanceOf[this.address] / 3
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 388
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * balanceOf[this.address] / 3, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xc4e47640: 2 * balanceOf[this.address] / 3, eth.balance(this.address)
                            if eth.balance(this.address) > -1:
                                revert with 0, 17
                            if balanceOf[this.address] < 2 * balanceOf[this.address] / 3:
                                revert with 0, 17
                            require ext_code.size(stor11)
                            call stor11.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) / 3 wei
                                 gas gas_remaining wei
                                args this.address, balanceOf[this.address] - (2 * balanceOf[this.address] / 3), 0, 0, stor14, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            call stor9 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor8 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and balanceOf[this.address] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[0]) * balanceOf[this.address] / Mask(112, 0, ext_call.return_data[32]) >= stor13:
                            mem[(4 * ceil32(return_data.size)) + 128] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.WETH() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if balanceOf[this.address] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * balanceOf[this.address] / 3:
                                if arg3 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if balanceOf[address(arg1)] < 60 * arg3 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= 60 * arg3 / stor15
                                if balanceOf[this.address] > !(60 * arg3 / stor15):
                                    revert with 0, 17
                                balanceOf[this.address] += 60 * arg3 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              60 * arg3 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              this.address,
                                if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if not arg1:
                                    revert with 0, 'ERC20: burn from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                                    revert with 0, 'ERC20: burn amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= 10 * arg3 / stor15
                                if totalSupply < 10 * arg3 / stor15:
                                    revert with 0, 17
                                totalSupply -= 10 * arg3 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              10 * arg3 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              0,
                                if arg3 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                    revert with 0, 17
                                if not stor15:
                                    revert with 0, 18
                                if balanceOf[address(arg1)] < 20 * arg3 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= 20 * arg3 / stor15
                                if balanceOf[stor7[address(arg1)]] > !(20 * arg3 / stor15):
                                    revert with 0, 17
                                balanceOf[stor7[address(arg1)]] += 20 * arg3 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              20 * arg3 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              relationship[address(arg1)],
                                if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= 10 * arg3 / stor15
                                if balanceOf[stor7[stor7[address(arg1)]]] > !(10 * arg3 / stor15):
                                    revert with 0, 17
                                balanceOf[stor7[stor7[address(arg1)]]] += 10 * arg3 / stor15
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              10 * arg3 / stor15,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              relationship[relationship[address(arg1)]],
                                if 20 * arg3 / stor15 > !(10 * arg3 / stor15):
                                    revert with 0, 17
                                if 0 > !((20 * arg3 / stor15) + (10 * arg3 / stor15)):
                                    revert with 0, 17
                                if (20 * arg3 / stor15) + (10 * arg3 / stor15) > !(60 * arg3 / stor15):
                                    revert with 0, 17
                                if (20 * arg3 / stor15) + (10 * arg3 / stor15) + (60 * arg3 / stor15) > !(10 * arg3 / stor15):
                                    revert with 0, 17
                                if arg3 < (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15):
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(arg1)] < arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15):
                                    revert with 0, 'ERC20: transfer amount exceeds balance', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15)
                                if balanceOf[arg2] > !(arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)):
                                    revert with 0, 17
                                balanceOf[arg2] = balanceOf[arg2] + arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15),
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              arg2,
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0, 
                                                'ERC20: transfer amount exceeds allowance',
                                                mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address', mem[(6 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
                                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                emit Approval(address arg1, address arg2, uint256 arg3):
                                              allowance[address(arg1)][msg.sender] - arg3,
                                              mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)],
                                              arg1,
                                              msg.sender,
                                return 1, mem[(6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)]
                            if eth.balance(this.address):
                                call stor9 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 196] = 2 * balanceOf[this.address] / 3
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 388
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * balanceOf[this.address] / 3, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xc4e47640: 2 * balanceOf[this.address] / 3, eth.balance(this.address)
                            if eth.balance(this.address) > -1:
                                revert with 0, 17
                            if balanceOf[this.address] < 2 * balanceOf[this.address] / 3:
                                revert with 0, 17
                            require ext_code.size(stor11)
                            call stor11.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) / 3 wei
                                 gas gas_remaining wei
                                args this.address, balanceOf[this.address] - (2 * balanceOf[this.address] / 3), 0, 0, stor14, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            call stor9 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor8 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    if arg3 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if balanceOf[address(arg1)] < 60 * arg3 / stor15:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 60 * arg3 / stor15
                    if balanceOf[this.address] > !(60 * arg3 / stor15):
                        revert with 0, 17
                    balanceOf[this.address] += 60 * arg3 / stor15
                    emit Transfer((60 * arg3 / stor15), arg1, this.address);
                    if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if not arg1:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(arg1)] -= 10 * arg3 / stor15
                    if totalSupply < 10 * arg3 / stor15:
                        revert with 0, 17
                    totalSupply -= 10 * arg3 / stor15
                    emit Transfer((10 * arg3 / stor15), arg1, 0);
                    if arg3 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if not stor15:
                        revert with 0, 18
                    if balanceOf[address(arg1)] < 20 * arg3 / stor15:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 20 * arg3 / stor15
                    if balanceOf[stor7[address(arg1)]] > !(20 * arg3 / stor15):
                        revert with 0, 17
                    balanceOf[stor7[address(arg1)]] += 20 * arg3 / stor15
                    emit Transfer((20 * arg3 / stor15), arg1, relationship[address(arg1)]);
                    if balanceOf[address(arg1)] < 10 * arg3 / stor15:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 10 * arg3 / stor15
                    if balanceOf[stor7[stor7[address(arg1)]]] > !(10 * arg3 / stor15):
                        revert with 0, 17
                    balanceOf[stor7[stor7[address(arg1)]]] += 10 * arg3 / stor15
                    emit Transfer((10 * arg3 / stor15), arg1, relationship[relationship[address(arg1)]]);
                    if 20 * arg3 / stor15 > !(10 * arg3 / stor15):
                        revert with 0, 17
                    if 0 > !((20 * arg3 / stor15) + (10 * arg3 / stor15)):
                        revert with 0, 17
                    if (20 * arg3 / stor15) + (10 * arg3 / stor15) > !(60 * arg3 / stor15):
                        revert with 0, 17
                    if (20 * arg3 / stor15) + (10 * arg3 / stor15) + (60 * arg3 / stor15) > !(10 * arg3 / stor15):
                        revert with 0, 17
                    if arg3 < (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15):
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (20 * arg3 / stor15) + (2 * 10 * arg3 / stor15) + (60 * arg3 / stor15)
                    if balanceOf[arg2] > !(arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)
                    emit Transfer((arg3 - (20 * arg3 / stor15) - (2 * 10 * arg3 / stor15) - (60 * arg3 / stor15)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
