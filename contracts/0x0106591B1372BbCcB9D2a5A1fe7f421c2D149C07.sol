contract main {




// =====================  Runtime code  =====================


const contractBalance = eth.balance(this.address)


address _owner;
address _creatorAddress;
array of struct stor2;
array of struct stor3;
uint8 decimals;
uint256 totalSupply;
uint256 _tax;
uint256 sub_c7c00b14;
address sub_4eeb94ceAddress;
address stor13;
address _pairAddress;
uint8 inSwap; offset 160
uint128 stor15; offset 160
address _routerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor18;
mapping of uint8 stor19;
address stor20;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_3f87d204(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor19[arg1]))
}

function sub_4eeb94ce(?) {
    return sub_4eeb94ceAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return _owner
}

function sub_a2736b46(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor18[arg1]))
}

function _owner() {
    return _owner
}

function _pair() {
    return _pairAddress
}

function _creator() {
    return _creatorAddress
}

function sub_c7c00b14(?) {
    return sub_c7c00b14
}

function currentBalance() {
    return balanceOf[address(this.address)]
}

function inSwap() {
    return bool(inSwap)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _tax() {
    return _tax
}

function _router() {
    return _routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = 0
    emit OwnershipTransferred(_owner, 0);
}

function setTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _tax = arg1
}

function sub_4b7ef48e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c7c00b14 = arg1
}

function sub_08c1a2d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor19[address(arg1)]) = not bool(uint8(stor19[address(arg1)])) or Mask(248, 8, uint256(stor19[address(arg1)]))
}

function sub_0f3d9c9f(?) {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor20)
    call stor20.distribute() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_137a4052(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor18[address(arg1)]) = not bool(uint8(stor18[address(arg1)])) or Mask(248, 8, uint256(stor18[address(arg1)]))
}

function sub_c721a39a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Zero Address.'
    sub_4eeb94ceAddress = address(arg1)
    stor20 = address(arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, 'approve from the zero address'
    if not arg1:
        revert with 0, 'approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    _owner = arg1
    emit OwnershipTransferred(_owner, arg1);
}

