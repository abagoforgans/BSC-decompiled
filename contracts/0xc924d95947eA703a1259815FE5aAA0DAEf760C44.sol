contract main {




// =====================  Runtime code  =====================


const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6f4c46493a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[202 len 26]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 7)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor6[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[243 len 13])
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[403 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[403 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[403 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[403 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[243 len 13])
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[403 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[403 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[403 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[403 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len name.length]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    37,
                    0x734c46493a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(184, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    33,
                    0x734c46493a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(216, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    37,
                    0x654c46493a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(184, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, Mask(104, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, Mask(104, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor6[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 725 len 13])
                    if numCheckpoints[stor6[address(signer)]] <= 0:
                        checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_256 = checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor6[address(signer)]] = uint32(numCheckpoints[stor6[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256, checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 885 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 885 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256, checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_256 = checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor6[address(signer)]] = uint32(numCheckpoints[stor6[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256, checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 885 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 885 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 725 len 13])
                    if numCheckpoints[stor6[address(signer)]] <= 0:
                        checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor6[address(signer)]] = uint32(numCheckpoints[stor6[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 885 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 885 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(signer)]][stor8[stor6[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor6[address(signer)]] = uint32(numCheckpoints[stor6[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 885 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x644c46493a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 885 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
