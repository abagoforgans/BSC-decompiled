contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
address stor7;

function _fallback() payable {
    mem[128] = 'ERC20'
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'ERC20' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -8241] = code.data[8809 len -8241]
    stor0[address(msg.sender)] = mem[160]
    stor6 = mem[160]
    stor3[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor4[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor5 = mem[255 len 1]
    stor7 = msg.sender
    return code.data[568 len 8241]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiApprove(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    while idx <= arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(msg.sender), 8)
        allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _30 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Approval(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_30));
        idx = idx + 1
        continue 
    return 1
}

function multiIncreaseApproval(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    while idx <= arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _40 = mem[(32 * idx) + 128]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(msg.sender), 8)
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]]
        emit Approval(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_40));
        idx = idx + 1
        continue 
    return 1
}

function multiDecreaseApproval(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while idx <= arg1.length:
        require idx < arg1.length
        _46 = sha3(mem[(32 * idx) + 140 len 20], sha3(address(msg.sender), 8))
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] > allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]] = 0
            require idx < arg1.length
            _56 = mem[(32 * idx) + 128]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(msg.sender), 8)
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]]
            emit Approval(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_56));
        else:
            require idx < arg2.length
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            _68 = mem[(32 * idx) + 128]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(msg.sender), 8)
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = allowance[address(msg.sender)][mem[(32 * idx) + 140 len 20]]
            emit Approval(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_68));
        s = stor[_46]
        idx = idx + 1
        continue 
    return 1
}



}
