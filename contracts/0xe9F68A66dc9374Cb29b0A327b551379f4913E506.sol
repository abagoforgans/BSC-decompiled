contract main {




// =====================  Runtime code  =====================


const DOMAIN_TYPEHASH = sha3(0x65454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const DELEGATION_TYPEHASH = sha3(0x7344656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279)


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of uint256 symbol;
array of struct name;
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
    return delegates[arg1]
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

function getOwner() payable {
    return owner
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

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function freeze() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = 1
    emit Freezed()
}

function unfreeze() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = 0
    emit UnFreezed()
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function lockUser(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
    emit LockUser(arg1);
}

function unlockUser(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
    emit UnlockUser(arg1);
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] <= 0:
        return 0
    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < 0x1000000000000000000000000:
        return checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
    return test266151307()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    if stor1[address(msg.sender)]:
        revert with 0, 'Blocked user'
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 34, 0x655468652064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[162 len 30], mem[222 len 2]
    if not msg.sender:
        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    if stor1[address(msg.sender)]:
        revert with 0, 'Blocked user'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    if stor1[address(msg.sender)]:
        revert with 0, 'Blocked user'
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 33, 0x7354686520696e6372656173656420616c6c6f77616e6365206f766572666c6f77, mem[161 len 31], mem[223 len 1]
    if not msg.sender:
        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Token is locked'
    if stor1[address(msg.sender)]:
        revert with 0, 'Blocked user'
    if not msg.sender:
        revert with 0, 
                    32,
                    36,
                    0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 232 len 28]
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address rg1, address rg2, uint256 rg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0, 'Not determined yet'
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 <= arg2:
        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < 0x1000000000000000000000000:
            return checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
    else:
        if checkpoints[address(arg1)][0].field_0 > arg2:
            return 0
        idx = 0
        while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
            _37 = mem[64]
            mem[64] = mem[64] + 64
            mem[_37] = 0
            mem[_37 + 32] = 0
            mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
            mem[32] = sha3(address(arg1), 9)
            _40 = mem[64]
            mem[64] = mem[64] + 64
            mem[_40] = checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
            mem[_40 + 32] = checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
            if checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 != arg2:
                if checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
                    idx = idx
                    continue 
                idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
                continue 
            if checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256 < 0x1000000000000000000000000:
                return checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
            return test266151307()
        if checkpoints[address(arg1)][idx << 224].field_256 < 0x1000000000000000000000000:
            return checkpoints[address(arg1)][idx << 224].field_256
    return test266151307()
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Token is locked'
    if stor1[address(msg.sender)]:
        revert with 0, 'Blocked user'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2943616e6e6f74206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'The burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if delegates[address(msg.sender)]:
        if arg1 > 0:
            if delegates[address(msg.sender)]:
                if numCheckpoints[stor8[address(msg.sender)]] > 0:
                    if arg1 > checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'The vote amount underflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[stor8[address(msg.sender)]] <= 0:
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - arg1
                        numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                    else:
                        if checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 -= arg1
                        else:
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - arg1
                            numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - arg1, delegates[address(msg.sender)]);
                else:
                    if arg1 > 0:
                        revert with 0, 'The vote amount underflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[stor8[address(msg.sender)]] <= 0:
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = -arg1
                        numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                    else:
                        if checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 = -arg1
                        else:
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = -arg1
                            numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                    emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Token is locked'
    if stor1[address(msg.sender)]:
        revert with 0, 'Blocked user'
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if delegates[address(msg.sender)]:
                if numCheckpoints[stor8[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'The vote amount underflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[stor8[address(msg.sender)]] <= 0:
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                    else:
                        if checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                        else:
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'The vote amount underflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[stor8[address(msg.sender)]] <= 0:
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                    else:
                        if checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                        else:
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                    emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
            if arg1:
                if numCheckpoints[address(arg1)] > 0:
                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                        revert with 0, 'The vote amount overflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                        else:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0, 'The vote amount overflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                        else:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    if stor0:
        revert with 0, 'Token is locked'
    if stor1[address(msg.sender)]:
        revert with 0, 'Blocked user'
    mem[96 len 67] = 0x65454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374
    mem[96] = uint256(name.field_0)
    idx = 96
    s = 0
    while name.length + 96 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(sha3(0x65454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(mem[96 len name.length]), chainid, this.address), sha3(sha3(0x7344656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'Invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'The signature expired'
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if delegates[address(signer)]:
                if numCheckpoints[stor8[address(signer)]] > 0:
                    if balanceOf[address(signer)] > checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'The vote amount underflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[stor8[address(signer)]] <= 0:
                        checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_256 = checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor8[address(signer)]] = uint32(numCheckpoints[stor8[address(signer)]] + 1)
                    else:
                        if checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                        else:
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_256 = checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor8[address(signer)]] = uint32(numCheckpoints[stor8[address(signer)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256, checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'The vote amount underflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[stor8[address(signer)]] <= 0:
                        checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor8[address(signer)]] = uint32(numCheckpoints[stor8[address(signer)]] + 1)
                    else:
                        if checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                        else:
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor8[address(signer)]] = uint32(numCheckpoints[stor8[address(signer)]] + 1)
                    emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
            if arg1:
                if numCheckpoints[address(arg1)] > 0:
                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                        revert with 0, 'The vote amount overflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                        else:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] < 0:
                        revert with 0, 'The vote amount overflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                        else:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    else:
        if stor1[address(msg.sender)]:
            revert with 0, 'Blocked user'
        else:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x2943616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            else:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x7343616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                else:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 35, 0x73546865207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[163 len 29], mem[221 len 3]
                    else:
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'The balance overflows'
                        else:
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if delegates[address(msg.sender)] == delegates[address(arg1)]:
                                return 1
                            else:
                                if arg2 <= 0:
                                    return 1
                                else:
                                    if not delegates[address(msg.sender)]:
                                        if not delegates[address(arg1)]:
                                            return 1
                                        else:
                                            if numCheckpoints[stor8[address(arg1)]] > 0:
                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                                                    revert with 0, 'The vote amount overflows'
                                                else:
                                                    if block.number >= 4294967296:
                                                        revert with 0, 'The block number exceeds 32 bits'
                                                    else:
                                                        if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                            return 1
                                                        else:
                                                            if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                return 1
                                                            else:
                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                return 1
                                            else:
                                                if arg2 < 0:
                                                    revert with 0, 'The vote amount overflows'
                                                else:
                                                    if block.number >= 4294967296:
                                                        revert with 0, 'The block number exceeds 32 bits'
                                                    else:
                                                        if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                            emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                            return 1
                                                        else:
                                                            if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                return 1
                                                            else:
                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                return 1
                                    else:
                                        if numCheckpoints[stor8[address(msg.sender)]] > 0:
                                            if arg2 > checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'The vote amount underflows'
                                            else:
                                                if block.number >= 4294967296:
                                                    revert with 0, 'The block number exceeds 32 bits'
                                                else:
                                                    if numCheckpoints[stor8[address(msg.sender)]] <= 0:
                                                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                                        numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                                                        emit DelegateVotesChanged(checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                                        if not delegates[address(arg1)]:
                                                            return 1
                                                        else:
                                                            if numCheckpoints[stor8[address(arg1)]] > 0:
                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                                                                    revert with 0, 'The vote amount overflows'
                                                                else:
                                                                    if block.number >= 4294967296:
                                                                        revert with 0, 'The block number exceeds 32 bits'
                                                                    else:
                                                                        if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                            return 1
                                                                        else:
                                                                            if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                return 1
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0, 'The vote amount overflows'
                                                                else:
                                                                    if block.number >= 4294967296:
                                                                        revert with 0, 'The block number exceeds 32 bits'
                                                                    else:
                                                                        if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                            emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                            return 1
                                                                        else:
                                                                            if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                return 1
                                                    else:
                                                        if checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_0 != uint32(block.number):
                                                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - arg2
                                                            numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                                                            emit DelegateVotesChanged(checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                                            if not delegates[address(arg1)]:
                                                                return 1
                                                            else:
                                                                if numCheckpoints[stor8[address(arg1)]] > 0:
                                                                    if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                                                                        revert with 0, 'The vote amount overflows'
                                                                    else:
                                                                        if block.number >= 4294967296:
                                                                            revert with 0, 'The block number exceeds 32 bits'
                                                                        else:
                                                                            if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                    numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                                else:
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                                                                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0, 'The vote amount overflows'
                                                                    else:
                                                                        if block.number >= 4294967296:
                                                                            revert with 0, 'The block number exceeds 32 bits'
                                                                        else:
                                                                            if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                    numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                                else:
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                                                                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                        else:
                                                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                                                            emit DelegateVotesChanged(checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                                                            if not delegates[address(arg1)]:
                                                                return 1
                                                            else:
                                                                if numCheckpoints[stor8[address(arg1)]] > 0:
                                                                    if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                                                                        revert with 0, 'The vote amount overflows'
                                                                    else:
                                                                        if block.number >= 4294967296:
                                                                            revert with 0, 'The block number exceeds 32 bits'
                                                                        else:
                                                                            if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                    numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                                else:
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                                                                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0, 'The vote amount overflows'
                                                                    else:
                                                                        if block.number >= 4294967296:
                                                                            revert with 0, 'The block number exceeds 32 bits'
                                                                        else:
                                                                            if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                    numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                                else:
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                                                                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                    return 1
                                        else:
                                            if arg2 > 0:
                                                revert with 0, 'The vote amount underflows'
                                            else:
                                                if block.number >= 4294967296:
                                                    revert with 0, 'The block number exceeds 32 bits'
                                                else:
                                                    if numCheckpoints[stor8[address(msg.sender)]] <= 0:
                                                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = -arg2
                                                        numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                                                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                                        if not delegates[address(arg1)]:
                                                            return 1
                                                        else:
                                                            if numCheckpoints[stor8[address(arg1)]] > 0:
                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                                                                    revert with 0, 'The vote amount overflows'
                                                                else:
                                                                    if block.number >= 4294967296:
                                                                        revert with 0, 'The block number exceeds 32 bits'
                                                                    else:
                                                                        if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                            return 1
                                                                        else:
                                                                            if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                return 1
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0, 'The vote amount overflows'
                                                                else:
                                                                    if block.number >= 4294967296:
                                                                        revert with 0, 'The block number exceeds 32 bits'
                                                                    else:
                                                                        if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                            emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                            return 1
                                                                        else:
                                                                            if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                return 1
                                                    else:
                                                        if checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_0 != uint32(block.number):
                                                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = -arg2
                                                            numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                                                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                                            if not delegates[address(arg1)]:
                                                                return 1
                                                            else:
                                                                if numCheckpoints[stor8[address(arg1)]] > 0:
                                                                    if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                                                                        revert with 0, 'The vote amount overflows'
                                                                    else:
                                                                        if block.number >= 4294967296:
                                                                            revert with 0, 'The block number exceeds 32 bits'
                                                                        else:
                                                                            if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                    numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                                else:
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                                                                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0, 'The vote amount overflows'
                                                                    else:
                                                                        if block.number >= 4294967296:
                                                                            revert with 0, 'The block number exceeds 32 bits'
                                                                        else:
                                                                            if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                    numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                                else:
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                                                                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                        else:
                                                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                                                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                                                            if not delegates[address(arg1)]:
                                                                return 1
                                                            else:
                                                                if numCheckpoints[stor8[address(arg1)]] > 0:
                                                                    if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                                                                        revert with 0, 'The vote amount overflows'
                                                                    else:
                                                                        if block.number >= 4294967296:
                                                                            revert with 0, 'The block number exceeds 32 bits'
                                                                        else:
                                                                            if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2
                                                                                    numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                                else:
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                                                                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0, 'The vote amount overflows'
                                                                    else:
                                                                        if block.number >= 4294967296:
                                                                            revert with 0, 'The block number exceeds 32 bits'
                                                                        else:
                                                                            if numCheckpoints[stor8[address(arg1)]] <= 0:
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                return 1
                                                                            else:
                                                                                if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 != uint32(block.number):
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                                                                                    numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                                                                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                    return 1
                                                                                else:
                                                                                    checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                                                                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                                                                    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor0:
        revert with 0, 'Token is locked'
    if stor1[address(msg.sender)]:
        revert with 0, 'Blocked user'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2943616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7343616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 35, 0x73546865207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[163 len 29], mem[221 len 3]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'The balance overflows'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if delegates[address(arg1)] == delegates[address(arg2)]:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            37,
                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[325 len 27],
                            mem[379 len 5]
            if not arg1:
                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if arg3 <= 0:
            if allowance[address(arg1)][address(msg.sender)] != -1:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                37,
                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[325 len 27],
                                mem[379 len 5]
                if not arg1:
                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if not delegates[address(arg1)]:
                if not delegates[address(arg2)]:
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        37,
                                        0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[325 len 27],
                                        mem[379 len 5]
                        if not arg1:
                            revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if numCheckpoints[stor8[address(arg2)]] > 0:
                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256:
                            revert with 0, 'The vote amount overflows'
                        if block.number >= 4294967296:
                            revert with 0, 'The block number exceeds 32 bits'
                        if numCheckpoints[stor8[address(arg2)]] <= 0:
                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[517 len 27],
                                                mem[571 len 5]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 += arg3
                                emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                if allowance[address(arg1)][address(msg.sender)] != -1:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[453 len 27],
                                                    mem[507 len 5]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                if allowance[address(arg1)][address(msg.sender)] != -1:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[517 len 27],
                                                    mem[571 len 5]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if arg3 < 0:
                            revert with 0, 'The vote amount overflows'
                        if block.number >= 4294967296:
                            revert with 0, 'The block number exceeds 32 bits'
                        if numCheckpoints[stor8[address(arg2)]] <= 0:
                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[517 len 27],
                                                mem[571 len 5]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 = arg3
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                if allowance[address(arg1)][address(msg.sender)] != -1:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[453 len 27],
                                                    mem[507 len 5]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                if allowance[address(arg1)][address(msg.sender)] != -1:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[517 len 27],
                                                    mem[571 len 5]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if numCheckpoints[stor8[address(arg1)]] > 0:
                    if arg3 > checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'The vote amount underflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[stor8[address(arg1)]] <= 0:
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 - arg3
                        numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                        if not delegates[address(arg2)]:
                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[517 len 27],
                                                mem[571 len 5]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if numCheckpoints[stor8[address(arg2)]] > 0:
                                if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256:
                                    revert with 0, 'The vote amount overflows'
                                if block.number >= 4294967296:
                                    revert with 0, 'The block number exceeds 32 bits'
                                if numCheckpoints[stor8[address(arg2)]] <= 0:
                                    checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                    numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                    if allowance[address(arg1)][address(msg.sender)] != -1:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[709 len 27],
                                                        mem[763 len 5]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[645 len 27],
                                                            mem[699 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[709 len 27],
                                                            mem[763 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if arg3 < 0:
                                    revert with 0, 'The vote amount overflows'
                                if block.number >= 4294967296:
                                    revert with 0, 'The block number exceeds 32 bits'
                                if numCheckpoints[stor8[address(arg2)]] <= 0:
                                    checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                    numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                    if allowance[address(arg1)][address(msg.sender)] != -1:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[709 len 27],
                                                        mem[763 len 5]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[645 len 27],
                                                            mem[699 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[709 len 27],
                                                            mem[763 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if allowance[address(arg1)][address(msg.sender)] != -1:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[453 len 27],
                                                    mem[507 len 5]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if numCheckpoints[stor8[address(arg2)]] > 0:
                                    if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256:
                                        revert with 0, 'The vote amount overflows'
                                    if block.number >= 4294967296:
                                        revert with 0, 'The block number exceeds 32 bits'
                                    if numCheckpoints[stor8[address(arg2)]] <= 0:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[645 len 27],
                                                            mem[699 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[581 len 27],
                                                                mem[635 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[645 len 27],
                                                                mem[699 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'The vote amount overflows'
                                    if block.number >= 4294967296:
                                        revert with 0, 'The block number exceeds 32 bits'
                                    if numCheckpoints[stor8[address(arg2)]] <= 0:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[645 len 27],
                                                            mem[699 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[581 len 27],
                                                                mem[635 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[645 len 27],
                                                                mem[699 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 - arg3
                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if allowance[address(arg1)][address(msg.sender)] != -1:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[517 len 27],
                                                    mem[571 len 5]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if numCheckpoints[stor8[address(arg2)]] > 0:
                                    if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256:
                                        revert with 0, 'The vote amount overflows'
                                    if block.number >= 4294967296:
                                        revert with 0, 'The block number exceeds 32 bits'
                                    if numCheckpoints[stor8[address(arg2)]] <= 0:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[709 len 27],
                                                            mem[763 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[645 len 27],
                                                                mem[699 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[709 len 27],
                                                                mem[763 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'The vote amount overflows'
                                    if block.number >= 4294967296:
                                        revert with 0, 'The block number exceeds 32 bits'
                                    if numCheckpoints[stor8[address(arg2)]] <= 0:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[709 len 27],
                                                            mem[763 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[645 len 27],
                                                                mem[699 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[709 len 27],
                                                                mem[763 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if arg3 > 0:
                        revert with 0, 'The vote amount underflows'
                    if block.number >= 4294967296:
                        revert with 0, 'The block number exceeds 32 bits'
                    if numCheckpoints[stor8[address(arg1)]] <= 0:
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                        if not delegates[address(arg2)]:
                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[517 len 27],
                                                mem[571 len 5]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if numCheckpoints[stor8[address(arg2)]] > 0:
                                if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256:
                                    revert with 0, 'The vote amount overflows'
                                if block.number >= 4294967296:
                                    revert with 0, 'The block number exceeds 32 bits'
                                if numCheckpoints[stor8[address(arg2)]] <= 0:
                                    checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                    numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                    if allowance[address(arg1)][address(msg.sender)] != -1:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[709 len 27],
                                                        mem[763 len 5]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[645 len 27],
                                                            mem[699 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[709 len 27],
                                                            mem[763 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if arg3 < 0:
                                    revert with 0, 'The vote amount overflows'
                                if block.number >= 4294967296:
                                    revert with 0, 'The block number exceeds 32 bits'
                                if numCheckpoints[stor8[address(arg2)]] <= 0:
                                    checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                    numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                    if allowance[address(arg1)][address(msg.sender)] != -1:
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[709 len 27],
                                                        mem[763 len 5]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[645 len 27],
                                                            mem[699 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[709 len 27],
                                                            mem[763 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if allowance[address(arg1)][address(msg.sender)] != -1:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[453 len 27],
                                                    mem[507 len 5]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if numCheckpoints[stor8[address(arg2)]] > 0:
                                    if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256:
                                        revert with 0, 'The vote amount overflows'
                                    if block.number >= 4294967296:
                                        revert with 0, 'The block number exceeds 32 bits'
                                    if numCheckpoints[stor8[address(arg2)]] <= 0:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[645 len 27],
                                                            mem[699 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[581 len 27],
                                                                mem[635 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[645 len 27],
                                                                mem[699 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'The vote amount overflows'
                                    if block.number >= 4294967296:
                                        revert with 0, 'The block number exceeds 32 bits'
                                    if numCheckpoints[stor8[address(arg2)]] <= 0:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[645 len 27],
                                                            mem[699 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[581 len 27],
                                                                mem[635 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[645 len 27],
                                                                mem[699 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if allowance[address(arg1)][address(msg.sender)] != -1:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[517 len 27],
                                                    mem[571 len 5]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if numCheckpoints[stor8[address(arg2)]] > 0:
                                    if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256:
                                        revert with 0, 'The vote amount overflows'
                                    if block.number >= 4294967296:
                                        revert with 0, 'The block number exceeds 32 bits'
                                    if numCheckpoints[stor8[address(arg2)]] <= 0:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[709 len 27],
                                                            mem[763 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[645 len 27],
                                                                mem[699 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256, checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[709 len 27],
                                                                mem[763 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'The vote amount overflows'
                                    if block.number >= 4294967296:
                                        revert with 0, 'The block number exceeds 32 bits'
                                    if numCheckpoints[stor8[address(arg2)]] <= 0:
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if allowance[address(arg1)][address(msg.sender)] != -1:
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            37,
                                                            0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[709 len 27],
                                                            mem[763 len 5]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[645 len 27],
                                                                mem[699 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor8[address(arg2)]][stor10[stor8[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor8[address(arg2)]] = uint32(numCheckpoints[stor8[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if allowance[address(arg1)][address(msg.sender)] != -1:
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                37,
                                                                0x6f546865207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[709 len 27],
                                                                mem[763 len 5]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7343616e6e6f7420617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0xfe43616e6e6f7420617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
