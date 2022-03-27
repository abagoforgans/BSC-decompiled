contract main {




// =====================  Runtime code  =====================


#
#  - depositTo(uint256 arg1, address arg2)
#
const name = 'ACryptoS ACryptoS(I)'

const decimals = 18

const max = 10000

const symbol = 'acsACSI'

const DOMAIN_TYPEHASH = sha3(0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const PERMIT_TYPEHASH = sha3(0x735065726d69742861646472657373206f776e65722c61646472657373207370656e6465722c75696e743235362076616c75652c75696e74323536206e6f6e63652c75696e7432353620646561646c696e65)

const DELEGATION_TYPEHASH = sha3(0x6444656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279)


uint128 stor0;
address stor0; offset 96
uint256 totalSupply;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;
address tokenAddress;
uint256 min;
address governanceAddress;
uint32 stor10;
address controllerAddress;
uint256 stor10;

function totalSupply() payable {
    return totalSupply
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[arg1]
}

function governance() payable {
    return governanceAddress
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
}

function controller() payable {
    return address(controllerAddress)
}

function min() payable {
    return min
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setMin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    min = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(controllerAddress) = arg1
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 == -1:
        allowance[msg.sender][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 32, 36, 0x73556e693a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[164 len 28], mem[220 len 4]
        allowance[msg.sender][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function available() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (min * ext_call.return_data[0] / 10000)
}

function balance() payable {
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function getPricePerFullShare() payable {
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply)
    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (2 * 10^18 * ext_call.return_data[0] / totalSupply)
}

function harvest(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if tokenAddress == arg1:
        revert with 0, 'token'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor10)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65556e693a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[202 len 26]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 4)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 == checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if arg2 <= checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if arg3 == -1:
        nonces[address(arg1)]++
        signer = erecover(sha3(0, sha3(sha3(0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), 0x323d59ba14e33d977043724fa99cd14dd59f24d1ac4ec16cc8be90f4affc054a, chainid, this.address), sha3(sha3(0x735065726d69742861646472657373206f776e65722c61646472657373207370656e6465722c75696e743235362076616c75652c75696e74323536206e6f6e63652c75696e7432353620646561646c696e65), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'Uni::permit: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'Uni::permit: unauthorized'
        if block.timestamp > arg4:
            revert with 0, 'Uni::permit: signature expired'
        allowance[address(arg1)][address(arg2)] = test266151307()
        emit Approval(test266151307(), arg1, arg2);
    else:
        if arg3 >= 0x1000000000000000000000000:
            revert with 0, 32, 35, 0x64556e693a3a7065726d69743a20616d6f756e74206578636565647320393620626974, mem[163 len 29], mem[221 len 3]
        nonces[address(arg1)]++
        signer = erecover(sha3(0, sha3(sha3(0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), 0x323d59ba14e33d977043724fa99cd14dd59f24d1ac4ec16cc8be90f4affc054a, chainid, this.address), sha3(sha3(0x735065726d69742861646472657373206f776e65722c61646472657373207370656e6465722c75696e743235362076616c75652c75696e74323536206e6f6e63652c75696e7432353620646561646c696e65), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'Uni::permit: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'Uni::permit: unauthorized'
        if block.timestamp > arg4:
            revert with 0, 'Uni::permit: signature expired'
        allowance[address(arg1)][address(arg2)] = Mask(96, 0, arg3)
        emit Approval(Mask(96, 0, arg3), arg1, arg2);
}

function earn() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
        call tokenAddress with:
           funct uint32(stor10)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(address(controllerAddress))
        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args tokenAddress, 0
    else:
        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
        call tokenAddress with:
           funct uint32(stor10)
             gas gas_remaining wei
            args Mask(224, 32, min * ext_call.return_data[0] / 10000) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(address(controllerAddress))
        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args tokenAddress, min * ext_call.return_data[0] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                        if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[186 len 6]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[186 len 6]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor3[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[185 len 7]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[442 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[531 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[442 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[531 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[378 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[467 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[378 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[467 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[442 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[531 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[442 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[531 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[185 len 7]
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[442 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[531 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[442 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[531 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[378 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[467 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[378 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[467 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[442 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[531 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[442 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[531 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    signer = erecover(sha3(0, sha3(sha3(0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), 0x323d59ba14e33d977043724fa99cd14dd59f24d1ac4ec16cc8be90f4affc054a, chainid, this.address), sha3(sha3(0x6444656c65676174696f6e28616464726573732064656c6567617465652c75696e74323536206e6f6e63652c75696e7432353620657870697279), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    37,
                    0x64556e693a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(184, 0, arg6),
                    mem[738 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 32, 33, 0x73556e693a3a64656c656761746542795369673a20696e76616c6964206e6f6e63, Mask(216, 0, arg6), mem[738 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    37,
                    0x73556e693a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(184, 0, arg6),
                    mem[738 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, arg5 % 281474976710656
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[789 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, arg5 % 281474976710656
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[789 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor3[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32:
                        revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, arg5 % 72057594037927936
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[789 len 13])
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[956 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[1045 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[956 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[1045 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[892 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[981 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[892 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[981 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[956 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[1045 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[956 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[1045 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, arg5 % 72057594037927936
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[789 len 13])
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[956 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[1045 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[956 len 6]
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[1045 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[892 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[981 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[892 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[981 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[956 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[1045 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32)
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, balanceOf[address(signer)] + checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[956 len 6]
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[1045 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_96 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 >= 0x1000000000000000000000000:
            revert with 0, 32, 33, 0x73556e693a3a6d696e743a20616d6f756e74206578636565647320393620626974, mem[225 len 31], mem[287 len 1]
        if Mask(96, 0, arg1) > balanceOf[address(msg.sender)]:
            revert with 0, 32, 36, 0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572, mem[348 len 4]
        balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg1)
        if Mask(96, 0, arg1) > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply - Mask(96, 0, arg1) >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        38,
                        0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                        mem[486 len 26],
                        mem[538 len 6]
        Mask(96, 0, stor0.field_0) = Mask(96, 0, totalSupply - Mask(96, 0, arg1))
        address(stor0.field_96) = 0
        emit Transfer(Mask(96, 0, arg1), msg.sender, 0);
        if not delegates[address(msg.sender)]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[644]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 723 len 22]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[772]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 851 len 22]
        else:
            if Mask(96, 0, arg1) <= 0:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[644]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 723 len 22]
                else:
                    if ext_call.return_data[0] > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[772]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 851 len 22]
            else:
                if not delegates[address(msg.sender)]:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if ext_call.return_data[0] > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] >= 0 / totalSupply:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if numCheckpoints[stor3[address(msg.sender)]]:
                        if Mask(96, 0, arg1) > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                            revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[601 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[691 len 13])
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1), delegates[address(msg.sender)]);
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 0 / totalSupply:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                call tokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / totalSupply) << 224, mem[932 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 979 len 22]
                            else:
                                if ext_call.return_data[0] > 0 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(address(controllerAddress))
                                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[1060 len 4]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1107 len 22]
                        else:
                            if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[804 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[868 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[836]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 915 len 22]
                                else:
                                    if ext_call.return_data[0] > 0 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= 0 / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 0 / totalSupply) << 224, mem[996 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[996 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1043 len 22]
                            else:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[932 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[900]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 979 len 22]
                                else:
                                    if ext_call.return_data[0] > 0 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= 0 / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 0 / totalSupply) << 224, mem[1060 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[1028]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1107 len 22]
                    else:
                        if Mask(96, 0, arg1) > 0:
                            revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[601 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[691 len 13])
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg1)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg1), delegates[address(msg.sender)]);
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 0 / totalSupply:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                call tokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / totalSupply) << 224, mem[932 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 979 len 22]
                            else:
                                if ext_call.return_data[0] > 0 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(address(controllerAddress))
                                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[1060 len 4]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1107 len 22]
                        else:
                            if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg1), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[804 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[868 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[836]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 915 len 22]
                                else:
                                    if ext_call.return_data[0] > 0 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= 0 / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 0 / totalSupply) << 224, mem[996 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[996 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1043 len 22]
                            else:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg1)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg1), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[932 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[900]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 979 len 22]
                                else:
                                    if ext_call.return_data[0] > 0 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= 0 / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 0 / totalSupply) << 224, mem[1060 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[1028]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1107 len 22]
    else:
        if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 >= 0x1000000000000000000000000:
            revert with 0, 32, 33, 0x73556e693a3a6d696e743a20616d6f756e74206578636565647320393620626974, mem[225 len 31], mem[287 len 1]
        if Mask(96, 0, arg1) > balanceOf[address(msg.sender)]:
            revert with 0, 32, 36, 0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572, mem[348 len 4]
        balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg1)
        if Mask(96, 0, arg1) > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply - Mask(96, 0, arg1) >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        38,
                        0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                        mem[486 len 26],
                        mem[538 len 6]
        Mask(96, 0, stor0.field_0) = Mask(96, 0, totalSupply - Mask(96, 0, arg1))
        address(stor0.field_96) = 0
        emit Transfer(Mask(96, 0, arg1), msg.sender, 0);
        if not delegates[address(msg.sender)]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[644]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 723 len 22]
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[772]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 851 len 22]
        else:
            if Mask(96, 0, arg1) <= 0:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[644]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 723 len 22]
                else:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[772]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 851 len 22]
            else:
                if not delegates[address(msg.sender)]:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if numCheckpoints[stor3[address(msg.sender)]]:
                        if Mask(96, 0, arg1) > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                            revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[601 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[691 len 13])
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1), delegates[address(msg.sender)]);
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                call tokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[932 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 979 len 22]
                            else:
                                if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(address(controllerAddress))
                                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[1060 len 4]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1107 len 22]
                        else:
                            if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[804 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[868 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[836]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 915 len 22]
                                else:
                                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[996 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[996 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1043 len 22]
                            else:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg1), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[932 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[900]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 979 len 22]
                                else:
                                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[1060 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[1028]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1107 len 22]
                    else:
                        if Mask(96, 0, arg1) > 0:
                            revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[601 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[691 len 13])
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg1)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg1), delegates[address(msg.sender)]);
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                call tokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[932 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 979 len 22]
                            else:
                                if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(address(controllerAddress))
                                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[1060 len 4]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1107 len 22]
                        else:
                            if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg1), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[804 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[868 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[836]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 915 len 22]
                                else:
                                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[996 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[996 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1043 len 22]
                            else:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg1)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg1), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[932 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[900]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 979 len 22]
                                else:
                                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[1060 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[1028]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1107 len 22]
}

function withdrawAll() payable {
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if balanceOf[address(msg.sender)] >= 0x1000000000000000000000000:
            revert with 0, 32, 33, 0x73556e693a3a6d696e743a20616d6f756e74206578636565647320393620626974, mem[225 len 31], mem[287 len 1]
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 32, 36, 0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572, mem[348 len 4]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply - balanceOf[address(msg.sender)] >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        38,
                        0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                        mem[486 len 26],
                        mem[538 len 6]
        Mask(96, 0, stor0.field_0) = Mask(96, 0, totalSupply - balanceOf[address(msg.sender)])
        address(stor0.field_96) = 0
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        if not delegates[address(msg.sender)]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[644]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 723 len 22]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[772]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 851 len 22]
        else:
            if balanceOf[address(msg.sender)] <= 0:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[644]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 723 len 22]
                else:
                    if ext_call.return_data[0] > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[772]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 851 len 22]
            else:
                if not delegates[address(msg.sender)]:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if ext_call.return_data[0] > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] >= 0 / totalSupply:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if numCheckpoints[stor3[address(msg.sender)]]:
                        if balanceOf[address(msg.sender)] > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                            revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[601 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[691 len 13])
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 0 / totalSupply:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                call tokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / totalSupply) << 224, mem[932 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 979 len 22]
                            else:
                                if ext_call.return_data[0] > 0 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(address(controllerAddress))
                                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[1060 len 4]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1107 len 22]
                        else:
                            if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[804 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[868 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[836]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 915 len 22]
                                else:
                                    if ext_call.return_data[0] > 0 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= 0 / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 0 / totalSupply) << 224, mem[996 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[996 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1043 len 22]
                            else:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[932 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[900]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 979 len 22]
                                else:
                                    if ext_call.return_data[0] > 0 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= 0 / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 0 / totalSupply) << 224, mem[1060 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[1028]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1107 len 22]
                    else:
                        if balanceOf[address(msg.sender)] > 0:
                            revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[601 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[691 len 13])
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 0 / totalSupply:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                call tokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / totalSupply) << 224, mem[932 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 979 len 22]
                            else:
                                if ext_call.return_data[0] > 0 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(address(controllerAddress))
                                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[1060 len 4]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1107 len 22]
                        else:
                            if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                                emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[804 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[868 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[836]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 915 len 22]
                                else:
                                    if ext_call.return_data[0] > 0 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= 0 / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 0 / totalSupply) << 224, mem[996 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[996 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1043 len 22]
                            else:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 0 / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / totalSupply) << 224, mem[932 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[900]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 979 len 22]
                                else:
                                    if ext_call.return_data[0] > 0 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (0 / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= 0 / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 0 / totalSupply) << 224, mem[1060 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[1028]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1107 len 22]
    else:
        if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / 2 * ext_call.return_data[0] != balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if balanceOf[address(msg.sender)] >= 0x1000000000000000000000000:
            revert with 0, 32, 33, 0x73556e693a3a6d696e743a20616d6f756e74206578636565647320393620626974, mem[225 len 31], mem[287 len 1]
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 32, 36, 0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572, mem[348 len 4]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply - balanceOf[address(msg.sender)] >= 0x1000000000000000000000000:
            revert with 0, 
                        32,
                        38,
                        0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                        mem[486 len 26],
                        mem[538 len 6]
        Mask(96, 0, stor0.field_0) = Mask(96, 0, totalSupply - balanceOf[address(msg.sender)])
        address(stor0.field_96) = 0
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        if not delegates[address(msg.sender)]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[644]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 723 len 22]
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[772]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 851 len 22]
        else:
            if balanceOf[address(msg.sender)] <= 0:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[644]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 723 len 22]
                else:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                    else:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[772]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 851 len 22]
            else:
                if not delegates[address(msg.sender)]:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call tokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if numCheckpoints[stor3[address(msg.sender)]]:
                        if balanceOf[address(msg.sender)] > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                            revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[601 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[691 len 13])
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                call tokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[932 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 979 len 22]
                            else:
                                if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(address(controllerAddress))
                                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[1060 len 4]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1107 len 22]
                        else:
                            if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[804 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[868 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[836]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 915 len 22]
                                else:
                                    if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[996 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[996 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1043 len 22]
                            else:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[932 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[900]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 979 len 22]
                                else:
                                    if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[1060 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[1028]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1107 len 22]
                    else:
                        if balanceOf[address(msg.sender)] > 0:
                            revert with 0, 32, 39, 0x29556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e, mem[601 len 7]
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[691 len 13])
                        if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                call tokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[932 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[900]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 979 len 22]
                            else:
                                if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(address(controllerAddress))
                                call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[1060 len 4]
                                else:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[1028]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1107 len 22]
                        else:
                            if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                                emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[804 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[868 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[836]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 915 len 22]
                                else:
                                    if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[996 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[932 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[996 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[964]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1043 len 22]
                            else:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[868 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                    call tokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[932 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[900]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 979 len 22]
                                else:
                                    if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[1060 len 4]
                                    else:
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[996 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                                        call tokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[1060 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[1028 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[1028]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1107 len 22]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg1),
                        mem[356 len 4]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalSupply:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            38,
                            0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                            mem[458 len 26],
                            mem[510 len 6]
            Mask(96, 0, stor0.field_0) = Mask(96, 0, stor0.field_0)
            address(stor0.field_96) = 0
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 32, 36, 0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572, mem[576 len 4]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)]
            emit Transfer(0, 0, msg.sender);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[744 len 64] = 0, address(controllerAddress), 0
                call tokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[808 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[854 len 22]
                else:
                    mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[776]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 855 len 22]
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, 0
            else:
                if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[681 len 31]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[744 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                call tokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[808 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[854 len 22]
                else:
                    mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[776]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 855 len 22]
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, min * ext_call.return_data[0] / 10000
        else:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if 0 / 2 * ext_call.return_data[0] >= 0x1000000000000000000000000:
                revert with 0, 32, 33, 0x73556e693a3a6d696e743a20616d6f756e74206578636565647320393620626974, mem[421 len 31], mem[483 len 1]
            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            38,
                            0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                            mem[522 len 26],
                            mem[574 len 6]
            Mask(96, 0, stor0.field_0) = Mask(96, 0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply)
            address(stor0.field_96) = 0
            if Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                revert with 0, 32, 36, 0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572, mem[640 len 4]
            balanceOf[address(msg.sender)] = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)])
            emit Transfer(Mask(96, 0, 0 / 2 * ext_call.return_data[0]), 0, msg.sender);
            if 0 == delegates[address(msg.sender)]:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[808 len 64] = 0, address(controllerAddress), 0
                    call tokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[872 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                    else:
                        mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[840]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 919 len 22]
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, 0
                else:
                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[808 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                    call tokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[872 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                    else:
                        mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[840]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 919 len 22]
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, min * ext_call.return_data[0] / 10000
            else:
                if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) <= 0:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[808 len 64] = 0, address(controllerAddress), 0
                        call tokenAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[872 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                        else:
                            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[840]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, 0
                    else:
                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[808 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                        call tokenAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[872 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                        else:
                            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[840]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, min * ext_call.return_data[0] / 10000
                else:
                    if not delegates[address(msg.sender)]:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[808 len 64] = 0, address(controllerAddress), 0
                            call tokenAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[872 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                            else:
                                mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[840]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 919 len 22]
                            require ext_code.size(address(controllerAddress))
                            call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args tokenAddress, 0
                        else:
                            if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[808 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                            call tokenAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[872 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                            else:
                                mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[840]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 919 len 22]
                            require ext_code.size(address(controllerAddress))
                            call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args tokenAddress, min * ext_call.return_data[0] / 10000
                    else:
                        if numCheckpoints[stor3[address(msg.sender)]]:
                            if Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32) < checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                                revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[734 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                            Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[823 len 13])
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[1064 len 64] = 0, address(controllerAddress), 0
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1128 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                    else:
                                        mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[1096]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, 0
                                else:
                                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1001 len 31]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[1064 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1128 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                    else:
                                        mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[1096]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, min * ext_call.return_data[0] / 10000
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1000 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1064 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1110 len 22]
                                        else:
                                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1032]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1111 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[937 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1000 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1064 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1110 len 22]
                                        else:
                                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1032]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1111 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1064 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1128 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                        else:
                                            mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1096]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1175 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1001 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1064 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1128 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                        else:
                                            mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1096]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1175 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                        else:
                            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) < 0:
                                revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[734 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                            Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[823 len 13])
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[1064 len 64] = 0, address(controllerAddress), 0
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1128 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                    else:
                                        mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[1096]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, 0
                                else:
                                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1001 len 31]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[1064 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1128 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                    else:
                                        mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[1096]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, min * ext_call.return_data[0] / 10000
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                    emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1000 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1064 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1110 len 22]
                                        else:
                                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1032]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1111 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[937 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1000 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1064 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1110 len 22]
                                        else:
                                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1032]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1111 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1064 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1128 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                        else:
                                            mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1096]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1175 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1001 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1064 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1128 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                        else:
                                            mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1096]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1175 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalSupply:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            38,
                            0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                            mem[ceil32(return_data.size) + 459 len 26],
                            mem[ceil32(return_data.size) + 511 len 6]
            Mask(96, 0, stor0.field_0) = Mask(96, 0, stor0.field_0)
            address(stor0.field_96) = 0
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            36,
                            0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572,
                            mem[ceil32(return_data.size) + 577 len 4]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)]
            emit Transfer(0, 0, msg.sender);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = 0, address(controllerAddress), 0
                call tokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 855 len 22]
                else:
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, 0
            else:
                if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 682 len 31]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                call tokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 855 len 22]
                else:
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, min * ext_call.return_data[0] / 10000
        else:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if 0 / 2 * ext_call.return_data[0] >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            33,
                            0x73556e693a3a6d696e743a20616d6f756e74206578636565647320393620626974,
                            mem[ceil32(return_data.size) + 422 len 31],
                            mem[ceil32(return_data.size) + 484 len 1]
            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            38,
                            0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                            mem[ceil32(return_data.size) + 523 len 26],
                            mem[ceil32(return_data.size) + 575 len 6]
            Mask(96, 0, stor0.field_0) = Mask(96, 0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply)
            address(stor0.field_96) = 0
            if Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            36,
                            0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572,
                            mem[ceil32(return_data.size) + 641 len 4]
            balanceOf[address(msg.sender)] = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)])
            emit Transfer(Mask(96, 0, 0 / 2 * ext_call.return_data[0]), 0, msg.sender);
            if 0 == delegates[address(msg.sender)]:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), 0
                    call tokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 919 len 22]
                    else:
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, 0
                else:
                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 746 len 31]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                    call tokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 919 len 22]
                    else:
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, min * ext_call.return_data[0] / 10000
            else:
                if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) <= 0:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), 0
                        call tokenAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 919 len 22]
                        else:
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, 0
                    else:
                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 746 len 31]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                        call tokenAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 919 len 22]
                        else:
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, min * ext_call.return_data[0] / 10000
                else:
                    if not delegates[address(msg.sender)]:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), 0
                            call tokenAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                            else:
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            require ext_code.size(address(controllerAddress))
                            call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args tokenAddress, 0
                        else:
                            if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 746 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                            call tokenAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                            else:
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            require ext_code.size(address(controllerAddress))
                            call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args tokenAddress, min * ext_call.return_data[0] / 10000
                    else:
                        if numCheckpoints[stor3[address(msg.sender)]]:
                            if Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32) < checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76,
                                            mem[ceil32(return_data.size) + 735 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                            Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 824 len 13])
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), 0
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1175 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 1097]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, 0
                                else:
                                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 1002 len 31]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1175 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 1097]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, min * ext_call.return_data[0] / 10000
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1001 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1065 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1111 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1033]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 938 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1001 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1065 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1111 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1033]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1097]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 1002 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1097]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                        else:
                            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76,
                                            mem[ceil32(return_data.size) + 735 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                            Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 824 len 13])
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), 0
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1175 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 1097]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, 0
                                else:
                                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 1002 len 31]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1175 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 1097]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, min * ext_call.return_data[0] / 10000
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                    emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1001 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1065 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1111 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1033]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 938 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1001 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1065 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1111 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1033]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1097]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 1002 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1097]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositAll() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
    mem[352 len 4] = ext_call.return_data[20 len 4]
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        ext_call.return_data[20 len 4],
                        mem[356 len 4]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalSupply:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            38,
                            0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                            mem[458 len 26],
                            mem[510 len 6]
            Mask(96, 0, stor0.field_0) = Mask(96, 0, stor0.field_0)
            address(stor0.field_96) = 0
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 32, 36, 0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572, mem[576 len 4]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)]
            emit Transfer(0, 0, msg.sender);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[744 len 64] = 0, address(controllerAddress), 0
                call tokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[808 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[854 len 22]
                else:
                    mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[776]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 855 len 22]
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, 0
            else:
                if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[681 len 31]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[744 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                call tokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[808 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[854 len 22]
                else:
                    mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[776]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 855 len 22]
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, min * ext_call.return_data[0] / 10000
        else:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if 0 / 2 * ext_call.return_data[0] >= 0x1000000000000000000000000:
                revert with 0, 32, 33, 0x73556e693a3a6d696e743a20616d6f756e74206578636565647320393620626974, mem[421 len 31], mem[483 len 1]
            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            38,
                            0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                            mem[522 len 26],
                            mem[574 len 6]
            Mask(96, 0, stor0.field_0) = Mask(96, 0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply)
            address(stor0.field_96) = 0
            if Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                revert with 0, 32, 36, 0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572, mem[640 len 4]
            balanceOf[address(msg.sender)] = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)])
            emit Transfer(Mask(96, 0, 0 / 2 * ext_call.return_data[0]), 0, msg.sender);
            if 0 == delegates[address(msg.sender)]:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[808 len 64] = 0, address(controllerAddress), 0
                    call tokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[872 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                    else:
                        mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[840]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 919 len 22]
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, 0
                else:
                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[808 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                    call tokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[872 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                    else:
                        mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[840]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 919 len 22]
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, min * ext_call.return_data[0] / 10000
            else:
                if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) <= 0:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[808 len 64] = 0, address(controllerAddress), 0
                        call tokenAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[872 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                        else:
                            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[840]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, 0
                    else:
                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[808 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                        call tokenAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[872 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                        else:
                            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[840]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, min * ext_call.return_data[0] / 10000
                else:
                    if not delegates[address(msg.sender)]:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[808 len 64] = 0, address(controllerAddress), 0
                            call tokenAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[872 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                            else:
                                mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[840]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 919 len 22]
                            require ext_code.size(address(controllerAddress))
                            call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args tokenAddress, 0
                        else:
                            if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[808 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                            call tokenAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[872 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[918 len 22]
                            else:
                                mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[840]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 919 len 22]
                            require ext_code.size(address(controllerAddress))
                            call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args tokenAddress, min * ext_call.return_data[0] / 10000
                    else:
                        if numCheckpoints[stor3[address(msg.sender)]]:
                            if Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32) < checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                                revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[734 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                            Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[823 len 13])
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[1064 len 64] = 0, address(controllerAddress), 0
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1128 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                    else:
                                        mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[1096]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, 0
                                else:
                                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1001 len 31]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[1064 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1128 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                    else:
                                        mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[1096]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, min * ext_call.return_data[0] / 10000
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1000 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1064 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1110 len 22]
                                        else:
                                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1032]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1111 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[937 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1000 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1064 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1110 len 22]
                                        else:
                                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1032]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1111 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1064 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1128 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                        else:
                                            mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1096]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1175 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1001 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1064 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1128 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                        else:
                                            mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1096]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1175 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                        else:
                            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) < 0:
                                revert with 0, 32, 38, 0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76, mem[734 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                            Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[823 len 13])
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[1064 len 64] = 0, address(controllerAddress), 0
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1128 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                    else:
                                        mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[1096]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, 0
                                else:
                                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1001 len 31]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[1064 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1128 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                    else:
                                        mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[1096]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, min * ext_call.return_data[0] / 10000
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                    emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1000 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1064 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1110 len 22]
                                        else:
                                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1032]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1111 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[937 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1000 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1064 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1110 len 22]
                                        else:
                                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1032]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1111 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1064 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[1128 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                        else:
                                            mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1096]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1175 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1001 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[1064 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[1128 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1174 len 22]
                                        else:
                                            mem[1096 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[1096]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 1175 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalSupply:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            38,
                            0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                            mem[ceil32(return_data.size) + 459 len 26],
                            mem[ceil32(return_data.size) + 511 len 6]
            Mask(96, 0, stor0.field_0) = Mask(96, 0, stor0.field_0)
            address(stor0.field_96) = 0
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            36,
                            0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572,
                            mem[ceil32(return_data.size) + 577 len 4]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)]
            emit Transfer(0, 0, msg.sender);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = 0, address(controllerAddress), 0
                call tokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 855 len 22]
                else:
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, 0
            else:
                if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 682 len 31]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 745 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                call tokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 809 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 855 len 22]
                else:
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len 22]
                require ext_code.size(address(controllerAddress))
                call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args tokenAddress, min * ext_call.return_data[0] / 10000
        else:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if 0 / 2 * ext_call.return_data[0] >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            33,
                            0x73556e693a3a6d696e743a20616d6f756e74206578636565647320393620626974,
                            mem[ceil32(return_data.size) + 422 len 31],
                            mem[ceil32(return_data.size) + 484 len 1]
            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply >= 0x1000000000000000000000000:
                revert with 0, 
                            32,
                            38,
                            0x73556e693a3a6d696e743a20746f74616c537570706c79206578636565647320393620626974,
                            mem[ceil32(return_data.size) + 523 len 26],
                            mem[ceil32(return_data.size) + 575 len 6]
            Mask(96, 0, stor0.field_0) = Mask(96, 0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]) + totalSupply)
            address(stor0.field_96) = 0
            if Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            36,
                            0xfe556e693a3a6d696e743a207472616e7366657220616d6f756e74206f766572,
                            mem[ceil32(return_data.size) + 641 len 4]
            balanceOf[address(msg.sender)] = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)])
            emit Transfer(Mask(96, 0, 0 / 2 * ext_call.return_data[0]), 0, msg.sender);
            if 0 == delegates[address(msg.sender)]:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), 0
                    call tokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 919 len 22]
                    else:
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, 0
                else:
                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 746 len 31]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                    call tokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 919 len 22]
                    else:
                        mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 841]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 920 len 22]
                    require ext_code.size(address(controllerAddress))
                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args tokenAddress, min * ext_call.return_data[0] / 10000
            else:
                if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) <= 0:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), 0
                        call tokenAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 919 len 22]
                        else:
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, 0
                    else:
                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 746 len 31]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                        call tokenAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 919 len 22]
                        else:
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len 22]
                        require ext_code.size(address(controllerAddress))
                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args tokenAddress, min * ext_call.return_data[0] / 10000
                else:
                    if not delegates[address(msg.sender)]:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), 0
                            call tokenAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                            else:
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            require ext_code.size(address(controllerAddress))
                            call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args tokenAddress, 0
                        else:
                            if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 746 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                            call tokenAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                            else:
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len 22]
                            require ext_code.size(address(controllerAddress))
                            call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args tokenAddress, min * ext_call.return_data[0] / 10000
                    else:
                        if numCheckpoints[stor3[address(msg.sender)]]:
                            if Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32) < checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76,
                                            mem[ceil32(return_data.size) + 735 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                            Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 824 len 13])
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), 0
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1175 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 1097]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, 0
                                else:
                                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 1002 len 31]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1175 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 1097]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, min * ext_call.return_data[0] / 10000
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1001 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1065 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1111 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1033]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 938 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1001 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1065 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1111 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1033]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32)
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, (0 / 2 * ext_call.return_data[0]) + checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1097]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 1002 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1097]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                        else:
                            if Mask(96, 0, 0 / 2 * ext_call.return_data[0]) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73556e693a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f76,
                                            mem[ceil32(return_data.size) + 735 len 6]
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x73556e693a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                            Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(return_data.size) + 824 len 13])
                            if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), 0
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1175 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 1097]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, 0
                                else:
                                    if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 1002 len 31]
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                    call tokenAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 1175 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 1097]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                    require ext_code.size(address(controllerAddress))
                                    call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args tokenAddress, min * ext_call.return_data[0] / 10000
                            else:
                                if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                    emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1001 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1065 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1111 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1033]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 938 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1001 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1065 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1111 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1033]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
                                else:
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, 0 / 2 * ext_call.return_data[0])
                                    numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, 0 / 2 * ext_call.return_data[0]), delegates[address(msg.sender)]);
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), 0
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args 0, Mask(224, 32, 0, address(controllerAddress), 0) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1097]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, 0
                                    else:
                                        if min * ext_call.return_data[0] / ext_call.return_data[0] != min:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 1002 len 31]
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if not ext_code.hash(tokenAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[ceil32(return_data.size) + 1065 len 64] = 0, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32
                                        call tokenAddress with:
                                           funct uint32(stor10)
                                             gas gas_remaining wei
                                            args min * ext_call.return_data[0] / 10000, Mask(224, 32, address(controllerAddress), Mask(224, 32, min * ext_call.return_data[0] / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 1129 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 1175 len 22]
                                        else:
                                            mem[ceil32(return_data.size) + 1097 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 1097]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 1176 len 22]
                                        require ext_code.size(address(controllerAddress))
                                        call address(controllerAddress).earn(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args tokenAddress, min * ext_call.return_data[0] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
