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
uint256 _liquidityFee;
uint256 _buyBackFee;
uint256 _marketingFee;
uint256 _fee;
address _marketingWalletAddress;
uint8 stor15; offset 160
uint128 stor15; offset 160
address sub_b768d6cdAddress;
uint8 stor17;
array of struct stor18;
address stor19;
address stor19; offset 8

function sub_09afb3ce(?) payable {
    return bool(uint8(stor15.field_160))
}

function _buyBackFee() payable {
    return _buyBackFee
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

function owner() payable {
    return owner
}

function _marketingWallet() payable {
    return _marketingWalletAddress
}

function sub_b768d6cd(?) payable {
    return sub_b768d6cdAddress
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

function setMarketingWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingWalletAddress = arg1
}

function setSwapEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor15.field_160) = Mask(96, 0, arg1)
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
            if not address(stor19.field_8):
                revert with 0, 'IERC20: approve to the zero address'
            allowance[address(this.address)][address(stor19.field_0)] = arg2
            emit Approval(arg2, this.address, address(stor19.field_8));
            balanceOf[address(this.address)] = arg2
            mem[180] = this.address
            staticcall address(stor19.field_8).0xad5c4648 with:
                    gas gas_remaining wei
            mem[244] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[212] = ext_call.return_data[12 len 20]
            stor17 = 1
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
            require ext_code.size(address(stor19.field_8))
            call address(stor19.field_8).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor17 = 0
        else:
            if stor17:
                staticcall address(stor19.field_8).factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 152] = this.address
                mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                            if stor17:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                staticcall address(stor19.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                staticcall address(stor19.field_8).0xad5c4648 with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                stor18.length++
                                stor18[stor18.length].field_0 = arg1
                                stor18[stor18.length].field_256 = arg2
                                if arg2 < 0:
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
                                staticcall address(stor19.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                staticcall address(stor19.field_8).0xad5c4648 with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                stor18.length++
                                stor18[stor18.length].field_0 = arg1
                                stor18[stor18.length].field_256 = arg2
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                    if stor17:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                        stor18.length++
                        stor18[stor18.length].field_0 = arg1
                        stor18[stor18.length].field_256 = arg2
                        if arg2 < 0:
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                        stor18.length++
                        stor18[stor18.length].field_0 = arg1
                        stor18[stor18.length].field_256 = arg2
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
                while idx < stor18.length:
                    mem[0] = stor18[idx].field_0
                    mem[32] = 3
                    _722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_722] = 26
                    mem[_722 + 32] = 'SafeMath: division by zero'
                    if idx >= stor18.length:
                        revert with 'NH{q', 50
                    mem[0] = stor18[idx].field_0
                    mem[32] = 3
                    balanceOf[stor18[idx].field_0] = balanceOf[stor18[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor18.length = 0
                mem[0] = 18
                idx = 0
                while 2 * stor18.length > idx:
                    stor18[idx].field_0 = 0
                    stor18[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                staticcall address(stor19.field_8).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7213 = mem[_7207]
                require mem[_7207] == mem[_7207 + 12 len 20]
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7237 = mem[_7231]
                require mem[_7231] == mem[_7231 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7237)
                staticcall address(_7213).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7237)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7255] == mem[_7255 + 12 len 20]
                if arg1 != mem[_7255 + 12 len 20]:
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7321 = mem[_7291]
                    require mem[_7291] == mem[_7291 + 12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7357 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7387 = mem[_7357]
                    require mem[_7357] == mem[_7357 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7387)
                    staticcall address(_7321).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7387)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7537 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7567 = mem[_7537]
                    require mem[_7537] == mem[_7537 + 12 len 20]
                    if mem[_7537 + 12 len 20] != msg.sender:
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
                                _7975 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7975 + 32 len mem[_7975]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                        if msg.sender == address(_7567):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                                _8005 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_8005 + 32 len mem[_8005]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                                _7393 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7393 + 32 len mem[_7393]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7315 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7333 = mem[_7315]
                        require mem[_7315] == mem[_7315 + 12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7396 = mem[_7381]
                        require mem[_7381] == mem[_7381 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7396)
                        staticcall address(_7333).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7396)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7561 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7588 = mem[_7561]
                        require mem[_7561] == mem[_7561 + 12 len 20]
                        if mem[_7561 + 12 len 20] != msg.sender:
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
                                    _8009 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8009 + 32 len mem[_8009]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                            if msg.sender == address(_7588):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                                    _8048 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8048 + 32 len mem[_8048]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                staticcall address(stor19.field_8).factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 152] = this.address
                mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                            if stor17:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                staticcall address(stor19.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                staticcall address(stor19.field_8).0xad5c4648 with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                stor18.length++
                                stor18[stor18.length].field_0 = arg1
                                stor18[stor18.length].field_256 = arg2
                                if arg2 < 0:
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
                                staticcall address(stor19.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                staticcall address(stor19.field_8).0xad5c4648 with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                stor18.length++
                                stor18[stor18.length].field_0 = arg1
                                stor18[stor18.length].field_256 = arg2
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                    if stor17:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                        stor18.length++
                        stor18[stor18.length].field_0 = arg1
                        stor18[stor18.length].field_256 = arg2
                        if arg2 < 0:
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                        stor18.length++
                        stor18[stor18.length].field_0 = arg1
                        stor18[stor18.length].field_256 = arg2
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
                while idx < stor18.length:
                    mem[0] = stor18[idx].field_0
                    mem[32] = 3
                    _724 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_724] = 26
                    mem[_724 + 32] = 'SafeMath: division by zero'
                    if idx >= stor18.length:
                        revert with 'NH{q', 50
                    mem[0] = stor18[idx].field_0
                    mem[32] = 3
                    balanceOf[stor18[idx].field_0] = balanceOf[stor18[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor18.length = 0
                mem[0] = 18
                idx = 0
                while 2 * stor18.length > idx:
                    stor18[idx].field_0 = 0
                    stor18[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                staticcall address(stor19.field_8).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7214 = mem[_7208]
                require mem[_7208] == mem[_7208 + 12 len 20]
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7238 = mem[_7232]
                require mem[_7232] == mem[_7232 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7238)
                staticcall address(_7214).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7238)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7256] == mem[_7256 + 12 len 20]
                if arg1 != mem[_7256 + 12 len 20]:
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7323 = mem[_7295]
                    require mem[_7295] == mem[_7295 + 12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7388 = mem[_7361]
                    require mem[_7361] == mem[_7361 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7388)
                    staticcall address(_7323).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7388)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7570 = mem[_7541]
                    require mem[_7541] == mem[_7541 + 12 len 20]
                    if mem[_7541 + 12 len 20] != msg.sender:
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
                                _7980 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7980 + 32 len mem[_7980]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                        if msg.sender == address(_7570):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                                _8012 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_8012 + 32 len mem[_8012]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                                _7397 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7397 + 32 len mem[_7397]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7316 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7334 = mem[_7316]
                        require mem[_7316] == mem[_7316 + 12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7400 = mem[_7382]
                        require mem[_7382] == mem[_7382 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7400)
                        staticcall address(_7334).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7400)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7562 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7592 = mem[_7562]
                        require mem[_7562] == mem[_7562 + 12 len 20]
                        if mem[_7562 + 12 len 20] != msg.sender:
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
                                    _8016 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8016 + 32 len mem[_8016]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                            if msg.sender == address(_7592):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                                    _8052 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8052 + 32 len mem[_8052]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
            if stor17:
                staticcall address(stor19.field_8).factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 152] = this.address
                mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                            if stor17:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                staticcall address(stor19.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                staticcall address(stor19.field_8).0xad5c4648 with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                stor18.length++
                                stor18[stor18.length].field_0 = arg1
                                stor18[stor18.length].field_256 = arg2
                                if arg2 < 0:
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
                                staticcall address(stor19.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                staticcall address(stor19.field_8).0xad5c4648 with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                stor18.length++
                                stor18[stor18.length].field_0 = arg1
                                stor18[stor18.length].field_256 = arg2
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                    if stor17:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                        stor18.length++
                        stor18[stor18.length].field_0 = arg1
                        stor18[stor18.length].field_256 = arg2
                        if arg2 < 0:
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                        stor18.length++
                        stor18[stor18.length].field_0 = arg1
                        stor18[stor18.length].field_256 = arg2
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
                while idx < stor18.length:
                    mem[0] = stor18[idx].field_0
                    mem[32] = 3
                    _725 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_725] = 26
                    mem[_725 + 32] = 'SafeMath: division by zero'
                    if idx >= stor18.length:
                        revert with 'NH{q', 50
                    mem[0] = stor18[idx].field_0
                    mem[32] = 3
                    balanceOf[stor18[idx].field_0] = balanceOf[stor18[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor18.length = 0
                mem[0] = 18
                idx = 0
                while 2 * stor18.length > idx:
                    stor18[idx].field_0 = 0
                    stor18[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                staticcall address(stor19.field_8).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7209 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7215 = mem[_7209]
                require mem[_7209] == mem[_7209 + 12 len 20]
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7239 = mem[_7233]
                require mem[_7233] == mem[_7233 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7239)
                staticcall address(_7215).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7239)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7257] == mem[_7257 + 12 len 20]
                if arg1 != mem[_7257 + 12 len 20]:
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7299 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7325 = mem[_7299]
                    require mem[_7299] == mem[_7299 + 12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7365 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7389 = mem[_7365]
                    require mem[_7365] == mem[_7365 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7389)
                    staticcall address(_7325).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7389)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7545 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7573 = mem[_7545]
                    require mem[_7545] == mem[_7545 + 12 len 20]
                    if mem[_7545 + 12 len 20] != msg.sender:
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
                                _7985 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7985 + 32 len mem[_7985]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                        if msg.sender == address(_7573):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                                _8019 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_8019 + 32 len mem[_8019]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                                _7401 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7401 + 32 len mem[_7401]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7335 = mem[_7317]
                        require mem[_7317] == mem[_7317 + 12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7383 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7404 = mem[_7383]
                        require mem[_7383] == mem[_7383 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7404)
                        staticcall address(_7335).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7404)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7563 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7596 = mem[_7563]
                        require mem[_7563] == mem[_7563 + 12 len 20]
                        if mem[_7563 + 12 len 20] != msg.sender:
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
                                    _8023 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8023 + 32 len mem[_8023]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                            if msg.sender == address(_7596):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                                    _8056 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8056 + 32 len mem[_8056]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                staticcall address(stor19.field_8).factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 152] = this.address
                mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                            if stor17:
                                if arg2 < 0:
                                    revert with 'NH{q', 17
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
                                staticcall address(stor19.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                staticcall address(stor19.field_8).0xad5c4648 with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                stor18.length++
                                stor18[stor18.length].field_0 = arg1
                                stor18[stor18.length].field_256 = arg2
                                if arg2 < 0:
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
                                staticcall address(stor19.field_8).factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                staticcall address(stor19.field_8).0xad5c4648 with:
                                        gas gas_remaining wei
                                       args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                stor18.length++
                                stor18[stor18.length].field_0 = arg1
                                stor18[stor18.length].field_256 = arg2
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                    if stor17:
                        if arg2 < 0:
                            revert with 'NH{q', 17
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                        stor18.length++
                        stor18[stor18.length].field_0 = arg1
                        stor18[stor18.length].field_256 = arg2
                        if arg2 < 0:
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(15 * ceil32(return_data.size)) + 268] = this.address
                        mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                        stor18.length++
                        stor18[stor18.length].field_0 = arg1
                        stor18[stor18.length].field_256 = arg2
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
                while idx < stor18.length:
                    mem[0] = stor18[idx].field_0
                    mem[32] = 3
                    _727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_727] = 26
                    mem[_727 + 32] = 'SafeMath: division by zero'
                    if idx >= stor18.length:
                        revert with 'NH{q', 50
                    mem[0] = stor18[idx].field_0
                    mem[32] = 3
                    balanceOf[stor18[idx].field_0] = balanceOf[stor18[idx].field_0] / 100
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                stor18.length = 0
                mem[0] = 18
                idx = 0
                while 2 * stor18.length > idx:
                    stor18[idx].field_0 = 0
                    stor18[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                staticcall address(stor19.field_8).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7210 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7216 = mem[_7210]
                require mem[_7210] == mem[_7210 + 12 len 20]
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7240 = mem[_7234]
                require mem[_7234] == mem[_7234 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_7240)
                staticcall address(_7216).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_7240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7258] == mem[_7258 + 12 len 20]
                if arg1 != mem[_7258 + 12 len 20]:
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7327 = mem[_7303]
                    require mem[_7303] == mem[_7303 + 12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7390 = mem[_7369]
                    require mem[_7369] == mem[_7369 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7390)
                    staticcall address(_7327).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7390)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7576 = mem[_7549]
                    require mem[_7549] == mem[_7549 + 12 len 20]
                    if mem[_7549 + 12 len 20] != msg.sender:
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
                                _7990 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7990 + 32 len mem[_7990]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                        if msg.sender == address(_7576):
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                                _8026 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_8026 + 32 len mem[_8026]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                                _7405 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if sha3(mem[_7405 + 32 len mem[_7405]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
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
                                            if stor17:
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                    staticcall address(stor19.field_8).factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(this.address), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != arg1:
                                                        stor18.length++
                                                        stor18[stor18.length].field_0 = arg1
                                                        stor18[stor18.length].field_256 = arg2
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7318 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7336 = mem[_7318]
                        require mem[_7318] == mem[_7318 + 12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7384 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7408 = mem[_7384]
                        require mem[_7384] == mem[_7384 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7408)
                        staticcall address(_7336).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7408)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7600 = mem[_7564]
                        require mem[_7564] == mem[_7564 + 12 len 20]
                        if mem[_7564 + 12 len 20] != msg.sender:
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
                                    _8030 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8030 + 32 len mem[_8030]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                            if msg.sender == address(_7600):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                                    _8060 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8060 + 32 len mem[_8060]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                if not address(stor19.field_8):
                    revert with 0, 'IERC20: approve to the zero address'
                allowance[address(this.address)][address(stor19.field_0)] = arg2
                emit Approval(arg2, this.address, address(stor19.field_8));
                balanceOf[address(this.address)] = arg2
                mem[180] = this.address
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                mem[244] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[212] = ext_call.return_data[12 len 20]
                stor17 = 1
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
                require ext_code.size(address(stor19.field_8))
                call address(stor19.field_8).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor17 = 0
            else:
                if stor17:
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    mem[148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 152] = this.address
                    mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                                if stor17:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    staticcall address(stor19.field_8).factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                            gas gas_remaining wei
                                           args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                    mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                    stor18.length++
                                    stor18[stor18.length].field_0 = arg1
                                    stor18[stor18.length].field_256 = arg2
                                    if arg2 < 0:
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
                                    staticcall address(stor19.field_8).factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                            gas gas_remaining wei
                                           args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                    mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                    stor18.length++
                                    stor18[stor18.length].field_0 = arg1
                                    stor18[stor18.length].field_256 = arg2
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                        if stor17:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            staticcall address(stor19.field_8).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            staticcall address(stor19.field_8).0xad5c4648 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(15 * ceil32(return_data.size)) + 268] = this.address
                            mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                            stor18.length++
                            stor18[stor18.length].field_0 = arg1
                            stor18[stor18.length].field_256 = arg2
                            if arg2 < 0:
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
                            staticcall address(stor19.field_8).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            staticcall address(stor19.field_8).0xad5c4648 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(15 * ceil32(return_data.size)) + 268] = this.address
                            mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                            stor18.length++
                            stor18[stor18.length].field_0 = arg1
                            stor18[stor18.length].field_256 = arg2
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
                    while idx < stor18.length:
                        mem[0] = stor18[idx].field_0
                        mem[32] = 3
                        _728 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_728] = 26
                        mem[_728 + 32] = 'SafeMath: division by zero'
                        if idx >= stor18.length:
                            revert with 'NH{q', 50
                        mem[0] = stor18[idx].field_0
                        mem[32] = 3
                        balanceOf[stor18[idx].field_0] = balanceOf[stor18[idx].field_0] / 100
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor18.length = 0
                    mem[0] = 18
                    idx = 0
                    while 2 * stor18.length > idx:
                        stor18[idx].field_0 = 0
                        stor18[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7211 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7217 = mem[_7211]
                    require mem[_7211] == mem[_7211 + 12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7235 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7241 = mem[_7235]
                    require mem[_7235] == mem[_7235 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7241)
                    staticcall address(_7217).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7241)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7259] == mem[_7259 + 12 len 20]
                    if arg1 != mem[_7259 + 12 len 20]:
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7329 = mem[_7307]
                        require mem[_7307] == mem[_7307 + 12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7373 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7391 = mem[_7373]
                        require mem[_7373] == mem[_7373 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7391)
                        staticcall address(_7329).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7391)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7553 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7579 = mem[_7553]
                        require mem[_7553] == mem[_7553 + 12 len 20]
                        if mem[_7553 + 12 len 20] != msg.sender:
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
                                    _7995 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7995 + 32 len mem[_7995]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                            if msg.sender == address(_7579):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                                    _8033 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8033 + 32 len mem[_8033]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                                    _7409 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7409 + 32 len mem[_7409]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                            staticcall address(stor19.field_8).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7337 = mem[_7319]
                            require mem[_7319] == mem[_7319 + 12 len 20]
                            staticcall address(stor19.field_8).0xad5c4648 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7412 = mem[_7385]
                            require mem[_7385] == mem[_7385 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(_7412)
                            staticcall address(_7337).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_7412)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7604 = mem[_7565]
                            require mem[_7565] == mem[_7565 + 12 len 20]
                            if mem[_7565 + 12 len 20] != msg.sender:
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
                                        _8037 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_8037 + 32 len mem[_8037]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
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
                                                if msg.sender == address(_7604):
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor17:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                            staticcall address(stor19.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(stor19.field_8).0xad5c4648 with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor18.length++
                                                                stor18[stor18.length].field_0 = arg1
                                                                stor18[stor18.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -1:
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
                                                            staticcall address(stor19.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(stor19.field_8).0xad5c4648 with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor18.length++
                                                                stor18[stor18.length].field_0 = arg1
                                                                stor18[stor18.length].field_256 = arg2
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
                                        _8064 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_8064 + 32 len mem[_8064]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
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
                                                    if stor17:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                            staticcall address(stor19.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(stor19.field_8).0xad5c4648 with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor18.length++
                                                                stor18[stor18.length].field_0 = arg1
                                                                stor18[stor18.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -1:
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
                                                            staticcall address(stor19.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(stor19.field_8).0xad5c4648 with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor18.length++
                                                                stor18[stor18.length].field_0 = arg1
                                                                stor18[stor18.length].field_256 = arg2
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
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    mem[148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 152] = this.address
                    mem[(2 * ceil32(return_data.size)) + 184] = address(ext_call.return_data[0])
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                                if stor17:
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
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
                                    staticcall address(stor19.field_8).factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                            gas gas_remaining wei
                                           args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                    mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                    stor18.length++
                                    stor18[stor18.length].field_0 = arg1
                                    stor18[stor18.length].field_256 = arg2
                                    if arg2 < 0:
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
                                    staticcall address(stor19.field_8).factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    staticcall address(stor19.field_8).0xad5c4648 with:
                                            gas gas_remaining wei
                                           args mem[(10 * ceil32(return_data.size)) + 268 len 16 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(12 * ceil32(return_data.size)) + 268] = this.address
                                    mem[(12 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                                    stor18.length++
                                    stor18[stor18.length].field_0 = arg1
                                    stor18[stor18.length].field_256 = arg2
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
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
                        if stor17:
                            if arg2 < 0:
                                revert with 'NH{q', 17
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
                            staticcall address(stor19.field_8).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            staticcall address(stor19.field_8).0xad5c4648 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(15 * ceil32(return_data.size)) + 268] = this.address
                            mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                            stor18.length++
                            stor18[stor18.length].field_0 = arg1
                            stor18[stor18.length].field_256 = arg2
                            if arg2 < 0:
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
                            staticcall address(stor19.field_8).factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            staticcall address(stor19.field_8).0xad5c4648 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(15 * ceil32(return_data.size)) + 268] = this.address
                            mem[(15 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
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
                            stor18.length++
                            stor18[stor18.length].field_0 = arg1
                            stor18[stor18.length].field_256 = arg2
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
                    while idx < stor18.length:
                        mem[0] = stor18[idx].field_0
                        mem[32] = 3
                        _731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_731] = 26
                        mem[_731 + 32] = 'SafeMath: division by zero'
                        if idx >= stor18.length:
                            revert with 'NH{q', 50
                        mem[0] = stor18[idx].field_0
                        mem[32] = 3
                        balanceOf[stor18[idx].field_0] = balanceOf[stor18[idx].field_0] / 100
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    stor18.length = 0
                    mem[0] = 18
                    idx = 0
                    while 2 * stor18.length > idx:
                        stor18[idx].field_0 = 0
                        stor18[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    staticcall address(stor19.field_8).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7212 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7218 = mem[_7212]
                    require mem[_7212] == mem[_7212 + 12 len 20]
                    staticcall address(stor19.field_8).0xad5c4648 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7236 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7242 = mem[_7236]
                    require mem[_7236] == mem[_7236 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_7242)
                    staticcall address(_7218).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_7242)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7260] == mem[_7260 + 12 len 20]
                    if arg1 != mem[_7260 + 12 len 20]:
                        staticcall address(stor19.field_8).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7311 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7331 = mem[_7311]
                        require mem[_7311] == mem[_7311 + 12 len 20]
                        staticcall address(stor19.field_8).0xad5c4648 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7392 = mem[_7377]
                        require mem[_7377] == mem[_7377 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_7392)
                        staticcall address(_7331).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_7392)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7557 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7582 = mem[_7557]
                        require mem[_7557] == mem[_7557 + 12 len 20]
                        if mem[_7557 + 12 len 20] != msg.sender:
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
                                    _8000 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8000 + 32 len mem[_8000]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                            if msg.sender == address(_7582):
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                                    _8040 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_8040 + 32 len mem[_8040]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                                    _7413 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if sha3(mem[_7413 + 32 len mem[_7413]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
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
                                                if stor17:
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                        staticcall address(stor19.field_8).factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(stor19.field_8).0xad5c4648 with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(this.address), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != arg1:
                                                            stor18.length++
                                                            stor18[stor18.length].field_0 = arg1
                                                            stor18[stor18.length].field_256 = arg2
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
                            staticcall address(stor19.field_8).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7338 = mem[_7320]
                            require mem[_7320] == mem[_7320 + 12 len 20]
                            staticcall address(stor19.field_8).0xad5c4648 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7416 = mem[_7386]
                            require mem[_7386] == mem[_7386 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(_7416)
                            staticcall address(_7338).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_7416)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7566 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7608 = mem[_7566]
                            require mem[_7566] == mem[_7566 + 12 len 20]
                            if mem[_7566 + 12 len 20] != msg.sender:
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
                                        _8044 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_8044 + 32 len mem[_8044]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
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
                                                if msg.sender == address(_7608):
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor17:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                            staticcall address(stor19.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(stor19.field_8).0xad5c4648 with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor18.length++
                                                                stor18[stor18.length].field_0 = arg1
                                                                stor18[stor18.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -1:
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
                                                            staticcall address(stor19.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(stor19.field_8).0xad5c4648 with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor18.length++
                                                                stor18[stor18.length].field_0 = arg1
                                                                stor18[stor18.length].field_256 = arg2
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
                                        _8068 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if sha3(mem[_8068 + 32 len mem[_8068]]) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
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
                                                    if stor17:
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
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
                                                            staticcall address(stor19.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(stor19.field_8).0xad5c4648 with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor18.length++
                                                                stor18[stor18.length].field_0 = arg1
                                                                stor18[stor18.length].field_256 = arg2
                                                            if arg2 < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[0] > -1:
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
                                                            staticcall address(stor19.field_8).factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(stor19.field_8).0xad5c4648 with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] != arg1:
                                                                stor18.length++
                                                                stor18[stor18.length].field_0 = arg1
                                                                stor18[stor18.length].field_256 = arg2
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
