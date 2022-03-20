contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 basePercent;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function basePercent() {
    return basePercent
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
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

function findOnePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 + basePercent >= arg1
    require 1 <= arg1 + basePercent
    require basePercent
    if not arg1 + basePercent - 1 / basePercent:
        return 0
    require arg1 + basePercent - 1 / basePercent
    require arg1 + basePercent - 1 / basePercent * basePercent / arg1 + basePercent - 1 / basePercent == basePercent
    if not arg1 + basePercent - 1 / basePercent * basePercent:
        return 0
    require arg1 + basePercent - 1 / basePercent * basePercent
    require arg1 + basePercent - 1 / basePercent * basePercent * basePercent / arg1 + basePercent - 1 / basePercent * basePercent == basePercent
    return (arg1 + basePercent - 1 / basePercent * basePercent * basePercent / 10000)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 + basePercent >= arg2
    require 1 <= arg2 + basePercent
    require basePercent
    if not arg2 + basePercent - 1 / basePercent:
        require 0 <= arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require 0 <= totalSupply
        emit Transfer(arg2, msg.sender, arg1);
        emit Transfer(0, msg.sender, 0);
    else:
        require arg2 + basePercent - 1 / basePercent
        require arg2 + basePercent - 1 / basePercent * basePercent / arg2 + basePercent - 1 / basePercent == basePercent
        if not arg2 + basePercent - 1 / basePercent * basePercent:
            require 0 <= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            require 0 <= totalSupply
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, 0);
        else:
            require arg2 + basePercent - 1 / basePercent * basePercent
            require arg2 + basePercent - 1 / basePercent * basePercent * basePercent / arg2 + basePercent - 1 / basePercent * basePercent == basePercent
            require arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 10000 <= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 - (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 10000) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 10000)
            require arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 10000 <= totalSupply
            totalSupply -= arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 10000
            emit Transfer((arg2 - (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 10000)), msg.sender, arg1);
            emit Transfer((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 10000), msg.sender, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + basePercent >= arg3
    require 1 <= arg3 + basePercent
    require basePercent
    if not arg3 + basePercent - 1 / basePercent:
        require 0 <= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require 0 <= totalSupply
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        emit Transfer(0, arg1, 0);
    else:
        require arg3 + basePercent - 1 / basePercent
        require arg3 + basePercent - 1 / basePercent * basePercent / arg3 + basePercent - 1 / basePercent == basePercent
        if not arg3 + basePercent - 1 / basePercent * basePercent:
            require 0 <= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require 0 <= totalSupply
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, 0);
        else:
            require arg3 + basePercent - 1 / basePercent * basePercent
            require arg3 + basePercent - 1 / basePercent * basePercent * basePercent / arg3 + basePercent - 1 / basePercent * basePercent == basePercent
            require arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 10000 <= arg3
            require balanceOf[address(arg2)] + arg3 - (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 10000) >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 10000)
            require arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 10000 <= totalSupply
            totalSupply -= arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 10000
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer((arg3 - (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 10000)), arg1, arg2);
            emit Transfer((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 10000), arg1, 0);
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
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
        _35 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _37 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require 1 <= mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent
        require basePercent
        if not mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent:
            require 0 <= mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
            require 0 <= totalSupply
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_35));
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
            emit Transfer(0, msg.sender, 0);
        else:
            require mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent
            require mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent / mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent == basePercent
            if not mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent:
                require 0 <= mem[(32 * idx) + (32 * arg1.length) + 160]
                require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
                require 0 <= totalSupply
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_35));
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
                emit Transfer(0, msg.sender, 0);
            else:
                require mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent
                require mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent * basePercent / mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent == basePercent
                require mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent * basePercent / 10000 <= mem[(32 * idx) + (32 * arg1.length) + 160]
                require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] - (mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent * basePercent / 10000) >= balanceOf[address(mem[(32 * idx) + 128])]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] - (mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent * basePercent / 10000)
                require mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent * basePercent / 10000 <= totalSupply
                totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent * basePercent / 10000
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] - (mem[(32 * idx) + (32 * arg1.length) + 160] + basePercent - 1 / basePercent * basePercent * basePercent / 10000)
                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_35));
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _37 + basePercent - 1 / basePercent * basePercent * basePercent / 10000
                emit Transfer((_37 + basePercent - 1 / basePercent * basePercent * basePercent / 10000), msg.sender, 0);
        idx = idx + 1
        continue 
}



}
