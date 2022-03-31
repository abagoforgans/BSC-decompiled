contract main {




// =====================  Runtime code  =====================


const name = 'SparkPoint Fuel'

const decimals = 18

const symbol = 'SFUEL'

const DOMAIN_TYPEHASH = sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const DELEGATION_TYPEHASH = sha3(0x7944656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279)


uint8 stor0; offset 160
address owner;
uint128 stor1;
address stor1; offset 96
uint256 totalSupply;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function totalSupply() payable {
    return totalSupply
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

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
}

function _fallback() payable {
    revert
}

function freeze() payable {
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    stor0 = 1
    emit Freezed()
}

function unfreeze() payable {
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    stor0 = 0
    emit UnFreezed()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Should be owner'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    if arg2 == -1:
        allowance[address(msg.sender)][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        38,
                        0x73534655454c3a3a617070726f76653a20616d6f756e74206578636565647320393620626974,
                        mem[166 len 26],
                        mem[218 len 6]
        allowance[address(msg.sender)][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function burn(uint96 arg1) payable {
    require calldata.size - 4 >= 32
    require balanceOf[address(msg.sender)] >= Mask(96, 0, arg1)
    if Mask(96, 0, arg1) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0xfe534655454c3a3a6275726e3a206275726e20616d6f756e7420657863656564732062616c616e63,
                    mem[168 len 24],
                    mem[216 len 8]
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - Mask(96, 0, arg1))
    if Mask(96, 0, arg1) > Mask(96, 0, stor1.field_0):
        revert with 0, 
                    32,
                    44,
                    0x64534655454c3a3a6275726e3a206275726e20616d6f756e74206578636565647320746f74616c537570706c,
                    mem[268 len 20],
                    mem[308 len 12]
    Mask(96, 0, stor1.field_0) = Mask(96, 0, totalSupply - Mask(96, 0, arg1))
    address(stor1.field_96) = 0
    emit Burn(Mask(96, 0, arg1), msg.sender);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73534655454c3a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[204 len 24]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 5)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    if stor0:
        revert with 0, 'Token is locked'
    signer = erecover(sha3(0, sha3(sha3(0x73454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('SparkPoint Fuel'), chainid, this.address), sha3(sha3(0x7944656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    39,
                    0x65534655454c3a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(168, 0, arg6),
                    mem[738 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 32, 35, 0x73534655454c3a3a64656c656761746542795369673a20696e76616c6964206e6f6e63, Mask(200, 0, arg6), mem[738 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    39,
                    0x65534655454c3a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(168, 0, arg6),
                    mem[738 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 40, 0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(192, 0, arg5), 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[791 len 11],
                                        Mask(168, -256, mem[791 len 11]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                            else:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 32, 40, 0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(192, 0, arg5), 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[791 len 11],
                                        Mask(168, -256, mem[791 len 11]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor4[address(signer)]] > 0:
                    if balanceOf[address(signer)] > checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32:
                        revert with 0, 32, 41, 0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(184, 0, arg5), 0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[791 len 11],
                                    Mask(168, -256, mem[791 len 11]) << 256
                    if numCheckpoints[stor4[address(signer)]] <= 0:
                        checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                        numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[938 len 24],
                                                mem[986 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1047 len 11],
                                                Mask(168, -256, mem[1047 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[938 len 24],
                                                mem[986 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1047 len 11],
                                                Mask(168, -256, mem[1047 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[874 len 24],
                                                    mem[922 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[983 len 11],
                                                    Mask(168, -256, mem[983 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[874 len 24],
                                                    mem[922 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[983 len 11],
                                                    Mask(168, -256, mem[983 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[938 len 24],
                                                    mem[986 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1047 len 11],
                                                    Mask(168, -256, mem[1047 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[938 len 24],
                                                    mem[986 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1047 len 11],
                                                    Mask(168, -256, mem[1047 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 32, 41, 0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(184, 0, arg5), 0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[791 len 11],
                                    Mask(168, -256, mem[791 len 11]) << 256
                    if numCheckpoints[stor4[address(signer)]] <= 0:
                        checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                        numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[938 len 24],
                                                mem[986 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1047 len 11],
                                                Mask(168, -256, mem[1047 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[938 len 24],
                                                mem[986 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1047 len 11],
                                                Mask(168, -256, mem[1047 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[874 len 24],
                                                    mem[922 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[983 len 11],
                                                    Mask(168, -256, mem[983 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[874 len 24],
                                                    mem[922 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[983 len 11],
                                                    Mask(168, -256, mem[983 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[938 len 24],
                                                    mem[986 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1047 len 11],
                                                    Mask(168, -256, mem[1047 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[938 len 24],
                                                    mem[986 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1047 len 11],
                                                    Mask(168, -256, mem[1047 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Token is locked'
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        40,
                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[168 len 24],
                                        mem[216 len 8]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[277 len 11],
                                        Mask(168, -256, mem[277 len 11]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                            else:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[168 len 24],
                                        mem[216 len 8]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[277 len 11],
                                        Mask(168, -256, mem[277 len 11]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor4[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    41,
                                    0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[169 len 23],
                                    mem[215 len 9]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[277 len 11],
                                    Mask(168, -256, mem[277 len 11]) << 256
                    if numCheckpoints[stor4[address(msg.sender)]] <= 0:
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                        numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[533 len 11],
                                                Mask(168, -256, mem[533 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[533 len 11],
                                                Mask(168, -256, mem[533 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[360 len 24],
                                                    mem[408 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[469 len 11],
                                                    Mask(168, -256, mem[469 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[360 len 24],
                                                    mem[408 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[469 len 11],
                                                    Mask(168, -256, mem[469 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[424 len 24],
                                                    mem[472 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[533 len 11],
                                                    Mask(168, -256, mem[533 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[424 len 24],
                                                    mem[472 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[533 len 11],
                                                    Mask(168, -256, mem[533 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[169 len 23],
                                    mem[215 len 9]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[277 len 11],
                                    Mask(168, -256, mem[277 len 11]) << 256
                    if numCheckpoints[stor4[address(msg.sender)]] <= 0:
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                        numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[533 len 11],
                                                Mask(168, -256, mem[533 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[533 len 11],
                                                Mask(168, -256, mem[533 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[360 len 24],
                                                    mem[408 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[469 len 11],
                                                    Mask(168, -256, mem[469 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[360 len 24],
                                                    mem[408 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[469 len 11],
                                                    Mask(168, -256, mem[469 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[424 len 24],
                                                    mem[472 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[533 len 11],
                                                    Mask(168, -256, mem[533 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[424 len 24],
                                                    mem[472 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[533 len 11],
                                                    Mask(168, -256, mem[533 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Token is locked'
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 
                    32,
                    39,
                    0x73534655454c3a3a7472616e736665723a20616d6f756e74206578636565647320393620626974,
                    mem[167 len 25],
                    mem[217 len 7]
    if not msg.sender:
        revert with 0, 
                    32,
                    61,
                    0x73534655454c3a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[321 len 3]
    if not arg1:
        revert with 0, 
                    32,
                    59,
                    0x65534655454c3a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[319 len 5]
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    55,
                    0x29534655454c3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[279 len 9],
                    Mask(184, -256, mem[279 len 9]) << 256
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    if Mask(96, 0, balanceOf[address(arg1)] + arg2) < balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    49,
                    0x65534655454c3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                    mem[369 len 15],
                    Mask(136, -256, mem[369 len 15]) << 256
    balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] + arg2)
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[address(arg1)]:
        if Mask(96, 0, arg2) > 0:
            if not delegates[address(msg.sender)]:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor4[address(arg1)]] > 0:
                        if Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        40,
                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[456 len 24],
                                        mem[504 len 8]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[565 len 11],
                                        Mask(168, -256, mem[565 len 11]) << 256
                        if numCheckpoints[stor4[address(arg1)]] <= 0:
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                            else:
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                    else:
                        if Mask(96, 0, arg2) < 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[456 len 24],
                                        mem[504 len 8]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[565 len 11],
                                        Mask(168, -256, mem[565 len 11]) << 256
                        if numCheckpoints[stor4[address(arg1)]] <= 0:
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                            else:
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
            else:
                if numCheckpoints[stor4[address(msg.sender)]] > 0:
                    if Mask(96, 0, arg2) > checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    41,
                                    0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[457 len 23],
                                    mem[503 len 9]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[565 len 11],
                                    Mask(168, -256, mem[565 len 11]) << 256
                    if numCheckpoints[stor4[address(msg.sender)]] <= 0:
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                        numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor4[address(arg1)]] > 0:
                                if Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[712 len 24],
                                                mem[760 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[821 len 11],
                                                Mask(168, -256, mem[821 len 11]) << 256
                                if numCheckpoints[stor4[address(arg1)]] <= 0:
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    else:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[712 len 24],
                                                mem[760 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[821 len 11],
                                                Mask(168, -256, mem[821 len 11]) << 256
                                if numCheckpoints[stor4[address(arg1)]] <= 0:
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                    else:
                        if checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor4[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[648 len 24],
                                                    mem[696 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[757 len 11],
                                                    Mask(168, -256, mem[757 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[648 len 24],
                                                    mem[696 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[757 len 11],
                                                    Mask(168, -256, mem[757 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                        else:
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor4[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[712 len 24],
                                                    mem[760 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[821 len 11],
                                                    Mask(168, -256, mem[821 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[712 len 24],
                                                    mem[760 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[821 len 11],
                                                    Mask(168, -256, mem[821 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                else:
                    if Mask(96, 0, arg2) > 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[457 len 23],
                                    mem[503 len 9]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[565 len 11],
                                    Mask(168, -256, mem[565 len 11]) << 256
                    if numCheckpoints[stor4[address(msg.sender)]] <= 0:
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                        numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor4[address(arg1)]] > 0:
                                if Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[712 len 24],
                                                mem[760 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[821 len 11],
                                                Mask(168, -256, mem[821 len 11]) << 256
                                if numCheckpoints[stor4[address(arg1)]] <= 0:
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    else:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[712 len 24],
                                                mem[760 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[821 len 11],
                                                Mask(168, -256, mem[821 len 11]) << 256
                                if numCheckpoints[stor4[address(arg1)]] <= 0:
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                    else:
                        if checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg2)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor4[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[648 len 24],
                                                    mem[696 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[757 len 11],
                                                    Mask(168, -256, mem[757 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[648 len 24],
                                                    mem[696 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[757 len 11],
                                                    Mask(168, -256, mem[757 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                        else:
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor4[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[712 len 24],
                                                    mem[760 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[821 len 11],
                                                    Mask(168, -256, mem[821 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[712 len 24],
                                                    mem[760 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[821 len 11],
                                                    Mask(168, -256, mem[821 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor0:
        revert with 0, 'Token is locked'
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 
                    32,
                    38,
                    0x73534655454c3a3a617070726f76653a20616d6f756e74206578636565647320393620626974,
                    mem[166 len 26],
                    mem[218 len 6]
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 
                        32,
                        61,
                        0x73534655454c3a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[321 len 3]
        if not arg2:
            revert with 0, 
                        32,
                        59,
                        0x65534655454c3a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[319 len 5]
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        55,
                        0x29534655454c3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[279 len 9],
                        Mask(184, -256, mem[279 len 9]) << 256
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
        if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
            revert with 0, 
                        32,
                        49,
                        0x65534655454c3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                        mem[369 len 15],
                        Mask(136, -256, mem[369 len 15]) << 256
        balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
        emit Transfer(Mask(96, 0, arg3), arg1, arg2);
        if delegates[address(arg1)] != delegates[address(arg2)]:
            if Mask(96, 0, arg3) > 0:
                if not delegates[address(arg1)]:
                    if delegates[address(arg2)]:
                        if numCheckpoints[stor4[address(arg2)]] > 0:
                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            40,
                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                            mem[456 len 24],
                                            mem[504 len 8]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[565 len 11],
                                            Mask(168, -256, mem[565 len 11]) << 256
                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                            else:
                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                else:
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) < 0:
                                revert with 0, 
                                            32,
                                            40,
                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                            mem[456 len 24],
                                            mem[504 len 8]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[565 len 11],
                                            Mask(168, -256, mem[565 len 11]) << 256
                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                            else:
                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                else:
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                else:
                    if numCheckpoints[stor4[address(arg1)]] > 0:
                        if Mask(96, 0, arg3) > checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        41,
                                        0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                        mem[457 len 23],
                                        mem[503 len 9]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[565 len 11],
                                        Mask(168, -256, mem[565 len 11]) << 256
                        if numCheckpoints[stor4[address(arg1)]] <= 0:
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if numCheckpoints[stor4[address(arg2)]] > 0:
                                    if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[712 len 24],
                                                    mem[760 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[821 len 11],
                                                    Mask(168, -256, mem[821 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg2)]] <= 0:
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        else:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[712 len 24],
                                                    mem[760 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[821 len 11],
                                                    Mask(168, -256, mem[821 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg2)]] <= 0:
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                                emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor4[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[757 len 11],
                                                        Mask(168, -256, mem[757 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[757 len 11],
                                                        Mask(168, -256, mem[757 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor4[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[712 len 24],
                                                        mem[760 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[821 len 11],
                                                        Mask(168, -256, mem[821 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[712 len 24],
                                                        mem[760 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[821 len 11],
                                                        Mask(168, -256, mem[821 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if Mask(96, 0, arg3) > 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                        mem[457 len 23],
                                        mem[503 len 9]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[565 len 11],
                                        Mask(168, -256, mem[565 len 11]) << 256
                        if numCheckpoints[stor4[address(arg1)]] <= 0:
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if numCheckpoints[stor4[address(arg2)]] > 0:
                                    if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[712 len 24],
                                                    mem[760 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[821 len 11],
                                                    Mask(168, -256, mem[821 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg2)]] <= 0:
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        else:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[712 len 24],
                                                    mem[760 len 8]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[821 len 11],
                                                    Mask(168, -256, mem[821 len 11]) << 256
                                    if numCheckpoints[stor4[address(arg2)]] <= 0:
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor4[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[757 len 11],
                                                        Mask(168, -256, mem[757 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[757 len 11],
                                                        Mask(168, -256, mem[757 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor4[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[712 len 24],
                                                        mem[760 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[821 len 11],
                                                        Mask(168, -256, mem[821 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[712 len 24],
                                                        mem[760 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[821 len 11],
                                                        Mask(168, -256, mem[821 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
    else:
        if allowance[address(arg1)][address(msg.sender)] == test266151307():
            if not arg1:
                revert with 0, 
                            32,
                            61,
                            0x73534655454c3a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[321 len 3]
            if not arg2:
                revert with 0, 
                            32,
                            59,
                            0x65534655454c3a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[319 len 5]
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            55,
                            0x29534655454c3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[279 len 9],
                            Mask(184, -256, mem[279 len 9]) << 256
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            49,
                            0x65534655454c3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                            mem[369 len 15],
                            Mask(136, -256, mem[369 len 15]) << 256
            balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[address(arg2)]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[address(arg2)]:
                            if numCheckpoints[stor4[address(arg2)]] > 0:
                                if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[456 len 24],
                                                mem[504 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[565 len 11],
                                                Mask(168, -256, mem[565 len 11]) << 256
                                if numCheckpoints[stor4[address(arg2)]] <= 0:
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    else:
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[456 len 24],
                                                mem[504 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[565 len 11],
                                                Mask(168, -256, mem[565 len 11]) << 256
                                if numCheckpoints[stor4[address(arg2)]] <= 0:
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if numCheckpoints[stor4[address(arg1)]] > 0:
                            if Mask(96, 0, arg3) > checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            41,
                                            0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[457 len 23],
                                            mem[503 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[565 len 11],
                                            Mask(168, -256, mem[565 len 11]) << 256
                            if numCheckpoints[stor4[address(arg1)]] <= 0:
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor4[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[712 len 24],
                                                        mem[760 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[821 len 11],
                                                        Mask(168, -256, mem[821 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[712 len 24],
                                                        mem[760 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[821 len 11],
                                                        Mask(168, -256, mem[821 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor4[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[648 len 24],
                                                            mem[696 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[757 len 11],
                                                            Mask(168, -256, mem[757 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[648 len 24],
                                                            mem[696 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[757 len 11],
                                                            Mask(168, -256, mem[757 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor4[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[712 len 24],
                                                            mem[760 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[821 len 11],
                                                            Mask(168, -256, mem[821 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[712 len 24],
                                                            mem[760 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[821 len 11],
                                                            Mask(168, -256, mem[821 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            41,
                                            0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[457 len 23],
                                            mem[503 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[565 len 11],
                                            Mask(168, -256, mem[565 len 11]) << 256
                            if numCheckpoints[stor4[address(arg1)]] <= 0:
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor4[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[712 len 24],
                                                        mem[760 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[821 len 11],
                                                        Mask(168, -256, mem[821 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[712 len 24],
                                                        mem[760 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[821 len 11],
                                                        Mask(168, -256, mem[821 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor4[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[648 len 24],
                                                            mem[696 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[757 len 11],
                                                            Mask(168, -256, mem[757 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[648 len 24],
                                                            mem[696 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[757 len 11],
                                                            Mask(168, -256, mem[757 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor4[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[712 len 24],
                                                            mem[760 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[821 len 11],
                                                            Mask(168, -256, mem[821 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[712 len 24],
                                                            mem[760 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[821 len 11],
                                                            Mask(168, -256, mem[821 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
        else:
            if Mask(96, 0, arg3) > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            62,
                            0x73534655454c3a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63,
                            mem[286 len 2],
                            Mask(240, -256, mem[286 len 2]) << 256
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 
                            32,
                            61,
                            0x73534655454c3a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[417 len 3]
            if not arg2:
                revert with 0, 
                            32,
                            59,
                            0x65534655454c3a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[415 len 5]
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            55,
                            0x29534655454c3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[375 len 9],
                            Mask(184, -256, mem[375 len 9]) << 256
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            49,
                            0x65534655454c3a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                            mem[465 len 15],
                            Mask(136, -256, mem[465 len 15]) << 256
            balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[address(arg2)]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[address(arg2)]:
                            if numCheckpoints[stor4[address(arg2)]] > 0:
                                if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[552 len 24],
                                                mem[600 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[661 len 11],
                                                Mask(168, -256, mem[661 len 11]) << 256
                                if numCheckpoints[stor4[address(arg2)]] <= 0:
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    else:
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[552 len 24],
                                                mem[600 len 8]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[661 len 11],
                                                Mask(168, -256, mem[661 len 11]) << 256
                                if numCheckpoints[stor4[address(arg2)]] <= 0:
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if numCheckpoints[stor4[address(arg1)]] > 0:
                            if Mask(96, 0, arg3) > checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            41,
                                            0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[553 len 23],
                                            mem[599 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[661 len 11],
                                            Mask(168, -256, mem[661 len 11]) << 256
                            if numCheckpoints[stor4[address(arg1)]] <= 0:
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor4[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[808 len 24],
                                                        mem[856 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[917 len 11],
                                                        Mask(168, -256, mem[917 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[808 len 24],
                                                        mem[856 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[917 len 11],
                                                        Mask(168, -256, mem[917 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor4[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[744 len 24],
                                                            mem[792 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[853 len 11],
                                                            Mask(168, -256, mem[853 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[744 len 24],
                                                            mem[792 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[853 len 11],
                                                            Mask(168, -256, mem[853 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor4[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[808 len 24],
                                                            mem[856 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[917 len 11],
                                                            Mask(168, -256, mem[917 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[808 len 24],
                                                            mem[856 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[917 len 11],
                                                            Mask(168, -256, mem[917 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            41,
                                            0x64534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[553 len 23],
                                            mem[599 len 9]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            53,
                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[661 len 11],
                                            Mask(168, -256, mem[661 len 11]) << 256
                            if numCheckpoints[stor4[address(arg1)]] <= 0:
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor4[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[808 len 24],
                                                        mem[856 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[917 len 11],
                                                        Mask(168, -256, mem[917 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[808 len 24],
                                                        mem[856 len 8]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        53,
                                                        0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[917 len 11],
                                                        Mask(168, -256, mem[917 len 11]) << 256
                                        if numCheckpoints[stor4[address(arg2)]] <= 0:
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor4[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[744 len 24],
                                                            mem[792 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[853 len 11],
                                                            Mask(168, -256, mem[853 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[744 len 24],
                                                            mem[792 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[853 len 11],
                                                            Mask(168, -256, mem[853 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor4[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[808 len 24],
                                                            mem[856 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[917 len 11],
                                                            Mask(168, -256, mem[917 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x65534655454c3a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[808 len 24],
                                                            mem[856 len 8]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            53,
                                                            0x29534655454c3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[917 len 11],
                                                            Mask(168, -256, mem[917 len 11]) << 256
                                            if numCheckpoints[stor4[address(arg2)]] <= 0:
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor4[address(arg2)]][stor6[stor4[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor4[address(arg2)]] = uint32(numCheckpoints[stor4[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
    return 1
}



}
