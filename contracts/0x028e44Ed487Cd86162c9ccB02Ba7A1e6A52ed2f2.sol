contract main {




// =====================  Runtime code  =====================


const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


address owner;
address tokenAddress;
address aTokenAddress;
address treasuryWalletAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function treasuryWallet() payable {
    return treasuryWalletAddress
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
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

function aToken() payable {
    return aTokenAddress
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTreasuryWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryWalletAddress = arg1
    return 1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
    aTokenAddress = arg1
    return 1
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function totalSupply() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function decimals() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(aTokenAddress)
    call aTokenAddress.0x39509351 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(aTokenAddress)
    call aTokenAddress.0xa457c2d7 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not treasuryWalletAddress:
        revert with 0, 'BEP20: mint to the zero address'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args treasuryWalletAddress, treasuryWalletAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(arg1, 0, treasuryWalletAddress);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654445534952453a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[205 len 23]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 5)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor6[address(arg1)] + -(uint32(stor6[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function name() payable {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[64] = _7 + ceil32(return_data.size) + 128
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[64] = floor32(_7) + ceil32(return_data.size) + 160
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}

function symbol() payable {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[64] = _7 + ceil32(return_data.size) + 128
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[64] = floor32(_7) + ceil32(return_data.size) + 160
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args treasuryWalletAddress, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor4[address(arg1)]]:
                    if arg2 + checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 32, arg2) >> 32)
                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_256 = arg2 + checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_256 = arg2 + checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 32, arg2) >> 32)
                    if numCheckpoints[stor4[address(arg1)]] <= 0:
                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(arg1)]][stor6[stor4[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor4[address(arg1)]] = uint32(numCheckpoints[stor4[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if ext_call.return_data[0] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                            else:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                            else:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
            else:
                if numCheckpoints[stor4[address(msg.sender)]]:
                    if ext_call.return_data[0] > checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                    if numCheckpoints[stor4[address(msg.sender)]] <= 0:
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_256 = checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256 - ext_call.return_data[0]
                        numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                    else:
                        if checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256 -= ext_call.return_data[0]
                            emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                        else:
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_256 = checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256 - ext_call.return_data[0]
                            numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                else:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                    if numCheckpoints[stor4[address(msg.sender)]] <= 0:
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_256 = -ext_call.return_data[0]
                        numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                    else:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                    else:
                        if checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]] - 1 << 224].field_256 = -ext_call.return_data[0]
                            emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                        else:
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(msg.sender)]][stor6[stor4[address(msg.sender)]]].field_256 = -ext_call.return_data[0]
                            numCheckpoints[stor4[address(msg.sender)]] = uint32(numCheckpoints[stor4[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 
                        32,
                        40,
                        0x734445534952453a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                        address(arg6),
                        mem[_7 + ceil32(return_data.size) + 706 len 4]
        nonces[address(signer)]++
        if arg2 != nonces[address(signer)]:
            revert with 0, 
                        32,
                        36,
                        0x644445534952453a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                        Mask(192, 0, arg6),
                        mem[_7 + ceil32(return_data.size) + 706 len 4]
        if block.timestamp > arg3:
            revert with 0, 
                        32,
                        40,
                        0x734445534952453a3a64656c656761746542795369673a207369676e617475726520657870697265,
                        address(arg6),
                        mem[_7 + ceil32(return_data.size) + 706 len 4]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(signer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if delegates[address(signer)] != arg1:
            if ext_call.return_data[0] > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        if numCheckpoints[address(arg1)]:
                            if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                            Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                else:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                        else:
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                            Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                else:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                else:
                    if numCheckpoints[stor4[address(signer)]]:
                        if ext_call.return_data[0] > checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 728 len 10])
                        if numCheckpoints[stor4[address(signer)]] <= 0:
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_256 = checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0]
                            numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 888 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 888 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                        else:
                            if checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 -= ext_call.return_data[0]
                                emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 824 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                    else:
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 824 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                            else:
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_256 = checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0]
                                numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 888 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                    else:
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 888 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                    else:
                        if ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 728 len 10])
                        if numCheckpoints[stor4[address(signer)]] <= 0:
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_256 = -ext_call.return_data[0]
                            numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 888 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 888 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                        else:
                            if checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 = -ext_call.return_data[0]
                                emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 824 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                    else:
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 824 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                            else:
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_256 = -ext_call.return_data[0]
                                numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                                emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 888 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                    else:
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[_7 + ceil32(return_data.size) + 888 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
    else:
        mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
        signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[ceil32(return_data.size) + 128 len mem[ceil32(return_data.size) + 96]]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 
                        32,
                        40,
                        0x734445534952453a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                        address(arg6),
                        mem[floor32(_7) + ceil32(return_data.size) + 738 len 4]
        nonces[address(signer)]++
        if arg2 != nonces[address(signer)]:
            revert with 0, 
                        32,
                        36,
                        0x644445534952453a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                        Mask(192, 0, arg6),
                        mem[floor32(_7) + ceil32(return_data.size) + 738 len 4]
        if block.timestamp > arg3:
            revert with 0, 
                        32,
                        40,
                        0x734445534952453a3a64656c656761746542795369673a207369676e617475726520657870697265,
                        address(arg6),
                        mem[floor32(_7) + ceil32(return_data.size) + 738 len 4]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(signer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if delegates[address(signer)] != arg1:
            if ext_call.return_data[0] > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        if numCheckpoints[address(arg1)]:
                            if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                            Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                else:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                        else:
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                            Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                else:
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                else:
                    if numCheckpoints[stor4[address(signer)]]:
                        if ext_call.return_data[0] > checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 760 len 10])
                        if numCheckpoints[stor4[address(signer)]] <= 0:
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_256 = checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0]
                            numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 920 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 920 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                        else:
                            if checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 -= ext_call.return_data[0]
                                emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 856 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                    else:
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 856 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                            else:
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_256 = checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0]
                                numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256, checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 - ext_call.return_data[0], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 920 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                    else:
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 920 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                    else:
                        if ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 760 len 10])
                        if numCheckpoints[stor4[address(signer)]] <= 0:
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_256 = -ext_call.return_data[0]
                            numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 920 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 920 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                        else:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                        else:
                            if checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]] - 1 << 224].field_256 = -ext_call.return_data[0]
                                emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 856 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                    else:
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 856 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
                            else:
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor4[address(signer)]][stor6[stor4[address(signer)]]].field_256 = -ext_call.return_data[0]
                                numCheckpoints[stor4[address(signer)]] = uint32(numCheckpoints[stor4[address(signer)]] + 1)
                                emit DelegateVotesChanged(0, -ext_call.return_data[0], delegates[address(signer)]);
                                if arg1:
                                    if numCheckpoints[address(arg1)]:
                                        if ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 920 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 += ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, ext_call.return_data[0] + checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256, arg1);
                                    else:
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x654445534952453a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[floor32(_7) + ceil32(return_data.size) + 920 len 10])
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[address(arg1)][stor6[address(arg1)] - 1 << 224].field_256 = ext_call.return_data[0]
                                            else:
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor6[address(arg1)]].field_256 = ext_call.return_data[0]
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, ext_call.return_data[0], arg1);
}



}
