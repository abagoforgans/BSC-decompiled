contract main {




// =====================  Runtime code  =====================


#
#  - sub_170b56b3(?)
#  - sub_2fe32fba(?)
#  - sub_84c9b3db(?)
#  - sub_90af77bd(?)
#  - sub_e5ad7010(?)
#
const MAX_Supply = 320000000 * 10^18

const decimals = 18

const sub_45d30bd6(?) = 320000000 * 10^18

const sub_66c18756(?) = 10^16

const sub_c59b145b(?) = 0x448d82bacd1b2632886d7508320f75c76a64e640

const BurnAddr = 57005


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
array of address stor6;
array of address stor7;
array of address stor8;
array of address stor9;
array of address stor10;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;

function totalSupply() {
    return totalSupply
}

function sub_18aa9b72(?) {
    return stor8.length
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_78449881(?) {
    return stor6.length
}

function owner() {
    return owner
}

function sub_9837abd6(?) {
    return stor9.length
}

function sub_b60334b8(?) {
    return stor10.length
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e90d61d1(?) {
    return stor7.length
}

function _fallback() payable {
    revert
}

function sub_1ecfef26(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor14[address(arg1)]:
        return 0
    return 1
}

function sub_2cd312ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor16[address(arg1)]:
        return 0
    return 1
}

function sub_3ac8b9b5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor15[address(arg1)]:
        return 0
    return 1
}

function sub_63c64b83(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor18[address(arg1)]:
        return 0
    return 1
}

function sub_80609502(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor17[address(arg1)]:
        return 0
    return 1
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

function sub_0a84487e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tx.origin != msg.sender:
        revert with 0, 'All Miners should be EOA!'
    call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
       value 4 * 10^16 wei
         gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if not stor17[address(msg.sender)]:
        call address(arg1) with:
           value 10^16 wei
             gas 0 wei
    else:
        call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
           value 10^16 wei
             gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if totalSupply > 320000000 * 10^18:
        revert with 0, 'IFM Finance cap exceeded'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -1900000000000000001:
        revert with 'NH{q', 17
    totalSupply += 19 * 10^17
    if balanceOf[address(msg.sender)] > -1900000000000000001:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 19 * 10^17
    emit Transfer(19 * 10^17, 0, msg.sender);
    if totalSupply > -100000000000000001:
        revert with 'NH{q', 17
    totalSupply += 10^17
    if balanceOf[57005] > -100000000000000001:
        revert with 'NH{q', 17
    balanceOf[57005] += 10^17
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  10^17,
    emit 0x0: 10^17
    emit 0xdead: 10^17
    stor9.length++
    stor9[stor9.length] = msg.sender
    stor17[address(msg.sender)] = 1
    emit 0x24077d64: address(msg.sender), stor9.length, address(arg1), Array(len=13, data='2 IFM Finance')
}

function sub_24fcc6a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tx.origin != msg.sender:
        revert with 0, 'All Miners should be EOA!'
    call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
       value 4 * 10^16 wei
         gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if not stor16[address(msg.sender)]:
        call address(arg1) with:
           value 10^16 wei
             gas 0 wei
    else:
        call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
           value 10^16 wei
             gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if totalSupply > 320000000 * 10^18:
        revert with 0, 'IFM Finance cap exceeded'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -1900000000000000001:
        revert with 'NH{q', 17
    totalSupply += 19 * 10^17
    if balanceOf[address(msg.sender)] > -1900000000000000001:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 19 * 10^17
    emit Transfer(19 * 10^17, 0, msg.sender);
    if totalSupply > -100000000000000001:
        revert with 'NH{q', 17
    totalSupply += 10^17
    if balanceOf[57005] > -100000000000000001:
        revert with 'NH{q', 17
    balanceOf[57005] += 10^17
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  10^17,
    emit 0x0: 10^17
    emit 0xdead: 10^17
    stor8.length++
    stor8[stor8.length] = msg.sender
    stor16[address(msg.sender)] = 1
    emit 0x42325a5b: address(msg.sender), stor8.length, address(arg1), Array(len=13, data='2 IFM Finance')
}

function sub_f40d4bc9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tx.origin != msg.sender:
        revert with 0, 'All Miners should be EOA!'
    call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
       value 4 * 10^16 wei
         gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if not stor18[address(msg.sender)]:
        call address(arg1) with:
           value 10^16 wei
             gas 0 wei
    else:
        call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
           value 10^16 wei
             gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if totalSupply > 320000000 * 10^18:
        revert with 0, 'IFM Finance cap exceeded'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -1900000000000000001:
        revert with 'NH{q', 17
    totalSupply += 19 * 10^17
    if balanceOf[address(msg.sender)] > -1900000000000000001:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 19 * 10^17
    emit Transfer(19 * 10^17, 0, msg.sender);
    if totalSupply > -100000000000000001:
        revert with 'NH{q', 17
    totalSupply += 10^17
    if balanceOf[57005] > -100000000000000001:
        revert with 'NH{q', 17
    balanceOf[57005] += 10^17
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  10^17,
    emit 0x0: 10^17
    emit 0xdead: 10^17
    stor10.length++
    stor10[stor10.length] = msg.sender
    stor18[address(msg.sender)] = 1
    emit 0x85fe02bf: address(msg.sender), stor10.length, address(arg1), Array(len=13, data='2 IFM Finance')
}

