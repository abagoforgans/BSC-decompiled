contract main {




// =====================  Runtime code  =====================


#
#  - getBurn(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address pendingOwner;
mapping of uint8 stor103;
uint256 minimumBurnAmount;
address tokenAddress;
address mintAuthorityAddress;
uint16 mintFee; offset 160
uint16 burnFee; offset 176
uint64 stor107; offset 192
address feeRecipientAddress;
mapping of uint8 stor108;
uint256 nextN;
mapping of struct stor110;
uint256 selectorHash;

function mintFee() payable {
    return mintFee
}

function selectorHash() payable {
    return selectorHash
}

function feeRecipient() payable {
    return feeRecipientAddress
}

function status(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor108[arg1])
}

function owner() payable {
    return owner
}

function mintAuthority() payable {
    return mintAuthorityAddress
}

function minimumBurnAmount() payable {
    return minimumBurnAmount
}

function nextN() payable {
    return nextN
}

function pendingOwner() payable {
    return pendingOwner
}

function token() payable {
    return tokenAddress
}

function burnFee() payable {
    return burnFee
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateBurnFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    burnFee = arg1
}

function updateMintFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mintFee = arg1
}

function hashForSignature(bytes32 arg1, uint256 arg2, address arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    return sha3(arg1, arg2, selectorHash, address(arg3), arg4)
}

function updateSelectorHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    selectorHash = arg1
}

function updateMinimumBurnAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minimumBurnAmount = arg1
}

function blacklistRecoverableToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor103[address(arg1)] = 1
}

function claimTokenOwnership() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4e71e0c8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 == owner:
        revert with 0, 'Claimable: invalid new owner'
    if pendingOwner == arg1:
        revert with 0, 'Claimable: invalid new owner'
    pendingOwner = arg1
}

function updateFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x644d696e74476174657761793a2066656520726563697069656e742063616e6e6f74206265203078,
                    mem[204 len 24]
    feeRecipientAddress = arg1
}

function transferTokenOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x10731a65 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x64436c61696d61626c653a2063616c6c6572206973206e6f74207468652070656e64696e67206f776e65,
                    mem[206 len 22]
    if not pendingOwner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x204f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function updateMintAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if mintAuthorityAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x744d696e74476174657761793a2063616c6c6572206973206e6f7420746865206f776e6572206f72206d696e7420617574686f726974,
                        mem[218 len 10]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x794d696e74476174657761793a206d696e74417574686f726974792063616e6e6f742062652073657420746f2061646472657373207a6572,
                    mem[220 len 8]
    mintAuthorityAddress = arg1
    emit LogMintAuthorityUpdated(arg1);
}

function verifySignature(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 
                    32,
                    34,
                    0x7245434453413a207369676e6174757265206c656e67746820697320696e76616c69,
                    mem[ceil32(arg2.length) + 230 len 30]
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    40,
                    0x6445434453413a207369676e61747572652e7320697320696e207468652077726f6e672072616e67,
                    mem[ceil32(arg2.length) + 236 len 24]
    revert with 0, 
                32,
                40,
                0x6f45434453413a207369676e61747572652e7620697320696e207468652077726f6e672072616e67,
                mem[ceil32(arg2.length) + 236 len 24]
}

function mint(bytes32 arg1, uint256 arg2, bytes32 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg4.length) + 192] = arg2
    mem[ceil32(arg4.length) + 224] = selectorHash
    mem[ceil32(arg4.length) + 256] = msg.sender
    mem[ceil32(arg4.length) + 288] = arg3
    mem[ceil32(arg4.length) + 128] = 160
    if stor108[mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]]:
        revert with 0, 
                    32,
                    37,
                    0x734d696e74476174657761793a206e6f6e6365206861736820616c7265616479207370656e,
                    mem[ceil32(arg4.length) + 425 len 27]
    if arg4.length != 65:
        revert with 0, 
                    32,
                    34,
                    0x7245434453413a207369676e6174757265206c656e67746820697320696e76616c69,
                    mem[ceil32(arg4.length) + 422 len 30]
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    40,
                    0x6445434453413a207369676e61747572652e7320697320696e207468652077726f6e672072616e67,
                    mem[ceil32(arg4.length) + 428 len 24]
    revert with 0, 
                32,
                40,
                0x6f45434453413a207369676e61747572652e7620697320696e207468652077726f6e672072616e67,
                mem[ceil32(arg4.length) + 428 len 24]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg1
                emit OwnershipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = arg1
                    emit OwnershipTransferred(0, arg1);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = arg1
                    emit OwnershipTransferred(0, arg1);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
}

function recoverTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor103[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7443616e5265636c61696d546f6b656e733a20746f6b656e206973206e6f74207265636f76657261626c,
                    mem[206 len 22]
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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

function initialize(address arg1, address arg2, address arg3, uint16 arg4, uint16 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    minimumBurnAmount = arg6
    tokenAddress = arg1
    mintFee = arg4
    burnFee = arg5
    stor107 = 0
    if mintAuthorityAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x744d696e74476174657761793a2063616c6c6572206973206e6f7420746865206f776e6572206f72206d696e7420617574686f726974,
                        mem[218 len 10]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x794d696e74476174657761793a206d696e74417574686f726974792063616e6e6f742062652073657420746f2061646472657373207a6572,
                    mem[220 len 8]
    mintAuthorityAddress = arg3
    emit LogMintAuthorityUpdated(arg3);
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x644d696e74476174657761793a2066656520726563697069656e742063616e6e6f74206265203078,
                    mem[204 len 24]
    feeRecipientAddress = arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function burn(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if 0 == arg1.length:
        revert with 0, 'MintGateway: to address is empty'
    if not arg2:
        mem[ceil32(arg1.length) + 128] = 26
        mem[ceil32(arg1.length) + 160] = 'SafeMath: division by zero'
        if 0 > arg2:
            revert with 0, 'MintGateway: fee exceeds amount'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xeb438fc2 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + 256] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 260] = feeRecipientAddress
        mem[ceil32(arg1.length) + 292] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args feeRecipientAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] <= minimumBurnAmount:
            revert with 0, 
                        32,
                        56,
                        0x654d696e74476174657761793a20616d6f756e74206973206c657373207468616e20746865206d696e696d756d206275726e20616d6f756e,
                        mem[ceil32(arg1.length) + 380 len 8]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        _597 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 256 len arg1.length % 32])
        mem[ceil32(arg1.length) + 288] = ext_call.return_data[0]
        mem[ceil32(arg1.length) + 320] = arg1.length
        mem[ceil32(arg1.length) + 352 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit LogBurn(Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 64]), mem[ceil32(arg1.length) + 288 len floor32(arg1.length) - (arg1.length % 32)], nextN, _597);
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 352] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 384 len arg1.length % 32]
            emit LogBurn(Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len 96]), mem[ceil32(arg1.length) + 288 len floor32(arg1.length) - (arg1.length % 32)], nextN, _597);
    else:
        if burnFee * arg2 / arg2 != burnFee:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg1.length) + 229 len 31]
        mem[ceil32(arg1.length) + 128] = 26
        mem[ceil32(arg1.length) + 160] = 'SafeMath: division by zero'
        if burnFee * arg2 / 10000 > arg2:
            revert with 0, 'MintGateway: fee exceeds amount'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xeb438fc2 with:
                gas gas_remaining wei
               args (arg2 - (burnFee * arg2 / 10000))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + 256] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 260] = feeRecipientAddress
        mem[ceil32(arg1.length) + 292] = burnFee * arg2 / 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args feeRecipientAddress, burnFee * arg2 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] <= minimumBurnAmount:
            revert with 0, 
                        32,
                        56,
                        0x654d696e74476174657761793a20616d6f756e74206973206c657373207468616e20746865206d696e696d756d206275726e20616d6f756e,
                        mem[ceil32(arg1.length) + 380 len 8]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        _588 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 256 len arg1.length % 32])
        mem[ceil32(arg1.length) + 288] = ext_call.return_data[0]
        mem[ceil32(arg1.length) + 320] = arg1.length
        mem[ceil32(arg1.length) + 352 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit LogBurn(Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 64]), mem[ceil32(arg1.length) + 288 len floor32(arg1.length) - (arg1.length % 32)], nextN, _588);
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 352] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 384 len arg1.length % 32]
            emit LogBurn(Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len 96]), mem[ceil32(arg1.length) + 288 len floor32(arg1.length) - (arg1.length % 32)], nextN, _588);
    stor110[stor109].field_0 = block.number
    stor110[stor109][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor110[stor109].field_512 = ext_call.return_data[0]
    stor110[stor109].field_768 = 0
    stor110[stor109].field_769 = 0
    stor110[stor109].field_776 = mem[ceil32(arg1.length) + 448 len 31]
    idx = 0
    while stor110[stor109][3].length + 31 / 32 > idx:
        stor110[stor109][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    stor110[stor109][4][].field_0 = Array(len=arg1.length, data=arg1[all])
    nextN++
    return ext_call.return_data[0]
}



}
