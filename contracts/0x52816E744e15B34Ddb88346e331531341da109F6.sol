contract main {




// =====================  Runtime code  =====================


address owner;
uint8 decimals; offset 160
address newOwner;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor7;
uint8 stor8;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function newOwner() payable {
    return newOwner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function turnBurningOn() payable {
    require msg.sender == owner
    stor8 = 1
}

function turnBurningOff() payable {
    require msg.sender == owner
    stor8 = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() payable {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(stor7[address(arg1)]) != 1
    stor7[address(arg1)] = 1
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(stor7[address(arg1)]) == 1
    stor7[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    if not stor8:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        if stor8:
            require 0 <= totalSupply
            emit Transfer(0, msg.sender, 0);
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if bool(stor7[address(arg1)]) == 1:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            if bool(stor7[address(arg1)]) != 1:
                require 0 <= totalSupply
                emit Transfer(0, msg.sender, 0);
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if bool(stor7[address(msg.sender)]) == 1:
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                if bool(stor7[address(msg.sender)]) != 1:
                    require 0 <= totalSupply
                    emit Transfer(0, msg.sender, 0);
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require arg2 / 50 <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 - (arg2 / 50) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 50)
                if bool(stor7[address(msg.sender)]) != 1:
                    require arg2 / 50 <= totalSupply
                    totalSupply -= arg2 / 50
                    emit Transfer((arg2 / 50), msg.sender, 0);
                emit Transfer((arg2 - (arg2 / 50)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if not stor8:
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        if stor8:
            require 0 <= totalSupply
            emit Transfer(0, arg1, 0);
    else:
        if bool(stor7[address(arg2)]) == 1:
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
            if bool(stor7[address(arg2)]) != 1:
                require 0 <= totalSupply
                emit Transfer(0, arg1, 0);
        else:
            if bool(stor7[address(msg.sender)]) == 1:
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
                if bool(stor7[address(msg.sender)]) != 1:
                    require 0 <= totalSupply
                    emit Transfer(0, arg1, 0);
            else:
                require arg3 / 50 <= arg3
                require balanceOf[address(arg2)] + arg3 - (arg3 / 50) >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 50)
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer((arg3 - (arg3 / 50)), arg1, arg2);
                if bool(stor7[address(msg.sender)]) != 1:
                    require arg3 / 50 <= totalSupply
                    totalSupply -= arg3 / 50
                    emit Transfer((arg3 / 50), arg1, 0);
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _53 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _55 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        require mem[(32 * idx) + 140 len 20]
        if not stor8:
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
            if not stor8:
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_53));
            else:
                require 0 <= totalSupply
                emit Transfer(0, msg.sender, 0);
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(_55, msg.sender, address(_53));
        else:
            if bool(stor7[address(mem[(32 * idx) + 128])]) == 1:
                require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                if bool(stor7[address(mem[(32 * idx) + 128])]) == 1:
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_53));
                else:
                    require 0 <= totalSupply
                    emit Transfer(0, msg.sender, 0);
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    emit Transfer(_55, msg.sender, address(_53));
            else:
                if bool(stor7[address(msg.sender)]) == 1:
                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 4
                    balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                    if bool(stor7[address(msg.sender)]) == 1:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_53));
                    else:
                        require 0 <= totalSupply
                        emit Transfer(0, msg.sender, 0);
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Transfer(_55, msg.sender, address(_53));
                else:
                    require mem[(32 * idx) + (32 * arg1.length) + 160] / 50 <= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                    require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] - (mem[(32 * idx) + (32 * arg1.length) + 160] / 50) >= balanceOf[address(mem[(32 * idx) + 128])]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 4
                    balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] - (mem[(32 * idx) + (32 * arg1.length) + 160] / 50)
                    if bool(stor7[address(msg.sender)]) == 1:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] - (mem[(32 * idx) + (32 * arg1.length) + 160] / 50)
                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_53));
                    else:
                        require mem[(32 * idx) + (32 * arg1.length) + 160] / 50 <= totalSupply
                        totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160] / 50
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] / 50
                        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, 0);
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _55 - (_55 / 50)
                        emit Transfer((_55 - (_55 / 50)), msg.sender, address(_53));
        idx = idx + 1
        continue 
}



}
