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
address owner; offset 8
uint256 stor5; offset 8
address potentialOwner;
uint256 sub_bc9c1dd0;
address treasuryWalletAddr;
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

function potentialOwner() payable {
    return potentialOwner
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function treasuryWalletAddr() payable {
    return treasuryWalletAddr
}

function sub_bc9c1dd0(?) payable {
    return sub_bc9c1dd0
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function nominatePotentialOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    potentialOwner = arg1
    emit OwnerNominated(arg1);
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function sub_ebac944b(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if balanceOf[address(this.address)] < arg2:
        revert with 0, 'out of balance'
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function acceptOwnership() payable {
    if potentialOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x73596f75206d757374206265206e6f6d696e6174656420617320706f74656e7469616c206f776e6572206265666f726520796f752063616e20616363657074206f776e6572736869,
                    mem[236 len 24]
    emit OwnershipTransferred(owner, potentialOwner);
    stor5 = potentialOwner
    potentialOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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
        revert with 0, 32, 36, 0x7045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[197 len 31]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 10)
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31] = checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_31 + 32] = checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor9[address(arg1)]]:
                    if arg2 + checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[178 len 14]
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = arg2 + checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = arg2 + checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[178 len 14]
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if delegates[address(arg1)]:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor9[address(arg1)]]:
                    if arg2 > checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 -= arg2
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = -arg2
                        numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 = -arg2
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = -arg2
                            numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6445524332303a207472616e7366657220746f20746865207a65726f20616464726573,
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
    if delegates[msg.sender] != delegates[arg1]:
        if arg2 > 0:
            if not delegates[msg.sender]:
                if delegates[arg1]:
                    if numCheckpoints[stor9[arg1]]:
                        if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[274 len 14]
                        if numCheckpoints[stor9[arg1]] <= 0:
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        else:
                            if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[274 len 14]
                        if numCheckpoints[stor9[arg1]] <= 0:
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        else:
                            if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
            else:
                if numCheckpoints[stor9[msg.sender]]:
                    if arg2 > checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[338 len 14]
                    if numCheckpoints[stor9[msg.sender]] <= 0:
                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 - arg2, delegates[msg.sender]);
                        if delegates[arg1]:
                            if numCheckpoints[stor9[arg1]]:
                                if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[498 len 14]
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[498 len 14]
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 - arg2, delegates[msg.sender]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[434 len 14]
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[434 len 14]
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 - arg2, delegates[msg.sender]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[498 len 14]
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[498 len 14]
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[338 len 14]
                    if numCheckpoints[stor9[msg.sender]] <= 0:
                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = -arg2
                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[msg.sender]);
                        if delegates[arg1]:
                            if numCheckpoints[stor9[arg1]]:
                                if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[498 len 14]
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[498 len 14]
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[msg.sender]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[434 len 14]
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[434 len 14]
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = -arg2
                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[msg.sender]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[498 len 14]
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[498 len 14]
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6445524332303a207472616e7366657220746f20746865207a65726f20616464726573,
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
        revert with 0, 32, 36, 0x7045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if delegates[address(arg1)] != delegates[arg2]:
        if arg3 > 0:
            if not delegates[address(arg1)]:
                if delegates[arg2]:
                    if numCheckpoints[stor9[arg2]]:
                        if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[370 len 14]
                        if numCheckpoints[stor9[arg2]] <= 0:
                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                        else:
                            if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                            else:
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                    else:
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[370 len 14]
                        if numCheckpoints[stor9[arg2]] <= 0:
                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                        else:
                            if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                            else:
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
            else:
                if numCheckpoints[stor9[address(arg1)]]:
                    if arg3 > checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[434 len 14]
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3
                        numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                        if delegates[arg2]:
                            if numCheckpoints[stor9[arg2]]:
                                if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[594 len 14]
                                if numCheckpoints[stor9[arg2]] <= 0:
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                else:
                                    if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[594 len 14]
                                if numCheckpoints[stor9[arg2]] <= 0:
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                    numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                else:
                                    if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                    else:
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor9[arg2]]:
                                    if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[530 len 14]
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[530 len 14]
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3
                            numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor9[arg2]]:
                                    if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[594 len 14]
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[594 len 14]
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                else:
                    if arg3 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[434 len 14]
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                        if delegates[arg2]:
                            if numCheckpoints[stor9[arg2]]:
                                if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[594 len 14]
                                if numCheckpoints[stor9[arg2]] <= 0:
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                else:
                                    if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[594 len 14]
                                if numCheckpoints[stor9[arg2]] <= 0:
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                    numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                else:
                                    if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                    else:
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor9[arg2]]:
                                    if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[530 len 14]
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[530 len 14]
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if delegates[arg2]:
                                if numCheckpoints[stor9[arg2]]:
                                    if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[594 len 14]
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[594 len 14]
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
    return 1
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
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[178 len 14]
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[178 len 14]
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor9[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[242 len 14]
                    if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[338 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[338 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[242 len 14]
                    if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[338 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[338 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[402 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
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
        revert with 0, 'delegateBySig: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'delegateBySig: signature expired'
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, Mask(112, 0, arg5)
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, Mask(112, 0, arg5)
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor9[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 724 len 14]
                    if numCheckpoints[stor9[address(signer)]] <= 0:
                        checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor9[address(signer)]] = uint32(numCheckpoints[stor9[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 884 len 14]
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 884 len 14]
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 820 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 820 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor9[address(signer)]] = uint32(numCheckpoints[stor9[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 884 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 884 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 724 len 14]
                    if numCheckpoints[stor9[address(signer)]] <= 0:
                        checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor9[address(signer)]] = uint32(numCheckpoints[stor9[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 884 len 14]
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 884 len 14]
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 820 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 820 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor9[address(signer)]] = uint32(numCheckpoints[stor9[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 884 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 46, 0x725f7772697465436865636b706f696e743a20626c6f636b206e756d62657220, mem[ceil32(name.length) + 884 len 14]
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