function sub_56bb77b9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor20)
    call stor20.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aa98e163(?) {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall stor20.getBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_28f75f2a(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor20)
    call stor20.0xead0ffd4 with:
         gas gas_remaining wei
        args arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_80a12d99(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor20)
    call stor20.0xa75523e3 with:
         gas gas_remaining wei
        args arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d3516451(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor20)
    call stor20.0x33fb2208 with:
         gas gas_remaining wei
        args arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'approve from the zero address'
    if not arg1:
        revert with 0, 'approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, 'decreased allowance below zero'
    if not msg.sender:
        revert with 0, 'approve from the zero address'
    if not arg1:
        revert with 0, 'approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function name() {
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

function symbol() {
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if inSwap:
        if not msg.sender:
            revert with 0, 'transfer from the zero address'
        if not arg1:
            revert with 0, 'transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == _pairAddress:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if uint8(stor18[address(arg1)]):
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not _tax:
                    if sub_c7c00b14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not sub_c7c00b14:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] > -(0 / sub_c7c00b14) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)] + (0 / sub_c7c00b14) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += 0 / sub_c7c00b14
                    if 0 / sub_c7c00b14 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0 / sub_c7c00b14:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (0 / sub_c7c00b14) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 - (0 / sub_c7c00b14) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / sub_c7c00b14)
                    emit Transfer((arg2 - (0 / sub_c7c00b14)), msg.sender, arg1);
                else:
                    if _tax and arg2 > -1 / _tax:
                        revert with 'NH{q', 17
                    if not _tax:
                        revert with 'NH{q', 18
                    if _tax * arg2 / _tax != arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if sub_c7c00b14 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not sub_c7c00b14:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] > -(_tax * arg2 / sub_c7c00b14) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)] + (_tax * arg2 / sub_c7c00b14) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += _tax * arg2 / sub_c7c00b14
                    if _tax * arg2 / sub_c7c00b14 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < _tax * arg2 / sub_c7c00b14:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (_tax * arg2 / sub_c7c00b14) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 - (_tax * arg2 / sub_c7c00b14) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (_tax * arg2 / sub_c7c00b14)
                    emit Transfer((arg2 - (_tax * arg2 / sub_c7c00b14)), msg.sender, arg1);
        else:
            if arg1 != _pairAddress:
                if not msg.sender:
                    revert with 0, 'transfer from the zero address'
                if not arg1:
                    revert with 0, 'transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if uint8(stor19[address(msg.sender)]):
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not _tax:
                        if sub_c7c00b14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not sub_c7c00b14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(0 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (0 / sub_c7c00b14) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += 0 / sub_c7c00b14
                        if 0 / sub_c7c00b14 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0 / sub_c7c00b14:
                            revert with 'NH{q', 17
                        stor15 = 1
                        if balanceOf[address(this.address)] > 0:
                            mem[320] = this.address
                            mem[352] = stor13
                            mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[388] = balanceOf[address(this.address)]
                            idx = 0
                            s = 320
                            t = 580
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(_routerAddress)
                            call _routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            call sub_4eeb94ceAddress with:
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'Transfer error.'
                        stor15 = 0
                        if balanceOf[address(arg1)] > -arg2 + (0 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (0 / sub_c7c00b14) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / sub_c7c00b14)
                        emit Transfer((arg2 - (0 / sub_c7c00b14)), msg.sender, arg1);
                    else:
                        if _tax and arg2 > -1 / _tax:
                            revert with 'NH{q', 17
                        if not _tax:
                            revert with 'NH{q', 18
                        if _tax * arg2 / _tax != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_c7c00b14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not sub_c7c00b14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(_tax * arg2 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (_tax * arg2 / sub_c7c00b14) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += _tax * arg2 / sub_c7c00b14
                        if _tax * arg2 / sub_c7c00b14 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < _tax * arg2 / sub_c7c00b14:
                            revert with 'NH{q', 17
                        stor15 = 1
                        if balanceOf[address(this.address)] > 0:
                            mem[320] = this.address
                            mem[352] = stor13
                            mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[388] = balanceOf[address(this.address)]
                            idx = 0
                            s = 320
                            t = 580
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(_routerAddress)
                            call _routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            call sub_4eeb94ceAddress with:
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'Transfer error.'
                        stor15 = 0
                        if balanceOf[address(arg1)] > -arg2 + (_tax * arg2 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (_tax * arg2 / sub_c7c00b14) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (_tax * arg2 / sub_c7c00b14)
                        emit Transfer((arg2 - (_tax * arg2 / sub_c7c00b14)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] == -1:
        if inSwap:
            if not arg1:
                revert with 0, 'transfer from the zero address'
            if not arg2:
                revert with 0, 'transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg1 == _pairAddress:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance', 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if uint8(stor18[address(arg2)]):
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if not _tax:
                        if sub_c7c00b14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not sub_c7c00b14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(0 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (0 / sub_c7c00b14) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += 0 / sub_c7c00b14
                        if 0 / sub_c7c00b14 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0 / sub_c7c00b14:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 + (0 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + arg3 - (0 / sub_c7c00b14) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_c7c00b14)
                        emit Transfer((arg3 - (0 / sub_c7c00b14)), arg1, arg2);
                    else:
                        if _tax and arg3 > -1 / _tax:
                            revert with 'NH{q', 17
                        if not _tax:
                            revert with 'NH{q', 18
                        if _tax * arg3 / _tax != arg3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_c7c00b14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not sub_c7c00b14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(_tax * arg3 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (_tax * arg3 / sub_c7c00b14) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += _tax * arg3 / sub_c7c00b14
                        if _tax * arg3 / sub_c7c00b14 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < _tax * arg3 / sub_c7c00b14:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 + (_tax * arg3 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + arg3 - (_tax * arg3 / sub_c7c00b14) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (_tax * arg3 / sub_c7c00b14)
                        emit Transfer((arg3 - (_tax * arg3 / sub_c7c00b14)), arg1, arg2);
            else:
                if arg2 != _pairAddress:
                    if not arg1:
                        revert with 0, 'transfer from the zero address'
                    if not arg2:
                        revert with 0, 'transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance', 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if uint8(stor19[address(arg1)]):
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not _tax:
                            if sub_c7c00b14 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not sub_c7c00b14:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] > -(0 / sub_c7c00b14) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] + (0 / sub_c7c00b14) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += 0 / sub_c7c00b14
                            if 0 / sub_c7c00b14 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0 / sub_c7c00b14:
                                revert with 'NH{q', 17
                            stor15 = 1
                            if balanceOf[address(this.address)] > 0:
                                mem[320] = this.address
                                mem[352] = stor13
                                mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[388] = balanceOf[address(this.address)]
                                idx = 0
                                s = 320
                                t = 580
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(_routerAddress)
                                call _routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                call sub_4eeb94ceAddress with:
                                     gas 30000 wei
                                if not ext_call.success:
                                    revert with 0, 'Transfer error.'
                            stor15 = 0
                            if balanceOf[address(arg2)] > -arg3 + (0 / sub_c7c00b14) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 - (0 / sub_c7c00b14) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_c7c00b14)
                            emit Transfer((arg3 - (0 / sub_c7c00b14)), arg1, arg2);
                        else:
                            if _tax and arg3 > -1 / _tax:
                                revert with 'NH{q', 17
                            if not _tax:
                                revert with 'NH{q', 18
                            if _tax * arg3 / _tax != arg3:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if sub_c7c00b14 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not sub_c7c00b14:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] > -(_tax * arg3 / sub_c7c00b14) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] + (_tax * arg3 / sub_c7c00b14) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += _tax * arg3 / sub_c7c00b14
                            if _tax * arg3 / sub_c7c00b14 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < _tax * arg3 / sub_c7c00b14:
                                revert with 'NH{q', 17
                            stor15 = 1
                            if balanceOf[address(this.address)] > 0:
                                mem[320] = this.address
                                mem[352] = stor13
                                mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[388] = balanceOf[address(this.address)]
                                idx = 0
                                s = 320
                                t = 580
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(_routerAddress)
                                call _routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                call sub_4eeb94ceAddress with:
                                     gas 30000 wei
                                if not ext_call.success:
                                    revert with 0, 'Transfer error.'
                            stor15 = 0
                            if balanceOf[address(arg2)] > -arg3 + (_tax * arg3 / sub_c7c00b14) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 - (_tax * arg3 / sub_c7c00b14) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (_tax * arg3 / sub_c7c00b14)
                            emit Transfer((arg3 - (_tax * arg3 / sub_c7c00b14)), arg1, arg2);
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'Insufficient allowance.', 0
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        allowance[address(arg1)][address(msg.sender)] -= arg3
        if inSwap:
            if not arg1:
                revert with 0, 'transfer from the zero address'
            if not arg2:
                revert with 0, 'transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg1 == _pairAddress:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance', 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if uint8(stor18[address(arg2)]):
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if not _tax:
                        if sub_c7c00b14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not sub_c7c00b14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(0 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (0 / sub_c7c00b14) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += 0 / sub_c7c00b14
                        if 0 / sub_c7c00b14 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0 / sub_c7c00b14:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 + (0 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + arg3 - (0 / sub_c7c00b14) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_c7c00b14)
                        emit Transfer((arg3 - (0 / sub_c7c00b14)), arg1, arg2);
                    else:
                        if _tax and arg3 > -1 / _tax:
                            revert with 'NH{q', 17
                        if not _tax:
                            revert with 'NH{q', 18
                        if _tax * arg3 / _tax != arg3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_c7c00b14 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not sub_c7c00b14:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(_tax * arg3 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] + (_tax * arg3 / sub_c7c00b14) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += _tax * arg3 / sub_c7c00b14
                        if _tax * arg3 / sub_c7c00b14 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < _tax * arg3 / sub_c7c00b14:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 + (_tax * arg3 / sub_c7c00b14) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + arg3 - (_tax * arg3 / sub_c7c00b14) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (_tax * arg3 / sub_c7c00b14)
                        emit Transfer((arg3 - (_tax * arg3 / sub_c7c00b14)), arg1, arg2);
            else:
                if arg2 != _pairAddress:
                    if not arg1:
                        revert with 0, 'transfer from the zero address'
                    if not arg2:
                        revert with 0, 'transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance', 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if uint8(stor19[address(arg1)]):
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not _tax:
                            if sub_c7c00b14 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not sub_c7c00b14:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] > -(0 / sub_c7c00b14) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] + (0 / sub_c7c00b14) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += 0 / sub_c7c00b14
                            if 0 / sub_c7c00b14 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0 / sub_c7c00b14:
                                revert with 'NH{q', 17
                            stor15 = 1
                            if balanceOf[address(this.address)] > 0:
                                mem[384] = this.address
                                mem[416] = stor13
                                mem[448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[452] = balanceOf[address(this.address)]
                                idx = 0
                                s = 384
                                t = 644
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(_routerAddress)
                                call _routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[644 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                call sub_4eeb94ceAddress with:
                                     gas 30000 wei
                                if not ext_call.success:
                                    revert with 0, 'Transfer error.'
                            stor15 = 0
                            if balanceOf[address(arg2)] > -arg3 + (0 / sub_c7c00b14) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 - (0 / sub_c7c00b14) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (0 / sub_c7c00b14)
                            emit Transfer((arg3 - (0 / sub_c7c00b14)), arg1, arg2);
                        else:
                            if _tax and arg3 > -1 / _tax:
                                revert with 'NH{q', 17
                            if not _tax:
                                revert with 'NH{q', 18
                            if _tax * arg3 / _tax != arg3:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if sub_c7c00b14 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not sub_c7c00b14:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] > -(_tax * arg3 / sub_c7c00b14) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] + (_tax * arg3 / sub_c7c00b14) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += _tax * arg3 / sub_c7c00b14
                            if _tax * arg3 / sub_c7c00b14 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < _tax * arg3 / sub_c7c00b14:
                                revert with 'NH{q', 17
                            stor15 = 1
                            if balanceOf[address(this.address)] > 0:
                                mem[384] = this.address
                                mem[416] = stor13
                                mem[448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[452] = balanceOf[address(this.address)]
                                idx = 0
                                s = 384
                                t = 644
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(_routerAddress)
                                call _routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[644 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                call sub_4eeb94ceAddress with:
                                     gas 30000 wei
                                if not ext_call.success:
                                    revert with 0, 'Transfer error.'
                            stor15 = 0
                            if balanceOf[address(arg2)] > -arg3 + (_tax * arg3 / sub_c7c00b14) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 - (_tax * arg3 / sub_c7c00b14) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (_tax * arg3 / sub_c7c00b14)
                            emit Transfer((arg3 - (_tax * arg3 / sub_c7c00b14)), arg1, arg2);
    return 1
}



}