function sub_776a0905(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tx.origin != msg.sender:
        revert with 0, 'All Miners should be EOA!'
    call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
       value 4 * 10^16 wei
         gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if not stor14[address(msg.sender)]:
        call address(arg1) with:
           value 10^16 wei
             gas 0 wei
    else:
        call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
           value 10^16 wei
             gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if totalSupply > 320000000 * 10^18:
        revert with 0, 'IFM Finance cap exceeded'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -4750000000000000001:
        revert with 'NH{q', 17
    totalSupply += 475 * 10^16
    if balanceOf[address(msg.sender)] > -4750000000000000001:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 475 * 10^16
    emit Transfer(475 * 10^16, 0, msg.sender);
    if totalSupply > -250000000000000001:
        revert with 'NH{q', 17
    totalSupply += 25 * 10^16
    if balanceOf[57005] > -250000000000000001:
        revert with 'NH{q', 17
    balanceOf[57005] += 25 * 10^16
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  25 * 10^16,
    emit 0x0: 25 * 10^16
    emit 0xdead: 25 * 10^16
    stor6.length++
    stor6[stor6.length] = msg.sender
    stor14[address(msg.sender)] = 1
    emit 0xd272cd28: address(msg.sender), stor6.length, address(arg1), Array(len=13, data='5 IFM Finance')
}

function sub_8f092dbc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tx.origin != msg.sender:
        revert with 0, 'All Miners should be EOA!'
    call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
       value 4 * 10^16 wei
         gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if not stor15[address(msg.sender)]:
        call address(arg1) with:
           value 10^16 wei
             gas 0 wei
    else:
        call 0xf9e34e368c1b227d92fdd49f53ae6dc5c8c3f6c7 with:
           value 10^16 wei
             gas 0 wei
    if not ext_call.success:
        revert with 0, 'Not enough funds!'
    if totalSupply > 320000000 * 10^18:
        revert with 0, 'IFM Finance cap exceeded'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -4750000000000000001:
        revert with 'NH{q', 17
    totalSupply += 475 * 10^16
    if balanceOf[address(msg.sender)] > -4750000000000000001:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 475 * 10^16
    emit Transfer(475 * 10^16, 0, msg.sender);
    if totalSupply > -250000000000000001:
        revert with 'NH{q', 17
    totalSupply += 25 * 10^16
    if balanceOf[57005] > -250000000000000001:
        revert with 'NH{q', 17
    balanceOf[57005] += 25 * 10^16
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  25 * 10^16,
    emit 0x0: 25 * 10^16
    emit 0xdead: 25 * 10^16
    stor7.length++
    stor7[stor7.length] = msg.sender
    stor15[address(msg.sender)] = 1
    emit 0xadcc8234: address(msg.sender), stor7.length, address(arg1), Array(len=13, data='5 IFM Finance')
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 256000000 * 10^18 <= balanceOf[57005]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg2 < arg2 / 20:
            revert with 'NH{q', 17
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2 - (arg2 / 20):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 20)
        if balanceOf[address(arg1)] > -arg2 + (arg2 / 20) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 20)
        emit Transfer((arg2 - (arg2 / 20)), msg.sender, arg1);
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if balanceOf[address(msg.sender)] < arg2 / 20:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2 / 20
        if balanceOf[57005] > -(arg2 / 20) - 1:
            revert with 'NH{q', 17
        balanceOf[57005] += arg2 / 20
        emit Transfer((arg2 / 20), msg.sender, 57005);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IFM Token transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if 256000000 * 10^18 <= balanceOf[57005]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg3 < arg3 / 20:
            revert with 'NH{q', 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3 - (arg3 / 20):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 20)
        if balanceOf[address(arg2)] > -arg3 + (arg3 / 20) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 20)
        emit Transfer((arg3 - (arg3 / 20)), arg1, arg2);
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if balanceOf[address(arg1)] < arg3 / 20:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3 / 20
        if balanceOf[57005] > -(arg3 / 20) - 1:
            revert with 'NH{q', 17
        balanceOf[57005] += arg3 / 20
        emit Transfer((arg3 / 20), arg1, 57005);
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



}
