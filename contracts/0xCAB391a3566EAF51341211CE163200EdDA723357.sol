contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balances;
mapping of uint256 freezeOf;
mapping of uint256 allowed;

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
}

function owner() payable {
    return owner
}

function freezeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    owner = arg1
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= 0:
        revert with 0, 'ERR: Invalid amount'
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1
    if arg2 > allowed[address(msg.sender)][address(arg1)]:
        revert with 0, 'ERR: subtraction overflow'
    if allowed[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1
    if allowed[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowed[address(msg.sender)][address(arg1)] + arg2 < allowed[address(msg.sender)][address(arg1)]:
        revert with 0, 'ERR: addition overflow'
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balances[address(msg.sender)] < arg1:
        revert with 0, 'ERR: Not enough balance'
    if arg1 <= 0:
        revert with 0, 'ERR: Invalid burn value'
    if arg1 > balances[address(msg.sender)]:
        revert with 0, 'ERR: subtraction overflow'
    if balances[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    balances[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'ERR: subtraction overflow'
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freeze(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balances[address(msg.sender)] < arg1:
        revert with 0, 'ERR: Not enough balance'
    if arg1 <= 0:
        revert with 0, 'ERR: Invalid freeze value'
    if arg1 > balances[address(msg.sender)]:
        revert with 0, 'ERR: subtraction overflow'
    if balances[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    balances[address(msg.sender)] -= arg1
    if freezeOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if freezeOf[address(msg.sender)] + arg1 < freezeOf[address(msg.sender)]:
        revert with 0, 'ERR: addition overflow'
    freezeOf[address(msg.sender)] += arg1
    emit Freeze(arg1, msg.sender);
    return 1
}

function unfreeze(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if freezeOf[address(msg.sender)] < arg1:
        revert with 0, 'ERR: Not enough frozen balance'
    if arg1 <= 0:
        revert with 0, 'ERR: Invalid unfreeze value'
    if arg1 > freezeOf[address(msg.sender)]:
        revert with 0, 'ERR: subtraction overflow'
    if freezeOf[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    freezeOf[address(msg.sender)] -= arg1
    if balances[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if balances[address(msg.sender)] + arg1 < balances[address(msg.sender)]:
        revert with 0, 'ERR: addition overflow'
    balances[address(msg.sender)] += arg1
    emit Unfreeze(arg1, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ERR: Forbidden'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERR: Cannot mint to the zero address'
    if arg2 <= 0:
        revert with 0, 'ERR: Invalid mint value'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'ERR: addition overflow'
    totalSupply += arg2
    if balances[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
        revert with 0, 'ERR: addition overflow'
    balances[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERR: Unable to transfer to 0x0 address. Use burn() instead'
    if arg2 <= 0:
        revert with 0, 'ERR: Invalid transfer value'
    if balances[address(msg.sender)] < arg2:
        revert with 0, 'ERR: Not enough balance'
    if balances[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
        revert with 0, 'ERR: Overflow check'
    if arg2 > balances[address(msg.sender)]:
        revert with 0, 'ERR: subtraction overflow'
    if balances[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balances[address(msg.sender)] -= arg2
    if balances[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
        revert with 0, 'ERR: addition overflow'
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERR: Unable to transfer to 0x0 address. Use burn() instead'
    if arg3 <= 0:
        revert with 0, 'ERR: Invalid transfer value'
    if balances[address(arg1)] < arg3:
        revert with 0, 'ERR: Not enough balance'
    if balances[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if balances[address(arg2)] + arg3 < balances[address(arg2)]:
        revert with 0, 'ERR: Overflow check'
    if arg3 > allowed[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERR: Insufficient allowance'
    if arg3 > balances[address(arg1)]:
        revert with 0, 'ERR: subtraction overflow'
    if balances[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balances[address(arg1)] -= arg3
    if balances[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if balances[address(arg2)] + arg3 < balances[address(arg2)]:
        revert with 0, 'ERR: addition overflow'
    balances[address(arg2)] += arg3
    if arg3 > allowed[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERR: subtraction overflow'
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
