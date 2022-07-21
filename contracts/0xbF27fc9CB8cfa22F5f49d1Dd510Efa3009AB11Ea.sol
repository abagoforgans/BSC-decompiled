contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct sub_2e69f858;
address sub_f1baef2fAddress;
uint256 sub_05f60bba;
uint256 sub_c69aa370;
uint256 day;
array of struct stor8;
array of struct stor9;
uint8 decimals;
uint256 totalSupply;
uint256 _liquidityFee;
uint256 stor13;
mapping of uint8 stor14;

function sub_05f60bba(?) payable {
    return sub_05f60bba
}

function totalSupply() payable {
    return totalSupply
}

function sub_2e69f858(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_2e69f858[arg1].field_0), sub_2e69f858[arg1].field_256, sub_2e69f858[arg1].field_512
}

function decimals() payable {
    return decimals
}

function _liquidityFee() payable {
    return _liquidityFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function day() payable {
    return day
}

function owner() payable {
    return owner
}

function sub_c69aa370(?) payable {
    return sub_c69aa370
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f1baef2f(?) payable {
    return sub_f1baef2fAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    day = arg1
}

function sub_6c9da985(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_05f60bba = arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function excludeFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
}

function setExchangePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f1baef2fAddress = arg1
}

function sub_3a06ee3b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 100 * 10^6 > -1 / arg1:
        revert with 'NH{q', 17
    if not sub_c69aa370:
        revert with 'NH{q', 18
    return (100 * 10^6 * arg1 / sub_c69aa370)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_b937f324(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 100 * 10^6 > -1 / arg1:
        revert with 'NH{q', 17
    if not sub_c69aa370:
        revert with 'NH{q', 18
    if sub_05f60bba and 100 * 10^6 * arg1 / sub_c69aa370 > -1 / sub_05f60bba:
        revert with 'NH{q', 17
    return (sub_05f60bba * 100 * 10^6 * arg1 / sub_c69aa370 / 100 * 10^6)
}

function approve(address arg1, uint256 arg2) payable {
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

function increaseAllowance(address arg1, uint256 arg2) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
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

function name() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function symbol() payable {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if sub_f1baef2fAddress == arg1:
        staticcall sub_f1baef2fAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit 0xc192bb85: ext_call.return_data[0], 0
        if not sub_2e69f858[address(msg.sender)].field_0:
            if ext_call.return_data[0] <= 0:
                if not stor14[address(msg.sender)]:
                    if arg2 and _liquidityFee > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < arg2 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                    if sub_f1baef2fAddress == arg1:
                        if arg2 * _liquidityFee / 100 > 0:
                            if balanceOf[address(this.address)] > -(arg2 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * _liquidityFee / 100
                            if sub_05f60bba > -(arg2 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            sub_05f60bba += arg2 * _liquidityFee / 100
                            emit Transfer((arg2 * _liquidityFee / 100), msg.sender, this.address);
                else:
                    if _liquidityFee:
                        stor13 = _liquidityFee
                        _liquidityFee = 0
                    if arg2 and _liquidityFee > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < arg2 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                    if sub_f1baef2fAddress == arg1:
                        if arg2 * _liquidityFee / 100 > 0:
                            if balanceOf[address(this.address)] > -(arg2 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * _liquidityFee / 100
                            if sub_05f60bba > -(arg2 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            sub_05f60bba += arg2 * _liquidityFee / 100
                            emit Transfer((arg2 * _liquidityFee / 100), msg.sender, this.address);
                    _liquidityFee = stor13
            else:
                sub_2e69f858[address(msg.sender)].field_0 = 1
                sub_2e69f858[address(msg.sender)].field_256 = ext_call.return_data[0]
                sub_2e69f858[address(msg.sender)].field_512 = block.timestamp
                if sub_c69aa370 > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                sub_c69aa370 += ext_call.return_data[0]
                if _liquidityFee:
                    stor13 = _liquidityFee
                    _liquidityFee = 0
                if arg2 and _liquidityFee > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 < arg2 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                if sub_f1baef2fAddress == arg1:
                    if arg2 * _liquidityFee / 100 > 0:
                        if balanceOf[address(this.address)] > -(arg2 * _liquidityFee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 * _liquidityFee / 100
                        if sub_05f60bba > -(arg2 * _liquidityFee / 100) - 1:
                            revert with 'NH{q', 17
                        sub_05f60bba += arg2 * _liquidityFee / 100
                        emit Transfer((arg2 * _liquidityFee / 100), msg.sender, this.address);
                _liquidityFee = stor13
        else:
            if sub_2e69f858[address(msg.sender)].field_256 >= ext_call.return_data[0]:
                if not stor14[address(msg.sender)]:
                    if arg2 and _liquidityFee > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < arg2 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                    if sub_f1baef2fAddress == arg1:
                        if arg2 * _liquidityFee / 100 > 0:
                            if balanceOf[address(this.address)] > -(arg2 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * _liquidityFee / 100
                            if sub_05f60bba > -(arg2 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            sub_05f60bba += arg2 * _liquidityFee / 100
                            emit Transfer((arg2 * _liquidityFee / 100), msg.sender, this.address);
                else:
                    if _liquidityFee:
                        stor13 = _liquidityFee
                        _liquidityFee = 0
                    if arg2 and _liquidityFee > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 < arg2 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                    if sub_f1baef2fAddress == arg1:
                        if arg2 * _liquidityFee / 100 > 0:
                            if balanceOf[address(this.address)] > -(arg2 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * _liquidityFee / 100
                            if sub_05f60bba > -(arg2 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            sub_05f60bba += arg2 * _liquidityFee / 100
                            emit Transfer((arg2 * _liquidityFee / 100), msg.sender, this.address);
                    _liquidityFee = stor13
            else:
                if ext_call.return_data[0] < sub_2e69f858[address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                if sub_2e69f858[address(msg.sender)].field_256 > -ext_call.return_data[0] + sub_2e69f858[address(msg.sender)].field_256 - 1:
                    revert with 'NH{q', 17
                sub_2e69f858[address(msg.sender)].field_256 = ext_call.return_data[0]
                sub_2e69f858[address(msg.sender)].field_512 = block.timestamp
                if sub_c69aa370 > -ext_call.return_data[0] + sub_2e69f858[address(msg.sender)].field_256 - 1:
                    revert with 'NH{q', 17
                sub_c69aa370 = sub_c69aa370 + ext_call.return_data[0] - sub_2e69f858[address(msg.sender)].field_256
                if _liquidityFee:
                    stor13 = _liquidityFee
                    _liquidityFee = 0
                if arg2 and _liquidityFee > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 < arg2 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                if sub_f1baef2fAddress == arg1:
                    if arg2 * _liquidityFee / 100 > 0:
                        if balanceOf[address(this.address)] > -(arg2 * _liquidityFee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 * _liquidityFee / 100
                        if sub_05f60bba > -(arg2 * _liquidityFee / 100) - 1:
                            revert with 'NH{q', 17
                        sub_05f60bba += arg2 * _liquidityFee / 100
                        emit Transfer((arg2 * _liquidityFee / 100), msg.sender, this.address);
                _liquidityFee = stor13
    else:
        if sub_f1baef2fAddress == msg.sender:
            staticcall sub_f1baef2fAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if bool(sub_2e69f858[address(arg1)].field_0) == 1:
                if sub_2e69f858[address(arg1)].field_256 > ext_call.return_data[0]:
                    if sub_2e69f858[address(arg1)].field_256 < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if sub_2e69f858[address(arg1)].field_256 < sub_2e69f858[address(arg1)].field_256 - ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    sub_2e69f858[address(arg1)].field_256 = ext_call.return_data[0]
                    if not sub_2e69f858[address(arg1)].field_256:
                        sub_2e69f858[address(arg1)].field_0 = 0
                    if sub_2e69f858[address(arg1)].field_512 > -day - 1:
                        revert with 'NH{q', 17
                    if sub_2e69f858[address(arg1)].field_512 + day <= block.timestamp:
                        if sub_2e69f858[address(arg1)].field_256 - ext_call.return_data[0] and 100 * 10^6 > -1 / sub_2e69f858[address(arg1)].field_256 - ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not sub_c69aa370:
                            revert with 'NH{q', 18
                        if sub_05f60bba and (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 > -1 / sub_05f60bba:
                            revert with 'NH{q', 17
                        if sub_c69aa370 < sub_2e69f858[address(arg1)].field_256 - ext_call.return_data[0]:
                            revert with 0, 'lpTotalAmount too little'
                        sub_c69aa370 = sub_c69aa370 - sub_2e69f858[address(arg1)].field_256 + ext_call.return_data[0]
                        if sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6 > 0:
                            if balanceOf[address(this.address)] >= sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6:
                                if sub_05f60bba >= sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6:
                                    if balanceOf[address(this.address)] < sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] -= sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6
                                    if balanceOf[address(arg1)] > -(sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6
                                    if sub_05f60bba < sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6:
                                        revert with 'NH{q', 17
                                    sub_05f60bba -= sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6
                                    emit Transfer((sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg1)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6), this.address, arg1);
        if _liquidityFee:
            stor13 = _liquidityFee
            _liquidityFee = 0
        if arg2 and _liquidityFee > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 < arg2 * _liquidityFee / 100:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
        emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
        if sub_f1baef2fAddress == arg1:
            if arg2 * _liquidityFee / 100 > 0:
                if balanceOf[address(this.address)] > -(arg2 * _liquidityFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] += arg2 * _liquidityFee / 100
                if sub_05f60bba > -(arg2 * _liquidityFee / 100) - 1:
                    revert with 'NH{q', 17
                sub_05f60bba += arg2 * _liquidityFee / 100
                emit Transfer((arg2 * _liquidityFee / 100), msg.sender, this.address);
        _liquidityFee = stor13
    if sub_f1baef2fAddress == arg1:
        staticcall sub_f1baef2fAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit 0xc192bb85: 0, ext_call.return_data[0]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if sub_f1baef2fAddress == arg2:
        staticcall sub_f1baef2fAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit 0xc192bb85: ext_call.return_data[0], 0
        if not sub_2e69f858[address(arg1)].field_0:
            if ext_call.return_data[0] <= 0:
                if not stor14[address(arg1)]:
                    if arg3 and _liquidityFee > -1 / arg3:
                        revert with 'NH{q', 17
                    if arg3 < arg3 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if sub_f1baef2fAddress == arg2:
                        if arg3 * _liquidityFee / 100 > 0:
                            if balanceOf[address(this.address)] > -(arg3 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * _liquidityFee / 100
                            if sub_05f60bba > -(arg3 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            sub_05f60bba += arg3 * _liquidityFee / 100
                            emit Transfer((arg3 * _liquidityFee / 100), arg1, this.address);
                else:
                    if _liquidityFee:
                        stor13 = _liquidityFee
                        _liquidityFee = 0
                    if arg3 and _liquidityFee > -1 / arg3:
                        revert with 'NH{q', 17
                    if arg3 < arg3 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if sub_f1baef2fAddress == arg2:
                        if arg3 * _liquidityFee / 100 > 0:
                            if balanceOf[address(this.address)] > -(arg3 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * _liquidityFee / 100
                            if sub_05f60bba > -(arg3 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            sub_05f60bba += arg3 * _liquidityFee / 100
                            emit Transfer((arg3 * _liquidityFee / 100), arg1, this.address);
                    _liquidityFee = stor13
            else:
                sub_2e69f858[address(arg1)].field_0 = 1
                sub_2e69f858[address(arg1)].field_256 = ext_call.return_data[0]
                sub_2e69f858[address(arg1)].field_512 = block.timestamp
                if sub_c69aa370 > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                sub_c69aa370 += ext_call.return_data[0]
                if _liquidityFee:
                    stor13 = _liquidityFee
                    _liquidityFee = 0
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 'NH{q', 17
                if arg3 < arg3 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                if sub_f1baef2fAddress == arg2:
                    if arg3 * _liquidityFee / 100 > 0:
                        if balanceOf[address(this.address)] > -(arg3 * _liquidityFee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * _liquidityFee / 100
                        if sub_05f60bba > -(arg3 * _liquidityFee / 100) - 1:
                            revert with 'NH{q', 17
                        sub_05f60bba += arg3 * _liquidityFee / 100
                        emit Transfer((arg3 * _liquidityFee / 100), arg1, this.address);
                _liquidityFee = stor13
        else:
            if sub_2e69f858[address(arg1)].field_256 >= ext_call.return_data[0]:
                if not stor14[address(arg1)]:
                    if arg3 and _liquidityFee > -1 / arg3:
                        revert with 'NH{q', 17
                    if arg3 < arg3 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if sub_f1baef2fAddress == arg2:
                        if arg3 * _liquidityFee / 100 > 0:
                            if balanceOf[address(this.address)] > -(arg3 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * _liquidityFee / 100
                            if sub_05f60bba > -(arg3 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            sub_05f60bba += arg3 * _liquidityFee / 100
                            emit Transfer((arg3 * _liquidityFee / 100), arg1, this.address);
                else:
                    if _liquidityFee:
                        stor13 = _liquidityFee
                        _liquidityFee = 0
                    if arg3 and _liquidityFee > -1 / arg3:
                        revert with 'NH{q', 17
                    if arg3 < arg3 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if sub_f1baef2fAddress == arg2:
                        if arg3 * _liquidityFee / 100 > 0:
                            if balanceOf[address(this.address)] > -(arg3 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * _liquidityFee / 100
                            if sub_05f60bba > -(arg3 * _liquidityFee / 100) - 1:
                                revert with 'NH{q', 17
                            sub_05f60bba += arg3 * _liquidityFee / 100
                            emit Transfer((arg3 * _liquidityFee / 100), arg1, this.address);
                    _liquidityFee = stor13
            else:
                if ext_call.return_data[0] < sub_2e69f858[address(arg1)].field_256:
                    revert with 'NH{q', 17
                if sub_2e69f858[address(arg1)].field_256 > -ext_call.return_data[0] + sub_2e69f858[address(arg1)].field_256 - 1:
                    revert with 'NH{q', 17
                sub_2e69f858[address(arg1)].field_256 = ext_call.return_data[0]
                sub_2e69f858[address(arg1)].field_512 = block.timestamp
                if sub_c69aa370 > -ext_call.return_data[0] + sub_2e69f858[address(arg1)].field_256 - 1:
                    revert with 'NH{q', 17
                sub_c69aa370 = sub_c69aa370 + ext_call.return_data[0] - sub_2e69f858[address(arg1)].field_256
                if _liquidityFee:
                    stor13 = _liquidityFee
                    _liquidityFee = 0
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 'NH{q', 17
                if arg3 < arg3 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                if sub_f1baef2fAddress == arg2:
                    if arg3 * _liquidityFee / 100 > 0:
                        if balanceOf[address(this.address)] > -(arg3 * _liquidityFee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * _liquidityFee / 100
                        if sub_05f60bba > -(arg3 * _liquidityFee / 100) - 1:
                            revert with 'NH{q', 17
                        sub_05f60bba += arg3 * _liquidityFee / 100
                        emit Transfer((arg3 * _liquidityFee / 100), arg1, this.address);
                _liquidityFee = stor13
        if sub_f1baef2fAddress == arg2:
            staticcall sub_f1baef2fAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            emit 0xc192bb85: 0, ext_call.return_data[0]
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
    else:
        if sub_f1baef2fAddress != arg1:
            if _liquidityFee:
                stor13 = _liquidityFee
                _liquidityFee = 0
            if arg3 and _liquidityFee > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 < arg3 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
            emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
            if sub_f1baef2fAddress == arg2:
                if arg3 * _liquidityFee / 100 > 0:
                    if balanceOf[address(this.address)] > -(arg3 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg3 * _liquidityFee / 100
                    if sub_05f60bba > -(arg3 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    sub_05f60bba += arg3 * _liquidityFee / 100
                    emit Transfer((arg3 * _liquidityFee / 100), arg1, this.address);
            _liquidityFee = stor13
            if sub_f1baef2fAddress != arg2:
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                staticcall sub_f1baef2fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                emit 0xc192bb85: 0, ext_call.return_data[0]
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
        else:
            staticcall sub_f1baef2fAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if bool(sub_2e69f858[address(arg2)].field_0) == 1:
                if sub_2e69f858[address(arg2)].field_256 > ext_call.return_data[0]:
                    if sub_2e69f858[address(arg2)].field_256 < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if sub_2e69f858[address(arg2)].field_256 < sub_2e69f858[address(arg2)].field_256 - ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    sub_2e69f858[address(arg2)].field_256 = ext_call.return_data[0]
                    if not sub_2e69f858[address(arg2)].field_256:
                        sub_2e69f858[address(arg2)].field_0 = 0
                    if sub_2e69f858[address(arg2)].field_512 > -day - 1:
                        revert with 'NH{q', 17
                    if sub_2e69f858[address(arg2)].field_512 + day <= block.timestamp:
                        if sub_2e69f858[address(arg2)].field_256 - ext_call.return_data[0] and 100 * 10^6 > -1 / sub_2e69f858[address(arg2)].field_256 - ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not sub_c69aa370:
                            revert with 'NH{q', 18
                        if sub_05f60bba and (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 > -1 / sub_05f60bba:
                            revert with 'NH{q', 17
                        if sub_c69aa370 < sub_2e69f858[address(arg2)].field_256 - ext_call.return_data[0]:
                            revert with 0, 'lpTotalAmount too little'
                        sub_c69aa370 = sub_c69aa370 - sub_2e69f858[address(arg2)].field_256 + ext_call.return_data[0]
                        if sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6 > 0:
                            if balanceOf[address(this.address)] >= sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6:
                                if sub_05f60bba >= sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6:
                                    if balanceOf[address(this.address)] < sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] -= sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6
                                    if balanceOf[address(arg2)] > -(sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6
                                    if sub_05f60bba < sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6:
                                        revert with 'NH{q', 17
                                    sub_05f60bba -= sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6
                                    emit Transfer((sub_05f60bba * (100 * 10^6 * sub_2e69f858[address(arg2)].field_256) - (100 * 10^6 * ext_call.return_data[0]) / sub_c69aa370 / 100 * 10^6), this.address, arg2);
            if _liquidityFee:
                stor13 = _liquidityFee
                _liquidityFee = 0
            if arg3 and _liquidityFee > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 < arg3 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
            emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
            if sub_f1baef2fAddress == arg2:
                if arg3 * _liquidityFee / 100 > 0:
                    if balanceOf[address(this.address)] > -(arg3 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg3 * _liquidityFee / 100
                    if sub_05f60bba > -(arg3 * _liquidityFee / 100) - 1:
                        revert with 'NH{q', 17
                    sub_05f60bba += arg3 * _liquidityFee / 100
                    emit Transfer((arg3 * _liquidityFee / 100), arg1, this.address);
            _liquidityFee = stor13
            if sub_f1baef2fAddress == arg2:
                staticcall sub_f1baef2fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                emit 0xc192bb85: 0, ext_call.return_data[0]
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
