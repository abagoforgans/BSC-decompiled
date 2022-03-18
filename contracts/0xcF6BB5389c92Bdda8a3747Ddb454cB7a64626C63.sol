contract main {




// =====================  Runtime code  =====================


const name = 'Venus'

const totalSupply = 30000000 * 10^18

const decimals = 18

const symbol = 'XVS'

const DOMAIN_TYPEHASH = sha3(0x64454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const DELEGATION_TYPEHASH = sha3(0x7344656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279)


uint8 stor0; offset 160
address owner;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

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
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
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
            revert with 0, 32, 36, 0x295856533a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[164 len 28], mem[220 len 4]
        allowance[address(msg.sender)][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x735856533a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[202 len 26]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 4)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
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
    signer = erecover(sha3(0, sha3(sha3(0x64454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3('Venus'), chainid, this.address), sha3(sha3(0x7344656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    37,
                    0x735856533a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(184, 0, arg6),
                    mem[738 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 32, 33, 0x735856533a3a64656c656761746542795369673a20696e76616c6964206e6f6e63, Mask(216, 0, arg6), mem[738 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    37,
                    0x655856533a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(184, 0, arg6),
                    mem[738 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 38, 0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(208, 0, arg5), 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[789 len 13],
                                        Mask(152, -256, mem[789 len 13]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 32, 38, 0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(208, 0, arg5), 0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[789 len 13],
                                        Mask(152, -256, mem[789 len 13]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor3[address(signer)]] > 0:
                    if balanceOf[address(signer)] > checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32:
                        revert with 0, 32, 39, 0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(200, 0, arg5), 0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[789 len 13],
                                    Mask(152, -256, mem[789 len 13]) << 256
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[936 len 26],
                                                mem[988 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1045 len 13],
                                                Mask(152, -256, mem[1045 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[936 len 26],
                                                mem[988 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1045 len 13],
                                                Mask(152, -256, mem[1045 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[872 len 26],
                                                    mem[924 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[981 len 13],
                                                    Mask(152, -256, mem[981 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[872 len 26],
                                                    mem[924 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[981 len 13],
                                                    Mask(152, -256, mem[981 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[936 len 26],
                                                    mem[988 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1045 len 13],
                                                    Mask(152, -256, mem[1045 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[936 len 26],
                                                    mem[988 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1045 len 13],
                                                    Mask(152, -256, mem[1045 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 32, 39, 0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(200, 0, arg5), 0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[789 len 13],
                                    Mask(152, -256, mem[789 len 13]) << 256
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[936 len 26],
                                                mem[988 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1045 len 13],
                                                Mask(152, -256, mem[1045 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[936 len 26],
                                                mem[988 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[1045 len 13],
                                                Mask(152, -256, mem[1045 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[872 len 26],
                                                    mem[924 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[981 len 13],
                                                    Mask(152, -256, mem[981 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[872 len 26],
                                                    mem[924 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[981 len 13],
                                                    Mask(152, -256, mem[981 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[936 len 26],
                                                    mem[988 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1045 len 13],
                                                    Mask(152, -256, mem[1045 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[936 len 26],
                                                    mem[988 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[1045 len 13],
                                                    Mask(152, -256, mem[1045 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
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
                        if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        38,
                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor3[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[167 len 25],
                                    mem[217 len 7]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[275 len 13],
                                    Mask(152, -256, mem[275 len 13]) << 256
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[422 len 26],
                                                mem[474 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[531 len 13],
                                                Mask(152, -256, mem[531 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[422 len 26],
                                                mem[474 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[531 len 13],
                                                Mask(152, -256, mem[531 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[467 len 13],
                                                    Mask(152, -256, mem[467 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[467 len 13],
                                                    Mask(152, -256, mem[467 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[422 len 26],
                                                    mem[474 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[422 len 26],
                                                    mem[474 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[167 len 25],
                                    mem[217 len 7]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[275 len 13],
                                    Mask(152, -256, mem[275 len 13]) << 256
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[422 len 26],
                                                mem[474 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[531 len 13],
                                                Mask(152, -256, mem[531 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[422 len 26],
                                                mem[474 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[531 len 13],
                                                Mask(152, -256, mem[531 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[467 len 13],
                                                    Mask(152, -256, mem[467 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[467 len 13],
                                                    Mask(152, -256, mem[467 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[422 len 26],
                                                    mem[474 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[422 len 26],
                                                    mem[474 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
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
                    37,
                    0x735856533a3a7472616e736665723a20616d6f756e74206578636565647320393620626974,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 
                    32,
                    59,
                    0x645856533a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[319 len 5]
    if not arg1:
        revert with 0, 
                    32,
                    57,
                    0x655856533a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[317 len 7]
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    53,
                    0x655856533a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[277 len 11],
                    Mask(168, -256, mem[277 len 11]) << 256
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    if Mask(96, 0, balanceOf[address(arg1)] + arg2) < balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    47,
                    0x735856533a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                    mem[367 len 17],
                    mem[401 len 15]
    balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] + arg2)
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[address(arg1)]:
        if Mask(96, 0, arg2) > 0:
            if not delegates[address(msg.sender)]:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor3[address(arg1)]] > 0:
                        if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        38,
                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[563 len 13],
                                        Mask(152, -256, mem[563 len 13]) << 256
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                    else:
                        if Mask(96, 0, arg2) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[563 len 13],
                                        Mask(152, -256, mem[563 len 13]) << 256
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
            else:
                if numCheckpoints[stor3[address(msg.sender)]] > 0:
                    if Mask(96, 0, arg2) > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[455 len 25],
                                    mem[505 len 7]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[563 len 13],
                                    Mask(152, -256, mem[563 len 13]) << 256
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor3[address(arg1)]] > 0:
                                if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[710 len 26],
                                                mem[762 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[819 len 13],
                                                Mask(152, -256, mem[819 len 13]) << 256
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    else:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[710 len 26],
                                                mem[762 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[819 len 13],
                                                Mask(152, -256, mem[819 len 13]) << 256
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor3[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[755 len 13],
                                                    Mask(152, -256, mem[755 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[755 len 13],
                                                    Mask(152, -256, mem[755 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor3[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[819 len 13],
                                                    Mask(152, -256, mem[819 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[819 len 13],
                                                    Mask(152, -256, mem[819 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                else:
                    if Mask(96, 0, arg2) > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                    mem[455 len 25],
                                    mem[505 len 7]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[563 len 13],
                                    Mask(152, -256, mem[563 len 13]) << 256
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor3[address(arg1)]] > 0:
                                if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[710 len 26],
                                                mem[762 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[819 len 13],
                                                Mask(152, -256, mem[819 len 13]) << 256
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    else:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[710 len 26],
                                                mem[762 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[819 len 13],
                                                Mask(152, -256, mem[819 len 13]) << 256
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg2)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor3[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[755 len 13],
                                                    Mask(152, -256, mem[755 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[755 len 13],
                                                    Mask(152, -256, mem[755 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor3[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[819 len 13],
                                                    Mask(152, -256, mem[819 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[819 len 13],
                                                    Mask(152, -256, mem[819 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor0:
        revert with 0, 'Token is locked'
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 32, 36, 0x295856533a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[164 len 28], mem[220 len 4]
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 
                        32,
                        59,
                        0x645856533a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[319 len 5]
        if not arg2:
            revert with 0, 
                        32,
                        57,
                        0x655856533a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[317 len 7]
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        53,
                        0x655856533a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[277 len 11],
                        Mask(168, -256, mem[277 len 11]) << 256
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
        if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
            revert with 0, 
                        32,
                        47,
                        0x735856533a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                        mem[367 len 17],
                        mem[401 len 15]
        balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
        emit Transfer(Mask(96, 0, arg3), arg1, arg2);
        if delegates[address(arg1)] != delegates[address(arg2)]:
            if Mask(96, 0, arg3) > 0:
                if not delegates[address(arg1)]:
                    if delegates[address(arg2)]:
                        if numCheckpoints[stor3[address(arg2)]] > 0:
                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            38,
                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                            mem[454 len 26],
                                            mem[506 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[563 len 13],
                                            Mask(152, -256, mem[563 len 13]) << 256
                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                            else:
                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                else:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                            mem[454 len 26],
                                            mem[506 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[563 len 13],
                                            Mask(152, -256, mem[563 len 13]) << 256
                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                            else:
                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                else:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                else:
                    if numCheckpoints[stor3[address(arg1)]] > 0:
                        if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        39,
                                        0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                        mem[455 len 25],
                                        mem[505 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[563 len 13],
                                        Mask(152, -256, mem[563 len 13]) << 256
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if numCheckpoints[stor3[address(arg2)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[819 len 13],
                                                    Mask(152, -256, mem[819 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg2)]] <= 0:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        else:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[819 len 13],
                                                    Mask(152, -256, mem[819 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg2)]] <= 0:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[755 len 13],
                                                        Mask(152, -256, mem[755 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[755 len 13],
                                                        Mask(152, -256, mem[755 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[819 len 13],
                                                        Mask(152, -256, mem[819 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[819 len 13],
                                                        Mask(152, -256, mem[819 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if Mask(96, 0, arg3) > 0:
                            revert with 0, 
                                        32,
                                        39,
                                        0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                        mem[455 len 25],
                                        mem[505 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[563 len 13],
                                        Mask(152, -256, mem[563 len 13]) << 256
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if numCheckpoints[stor3[address(arg2)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[819 len 13],
                                                    Mask(152, -256, mem[819 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg2)]] <= 0:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        else:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[819 len 13],
                                                    Mask(152, -256, mem[819 len 13]) << 256
                                    if numCheckpoints[stor3[address(arg2)]] <= 0:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[755 len 13],
                                                        Mask(152, -256, mem[755 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[646 len 26],
                                                        mem[698 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[755 len 13],
                                                        Mask(152, -256, mem[755 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[819 len 13],
                                                        Mask(152, -256, mem[819 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[819 len 13],
                                                        Mask(152, -256, mem[819 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
    else:
        if allowance[address(arg1)][address(msg.sender)] == test266151307():
            if not arg1:
                revert with 0, 
                            32,
                            59,
                            0x645856533a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[319 len 5]
            if not arg2:
                revert with 0, 
                            32,
                            57,
                            0x655856533a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[317 len 7]
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            53,
                            0x655856533a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[277 len 11],
                            Mask(168, -256, mem[277 len 11]) << 256
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            47,
                            0x735856533a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                            mem[367 len 17],
                            mem[401 len 15]
            balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[address(arg2)]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[address(arg2)]:
                            if numCheckpoints[stor3[address(arg2)]] > 0:
                                if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[454 len 26],
                                                mem[506 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[563 len 13],
                                                Mask(152, -256, mem[563 len 13]) << 256
                                if numCheckpoints[stor3[address(arg2)]] <= 0:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    else:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[454 len 26],
                                                mem[506 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[563 len 13],
                                                Mask(152, -256, mem[563 len 13]) << 256
                                if numCheckpoints[stor3[address(arg2)]] <= 0:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if numCheckpoints[stor3[address(arg1)]] > 0:
                            if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            39,
                                            0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[455 len 25],
                                            mem[505 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[563 len 13],
                                            Mask(152, -256, mem[563 len 13]) << 256
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[819 len 13],
                                                        Mask(152, -256, mem[819 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[819 len 13],
                                                        Mask(152, -256, mem[819 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[646 len 26],
                                                            mem[698 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[755 len 13],
                                                            Mask(152, -256, mem[755 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[646 len 26],
                                                            mem[698 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[755 len 13],
                                                            Mask(152, -256, mem[755 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[710 len 26],
                                                            mem[762 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[819 len 13],
                                                            Mask(152, -256, mem[819 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[710 len 26],
                                                            mem[762 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[819 len 13],
                                                            Mask(152, -256, mem[819 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            39,
                                            0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[455 len 25],
                                            mem[505 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[563 len 13],
                                            Mask(152, -256, mem[563 len 13]) << 256
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[819 len 13],
                                                        Mask(152, -256, mem[819 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[710 len 26],
                                                        mem[762 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[819 len 13],
                                                        Mask(152, -256, mem[819 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[646 len 26],
                                                            mem[698 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[755 len 13],
                                                            Mask(152, -256, mem[755 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[646 len 26],
                                                            mem[698 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[755 len 13],
                                                            Mask(152, -256, mem[755 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[710 len 26],
                                                            mem[762 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[819 len 13],
                                                            Mask(152, -256, mem[819 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[710 len 26],
                                                            mem[762 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[819 len 13],
                                                            Mask(152, -256, mem[819 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
        else:
            if Mask(96, 0, arg3) > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            60,
                            0xfe5856533a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63,
                            mem[284 len 4],
                            Mask(224, -256, mem[284 len 4]) << 256
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 
                            32,
                            59,
                            0x645856533a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[415 len 5]
            if not arg2:
                revert with 0, 
                            32,
                            57,
                            0x655856533a3a5f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[413 len 7]
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            53,
                            0x655856533a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[373 len 11],
                            Mask(168, -256, mem[373 len 11]) << 256
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            47,
                            0x735856533a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77,
                            mem[463 len 17],
                            mem[497 len 15]
            balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[address(arg2)]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[address(arg2)]:
                            if numCheckpoints[stor3[address(arg2)]] > 0:
                                if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[550 len 26],
                                                mem[602 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[659 len 13],
                                                Mask(152, -256, mem[659 len 13]) << 256
                                if numCheckpoints[stor3[address(arg2)]] <= 0:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    else:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                mem[550 len 26],
                                                mem[602 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[659 len 13],
                                                Mask(152, -256, mem[659 len 13]) << 256
                                if numCheckpoints[stor3[address(arg2)]] <= 0:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if numCheckpoints[stor3[address(arg1)]] > 0:
                            if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            39,
                                            0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[551 len 25],
                                            mem[601 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[659 len 13],
                                            Mask(152, -256, mem[659 len 13]) << 256
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[806 len 26],
                                                        mem[858 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[915 len 13],
                                                        Mask(152, -256, mem[915 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[806 len 26],
                                                        mem[858 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[915 len 13],
                                                        Mask(152, -256, mem[915 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[742 len 26],
                                                            mem[794 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[851 len 13],
                                                            Mask(152, -256, mem[851 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[742 len 26],
                                                            mem[794 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[851 len 13],
                                                            Mask(152, -256, mem[851 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[915 len 13],
                                                            Mask(152, -256, mem[915 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[915 len 13],
                                                            Mask(152, -256, mem[915 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            39,
                                            0x655856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77,
                                            mem[551 len 25],
                                            mem[601 len 7]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[659 len 13],
                                            Mask(152, -256, mem[659 len 13]) << 256
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[806 len 26],
                                                        mem[858 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[915 len 13],
                                                        Mask(152, -256, mem[915 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                        mem[806 len 26],
                                                        mem[858 len 6]
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[915 len 13],
                                                        Mask(152, -256, mem[915 len 13]) << 256
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[742 len 26],
                                                            mem[794 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[851 len 13],
                                                            Mask(152, -256, mem[851 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[742 len 26],
                                                            mem[794 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[851 len 13],
                                                            Mask(152, -256, mem[851 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[915 len 13],
                                                            Mask(152, -256, mem[915 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x735856533a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x735856533a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[915 len 13],
                                                            Mask(152, -256, mem[915 len 13]) << 256
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
    return 1
}



}
