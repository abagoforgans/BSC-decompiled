contract main {




// =====================  Runtime code  =====================


#
#  - getModules()
#  - getModulesPaginated(address arg1, uint256 arg2)
#
const NAME = 'Gnosis Safe'

const VERSION = ''


address stor0;
mapping of struct stor1;
mapping of struct stor2;
uint256 stor3;
uint256 threshold;
uint256 nonce;
uint256 domainSeparator;
mapping of uint256 signedMessages;
mapping of uint256 approvedHashes;
uint128 stor6C9A; offset 160
address stor6C9A;
uint256 stor6C9A;

function signedMessages(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return signedMessages[arg1]
}

function approvedHashes(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return approvedHashes[arg1][arg2]
}

function nonce() {
    return nonce
}

function getThreshold() {
    return threshold
}

function domainSeparator() {
    return domainSeparator
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    if 1 == arg1:
        return arg1 != 1
    return bool(stor2[address(arg1)].field_0)
}

function isModuleEnabled(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        return arg1 != 1
    return bool(stor1[address(arg1)].field_0)
}

function approveHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender].field_0:
        revert with 0, 'Only owners can approve a hash'
    approvedHashes[msg.sender][arg1] = 1
    emit ApproveHash(arg1, msg.sender);
}

function _fallback() payable {
    if msg.value > 0:
    if not calldata.size:
    if not address(stor6C9A.field_0):
    call uint256(stor6C9A.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function setFallbackHandler(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    address(stor6C9A.field_0) = arg1
    Mask(96, 0, stor6C9A.field_160) = 0
}

function getOwners() {
    if stor3:
        mem[128 len 32 * stor3] = code.data[14322 len 32 * stor3]
    idx = stor2[1].field_0
    s = 0
    while address(idx) != 1:
        require s < stor3
        mem[(32 * s) + 128] = address(idx)
        mem[0] = address(idx)
        mem[32] = 2
        idx = stor2[address(idx)].field_0
        s = s + 1
        continue 
    mem[(32 * stor3) + 192 len floor32(stor3)] = mem[128 len floor32(stor3)]
    return Array(len=stor3, data=mem[128 len floor32(stor3)], mem[(32 * stor3) + floor32(stor3) + 192 len (32 * stor3) - floor32(stor3)]), 
}

function getMessageHash(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]))
}

function changeMasterCopy(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
    emit ChangedMasterCopy(arg1);
}

function enableModule(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'Invalid module address provided'
    if 1 == arg1:
        revert with 0, 'Invalid module address provided'
    if stor1[address(arg1)].field_0:
        revert with 0, 'Module has already been added'
    stor1[arg1].field_0 = stor1[1].field_0
    stor1[1].field_0 = arg1
    emit EnabledModule(arg1);
}

function disableModule(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg2:
        revert with 0, 'Invalid module address provided'
    if 1 == arg2:
        revert with 0, 'Invalid module address provided'
    if arg2 != stor1[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64496e76616c696420707265764d6f64756c652c206d6f64756c6520706169722070726f76696465,
                    mem[204 len 24]
    stor1[arg1].field_0 = stor1[address(arg2)].field_0
    stor1[address(arg2)].field_0 = 0
    emit DisabledModule(arg2);
}

function changeThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if arg1 > stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                    mem[199 len 29]
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                    mem[200 len 28]
    threshold = arg1
    emit ChangedThreshold(arg1);
}

function signMessage(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    signedMessages[0][0][stor6][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])] = 1
    emit SignMsg(sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])));
}

function getTransactionHash(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = arg10
    mem[ceil32(arg3.length) + 128] = 352
    return sha3(0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]))
}

function swapOwner(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg3:
        revert with 0, 'dInvalid owner address provided'
    if 1 == arg3:
        revert with 0, 'dInvalid owner address provided'
    if stor2[address(arg3)].field_0:
        revert with 0, 'Address is already an owner'
    if not arg2:
        revert with 0, 'dInvalid owner address provided'
    if 1 == arg2:
        revert with 0, 'dInvalid owner address provided'
    if arg2 != stor2[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e496e76616c696420707265764f776e65722c206f776e657220706169722070726f76696465,
                    mem[202 len 26]
    stor2[arg3].field_0 = stor2[address(arg2)].field_0
    stor2[arg1].field_0 = arg3
    stor2[address(arg2)].field_0 = 0
    emit RemovedOwner(arg2);
    emit AddedOwner(arg3);
}

function encodeTransactionData(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = arg10
    mem[ceil32(arg3.length) + 128] = 352
    return Array(len=66, data=0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0 >> 256, Mask(16, -512, 0, 0, domainSeparator, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), 0) << 512), 
}

function addOwnerWithThreshold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'dInvalid owner address provided'
    if 1 == arg1:
        revert with 0, 'dInvalid owner address provided'
    if stor2[address(arg1)].field_0:
        revert with 0, 'Address is already an owner'
    stor2[arg1].field_0 = stor2[1].field_0
    stor2[1].field_0 = arg1
    stor3++
    emit AddedOwner(arg1);
    if threshold != arg2:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                        mem[208 len 20]
        if arg2 > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                        mem[199 len 29]
        if arg2 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                        mem[200 len 28]
        threshold = arg2
        emit ChangedThreshold(arg2);
}

function execTransactionFromModule(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if 1 == msg.sender:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not stor1[msg.sender].field_0:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not ext_call.success:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        mem[ceil32(arg3.length) + 128] = bool(ext_call.success)
    else:
        require arg4 <= 1
        if arg4 != 1:
            emit ExecutionFromModuleFailure(msg.sender);
            mem[ceil32(arg3.length) + 128] = 0
        else:
            delegate arg1 with:
                 gas gas_remaining wei
                args arg3[all]
            if not delegate.return_code:
                emit ExecutionFromModuleFailure(msg.sender);
            else:
                emit ExecutionFromModuleSuccess(msg.sender);
            mem[ceil32(arg3.length) + 128] = bool(delegate.return_code)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function removeOwner(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if stor3 - 1 < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x744e6577206f776e657220636f756e74206e6565647320746f206265206c6172676572207468616e206e6577207468726573686f6c,
                    mem[217 len 11]
    if not arg2:
        revert with 0, 'dInvalid owner address provided'
    if 1 == arg2:
        revert with 0, 'dInvalid owner address provided'
    if arg2 != stor2[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e496e76616c696420707265764f776e65722c206f776e657220706169722070726f76696465,
                    mem[202 len 26]
    stor2[arg1].field_0 = stor2[address(arg2)].field_0
    stor2[address(arg2)].field_0 = 0
    stor3--
    emit RemovedOwner(arg2);
    if threshold != arg3:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                        mem[208 len 20]
        if arg3 > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                        mem[199 len 29]
        if arg3 < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                        mem[200 len 28]
        threshold = arg3
        emit ChangedThreshold(arg3);
}

function requiredTxGas(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        require ext_call.success
    else:
        require arg4 <= 1
        require arg4 == 1
        delegate arg1 with:
             gas gas_remaining wei
            args arg3[all]
        require delegate.return_code
    mem[ceil32(arg3.length) + 160] = 0
    mem[ceil32(arg3.length) + 128] = 32
    mem[64] = ceil32(arg3.length) + 192
    mem[ceil32(arg3.length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 196] = 32
    mem[ceil32(arg3.length) + 228] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 260 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        revert with memory
          from ceil32(arg3.length) + 192
           len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 68
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + 260] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 292 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    revert with memory
      from ceil32(arg3.length) + 192
       len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 100
}

function execTransactionFromModuleReturnData(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if 1 == msg.sender:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not stor1[msg.sender].field_0:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    require arg4 <= 1
    if not arg4:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
            args arg3[all]
        if not ext_call.success:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    require arg4 <= 1
    if arg4 == 1:
        delegate arg1 with:
             gas gas_remaining wei
            args arg3[all]
        if not delegate.return_code:
            emit ExecutionFromModuleFailure(msg.sender);
        else:
            emit ExecutionFromModuleSuccess(msg.sender);
        return bool(delegate.return_code), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    emit ExecutionFromModuleFailure(msg.sender);
    mem[ceil32(arg3.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + return_data.size + 160] = 0
    mem[ceil32(arg3.length) + return_data.size + 256 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]
    if not return_data.size % 32:
        return 0, 
               64,
               return_data.size,
               Mask(8 * return_data.size, -(8 * return_data.size) + 256, ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]) << (8 * return_data.size) - 256
    mem[floor32(return_data.size) + ceil32(arg3.length) + return_data.size + 256] = mem[(2 * floor32(return_data.size)) + ceil32(arg3.length) + 288 len return_data.size % 32]
    return 0, 
           64,
           return_data.size,
           Mask(8 * ceil32(return_data.size), -(8 * ceil32(return_data.size)) + 256, ext_call.return_data[0 len return_data.size], mem[ceil32(arg3.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]) << (8 * ceil32(return_data.size)) - 256,
           mem[ceil32(arg3.length) + return_data.size + ceil32(return_data.size) + 256 len floor32(return_data.size) + -ceil32(return_data.size) + 32]
}

function setup(address[] arg1, uint256 arg2, address arg3, bytes arg4, address arg5, address arg6, uint256 arg7, address arg8) {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if domainSeparator:
        revert with 0, 'Domain Separator already set!'
    domainSeparator = sha3(0x35aff83d86937d35b32e04f0ddc6ff469290eef2f1b692d8a815c89404d4749, this.address)
    mem[224 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 224] = 0
    if threshold:
        revert with 0, 'Owners have already been setup'
    if arg2 > arg1.length:
        revert with 0, 
                    32,
                    35,
                    0x645468726573686f6c642063616e6e6f7420657863656564206f776e657220636f756e,
                    mem[(32 * arg1.length) + 327 len 29]
    if arg2 < 1:
        revert with 0, 
                    32,
                    36,
                    0x655468726573686f6c64206e6565647320746f2062652067726561746572207468616e20,
                    mem[(32 * arg1.length) + 328 len 28]
    idx = 0
    s = 1
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 236 len 20]:
            revert with 0, 'dInvalid owner address provided'
        if 1 == mem[(32 * idx) + 236 len 20]:
            revert with 0, 'dInvalid owner address provided'
        if stor2[mem[(32 * idx) + 236 len 20]].field_0:
            revert with 0, 'Duplicate owner address provided'
        mem[0] = address(s)
        mem[32] = 2
        stor2[address(s)].field_0 = mem[(32 * idx) + 236 len 20]
        idx = idx + 1
        s = mem[(32 * idx) + 224]
        continue 
    stor2[address((_335 * arg1.length) + 1)].field_0 = 1
    stor2[address((_335 * arg1.length) + 1)].field_8 = 0
    stor3 = arg1.length
    threshold = arg2
    if arg5:
        address(stor6C9A.field_0) = arg5
        Mask(96, 0, stor6C9A.field_160) = 0
    if stor1[1].field_0:
        revert with 0, 
                    32,
                    37,
                    0x4d6f64756c6573206861766520616c7265616479206265656e20696e697469616c697a6500,
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 361 len 27]
    stor1[1].field_0 = 1
    stor1[1].field_8 = 0
    if arg3:
        delegate arg3 with:
             gas gas_remaining wei
            args arg4[all]
        if not delegate.return_code:
            revert with 0, 'Could not finish initialization'
    if arg7:
        require arg7 >= arg7
        if not arg8:
            if not arg6:
                if 1 < block.gasprice:
                    if not arg7:
                        call tx.origin with:
                             gas 2300 wei
                    else:
                        require arg7 / arg7 == 1
                        call tx.origin with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not arg7:
                        call tx.origin with:
                             gas 2300 wei
                    else:
                        require block.gasprice * arg7 / arg7 == block.gasprice
                        call tx.origin with:
                           value block.gasprice * arg7 wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 
                                32,
                                34,
                                0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865,
                                mem[(32 * arg1.length) + ceil32(arg4.length) + 358 len 30]
            else:
                if not arg7:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = tx.origin
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = 0
                else:
                    require arg7 / arg7 == 1
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = tx.origin
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = arg7
                mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 68
                mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len 28] = address(tx.origin) << 64
                mem[(32 * arg1.length) + ceil32(arg4.length) + 288 len 4] = unknown_0xa9059cbb(?????)
                call arg6.0xa9059cbb with:
                     gas gas_remaining - 10000 wei
                    args mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 288 len -arg4.length + ceil32(arg4.length)] - 4]
                mem[(32 * arg1.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
                else:
                    if 32 != return_data.size:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
                    if not ext_call.success or not mem[(32 * arg1.length) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
        else:
            if not arg6:
                if 1 < block.gasprice:
                    if not arg7:
                        call arg8 with:
                             gas 2300 wei
                    else:
                        require arg7 / arg7 == 1
                        call arg8 with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not arg7:
                        call arg8 with:
                             gas 2300 wei
                    else:
                        require block.gasprice * arg7 / arg7 == block.gasprice
                        call arg8 with:
                           value block.gasprice * arg7 wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with 0, 
                                32,
                                34,
                                0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865,
                                mem[(32 * arg1.length) + ceil32(arg4.length) + 358 len 30]
            else:
                if not arg7:
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = arg8
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = 0
                else:
                    require arg7 / arg7 == 1
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 292] = arg8
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 324] = arg7
                mem[(32 * arg1.length) + ceil32(arg4.length) + 256] = 68
                mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len 28] = address(arg8) << 64
                mem[(32 * arg1.length) + ceil32(arg4.length) + 288 len 4] = unknown_0xa9059cbb(?????)
                call arg6.0xa9059cbb with:
                     gas gas_remaining - 10000 wei
                    args mem[(32 * arg1.length) + ceil32(arg4.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg1.length) + arg4.length + 288 len -arg4.length + ceil32(arg4.length)] - 4]
                mem[(32 * arg1.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
                else:
                    if 32 != return_data.size:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
                    if not ext_call.success or not mem[(32 * arg1.length) + ceil32(arg4.length) + 356]:
                        revert with 0, 
                                    32,
                                    34,
                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                    mem[(32 * arg1.length) + ceil32(arg4.length) + return_data.size + 458 len 30]
}

function isValidSignature(bytes arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0x60b3cbf8b4a223d68d641b3b6ddf9a298e7f33710cf3d3a9d1146b5a6150fbca
    mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    _7 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 257] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 258] = domainSeparator
    mem[ceil32(arg1.length) + 290] = _7
    mem[ceil32(arg1.length) + 224] = 66
    if not arg2.length:
        if not signedMessages[0][0][stor6][_7]:
            revert with 0, 'Hash not approved'
        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 322] = arg1.length
    mem[ceil32(arg1.length) + 354 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 354] = 0
    mem[64] = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386
    mem[(2 * ceil32(arg1.length)) + 354] = arg2.length
    mem[(2 * ceil32(arg1.length)) + 386 len arg2.length] = arg2[all]
    mem[(2 * ceil32(arg1.length)) + arg2.length + 386] = 0
    if not threshold:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 390] = 32
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 422] = 30
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 454] = 'Threshold needs to be defined!'
    else:
        require 65 * threshold / threshold == 65
        if arg2.length >= 65 * threshold:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while idx < threshold:
                _213 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                _214 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                _215 = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 419]
                if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]:
                    if 1 == mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]:
                        if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] == msg.sender:
                            if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]
                            mem[32] = 2
                            if not stor2[mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            if not approvedHashes[mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                revert with 0, 'Hash has not been approved'
                            if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386])].field_0:
                                revert with 0, 'Invalid owner provided'
                        if 1 == mem[(65 * idx) + (2 * ceil32(arg1.length)) + 398 len 20]:
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                        s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                        s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1]
                        s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                        s = mem[(65 * idx) + (2 * ceil32(arg1.length)) + 386]
                        continue 
                    if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 450 len 1] <= 30:
                        _218 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_218 + 32] = sha3(0, 0, domainSeparator, _7)
                        mem[_218 + 64] = uint8(_215)
                        mem[_218 + 96] = _213
                        mem[_218 + 128] = _214
                        signer = erecover(sha3(0, 0, domainSeparator, _7), _215 << 248, _213, _214) 
                        mem[_218] = signer
                    else:
                        _220 = mem[64]
                        mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                        mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                        _221 = mem[64]
                        mem[mem[64]] = 60
                        mem[64] = mem[64] + 92
                        _223 = sha3(mem[_221 + 32 len mem[_221]])
                        mem[_220 + 92] = 0
                        mem[64] = _220 + 124
                        mem[_220 + 124] = _223
                        mem[_220 + 156] = uint8(uint8(_215) - 4)
                        mem[_220 + 188] = _213
                        mem[_220 + 220] = _214
                        signer = erecover(_223, uint8(_215) - 4 << 248, _213, _214) 
                        mem[_220 + 92] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(signer)
                    mem[32] = 2
                    if not stor2[address(signer)].field_0:
                        revert with 0, 'Invalid owner provided'
                    if 1 == address(signer):
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _214
                    s = _213
                    s = uint8(_215)
                    s = signer
                    s = signer
                    continue 
                if not threshold:
                    if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] < 0:
                        revert with 0, 
                                    32,
                                    55,
                                    0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                    mem[mem[64] + 123 len 9]
                    require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                    if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                    mem[mem[64] + 123 len 9]
                    require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                    require mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] >= 0
                    if mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                    mem[mem[64] + 122 len 10]
                    _277 = mem[64]
                    mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                    _279 = mem[ceil32(arg1.length) + 322]
                    t = 0
                    while t < _279:
                        mem[t + mem[64] + 100] = mem[t + ceil32(arg1.length) + 354]
                        t = t + 32
                        continue 
                    if not _279 % 32:
                        mem[_277 + 36] = _279 + 96
                        mem[_279 + _277 + 100] = mem[(2 * ceil32(arg1.length)) + _214 + 386]
                        _409 = mem[(2 * ceil32(arg1.length)) + _214 + 386]
                        t = 0
                        while t < _409:
                            mem[t + _279 + _277 + 132] = mem[t + (2 * ceil32(arg1.length)) + _214 + 418]
                            t = t + 32
                            continue 
                        if not _409 % 32:
                            require ext_code.size(address(_213))
                            staticcall address(_213).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _409 + _279 + _277 + -mem[64] + 128]
                        else:
                            mem[floor32(_409) + _279 + _277 + 132] = mem[floor32(_409) + _279 + _277 + -(_409 % 32) + 164 len _409 % 32]
                            require ext_code.size(address(_213))
                            staticcall address(_213).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len floor32(_409) + _279 + _277 + -mem[64] + 160]
                    else:
                        mem[floor32(_279) + _277 + 100] = mem[floor32(_279) + _277 + -(_279 % 32) + 132 len _279 % 32]
                        mem[_277 + 36] = floor32(_279) + 128
                        mem[floor32(_279) + _277 + 132] = mem[(2 * ceil32(arg1.length)) + _214 + 386]
                        _414 = mem[(2 * ceil32(arg1.length)) + _214 + 386]
                        t = 0
                        while t < _414:
                            mem[t + floor32(_279) + _277 + 164] = mem[t + (2 * ceil32(arg1.length)) + _214 + 418]
                            t = t + 32
                            continue 
                        if not _414 % 32:
                            require ext_code.size(address(_213))
                            staticcall address(_213).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _414 + floor32(_279) + _277 + -mem[64] + 160]
                        else:
                            mem[floor32(_414) + floor32(_279) + _277 + 164] = mem[floor32(_414) + floor32(_279) + _277 + -(_414 % 32) + 196 len _414 % 32]
                            require ext_code.size(address(_213))
                            staticcall address(_213).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len floor32(_414) + floor32(_279) + _277 + -mem[64] + 192]
                else:
                    require 65 * threshold / threshold == 65
                    if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] < 65 * threshold:
                        revert with 0, 
                                    32,
                                    55,
                                    0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                    mem[mem[64] + 123 len 9]
                    require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                    if mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                    mem[mem[64] + 123 len 9]
                    require mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 >= mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418]
                    require mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] >= 0
                    if mem[(2 * ceil32(arg1.length)) + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 386] + mem[(65 * idx) + (2 * ceil32(arg1.length)) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                    mem[mem[64] + 122 len 10]
                    _282 = mem[64]
                    mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                    _284 = mem[ceil32(arg1.length) + 322]
                    t = 0
                    while t < _284:
                        mem[t + mem[64] + 100] = mem[t + ceil32(arg1.length) + 354]
                        t = t + 32
                        continue 
                    if not _284 % 32:
                        mem[_282 + 36] = _284 + 96
                        mem[_284 + _282 + 100] = mem[(2 * ceil32(arg1.length)) + _214 + 386]
                        _406 = mem[(2 * ceil32(arg1.length)) + _214 + 386]
                        t = 0
                        while t < _406:
                            mem[t + _284 + _282 + 132] = mem[t + (2 * ceil32(arg1.length)) + _214 + 418]
                            t = t + 32
                            continue 
                        if not _406 % 32:
                            require ext_code.size(address(_213))
                            staticcall address(_213).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _406 + _284 + _282 + -mem[64] + 128]
                        else:
                            mem[floor32(_406) + _284 + _282 + 132] = mem[floor32(_406) + _284 + _282 + -(_406 % 32) + 164 len _406 % 32]
                            require ext_code.size(address(_213))
                            staticcall address(_213).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len floor32(_406) + _284 + _282 + -mem[64] + 160]
                    else:
                        mem[floor32(_284) + _282 + 100] = mem[floor32(_284) + _282 + -(_284 % 32) + 132 len _284 % 32]
                        mem[_282 + 36] = floor32(_284) + 128
                        mem[floor32(_284) + _282 + 132] = mem[(2 * ceil32(arg1.length)) + _214 + 386]
                        _412 = mem[(2 * ceil32(arg1.length)) + _214 + 386]
                        t = 0
                        while t < _412:
                            mem[t + floor32(_284) + _282 + 164] = mem[t + (2 * ceil32(arg1.length)) + _214 + 418]
                            t = t + 32
                            continue 
                        if not _412 % 32:
                            require ext_code.size(address(_213))
                            staticcall address(_213).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _412 + floor32(_284) + _282 + -mem[64] + 160]
                        else:
                            mem[floor32(_412) + floor32(_284) + _282 + 164] = mem[floor32(_412) + floor32(_284) + _282 + -(_412 % 32) + 196 len _412 % 32]
                            require ext_code.size(address(_213))
                            staticcall address(_213).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len floor32(_412) + floor32(_284) + _282 + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
                if address(_213) <= address(s):
                    revert with 0, 'Invalid owner provided'
                mem[0] = address(_213)
                mem[32] = 2
                if not stor2[address(_213)].field_0:
                    revert with 0, 'Invalid owner provided'
                if 1 == address(_213):
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = _214
                s = _213
                s = uint8(_215)
                s = _213
                s = _213
                continue 
            return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 390] = 32
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 422] = 25
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 454] = 'Signatures data too short'
    revert with memory
      from (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386
       len ceil32(arg1.length) + 100
}

function execTransaction(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, bytes arg10) payable {
    require calldata.size - 4 >= 320
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = 0xbb8310d486368db6bd6f849402fdd73ad53d316b5a4b2644ad6efe0f941286d8
    mem[ceil32(arg3.length) + 192] = arg1
    mem[ceil32(arg3.length) + 224] = arg2
    mem[ceil32(arg3.length) + 256] = sha3(arg3[all])
    require arg4 <= 1
    mem[ceil32(arg3.length) + 288] = arg4
    mem[ceil32(arg3.length) + 320] = arg5
    mem[ceil32(arg3.length) + 352] = arg6
    mem[ceil32(arg3.length) + 384] = arg7
    mem[ceil32(arg3.length) + 416] = arg8
    mem[ceil32(arg3.length) + 448] = arg9
    mem[ceil32(arg3.length) + 480] = nonce
    mem[ceil32(arg3.length) + 128] = 352
    _7 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    mem[ceil32(arg3.length) + 544] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 545] = 0x100000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 546] = domainSeparator
    mem[ceil32(arg3.length) + 578] = _7
    mem[ceil32(arg3.length) + 512] = 66
    nonce++
    mem[64] = ceil32(arg3.length) + ceil32(arg10.length) + 642
    mem[ceil32(arg3.length) + 610] = arg10.length
    mem[ceil32(arg3.length) + 642 len arg10.length] = arg10[all]
    mem[ceil32(arg3.length) + arg10.length + 642] = 0
    if not threshold:
        revert with 0, 'Threshold needs to be defined!'
    require 65 * threshold / threshold == 65
    if arg10.length < 65 * threshold:
        revert with 0, 'Signatures data too short'
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    while idx < threshold:
        _2269 = mem[(65 * idx) + ceil32(arg3.length) + 642]
        _2270 = mem[(65 * idx) + ceil32(arg3.length) + 674]
        _2271 = mem[(65 * idx) + ceil32(arg3.length) + 675]
        if mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]:
            if 1 == mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]:
                if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] == msg.sender:
                    if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] == msg.sender:
                        if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                        mem[32] = 2
                        if not stor2[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]].field_0:
                            revert with 0, 'Invalid owner provided'
                    else:
                        approvedHashes[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                        if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[(65 * idx) + ceil32(arg3.length) + 642])].field_0:
                            revert with 0, 'Invalid owner provided'
                else:
                    if not approvedHashes[mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                        revert with 0, 'Hash has not been approved'
                    if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] != msg.sender:
                        approvedHashes[address(mem[(65 * idx) + ceil32(arg3.length) + 642])][sha3(0, 0, stor6, _7)] = 0
                    if mem[(65 * idx) + ceil32(arg3.length) + 654 len 20] <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]
                    mem[32] = 2
                    if not stor2[address(mem[(65 * idx) + ceil32(arg3.length) + 642])].field_0:
                        revert with 0, 'Invalid owner provided'
                if 1 == mem[(65 * idx) + ceil32(arg3.length) + 654 len 20]:
                    revert with 0, 'Invalid owner provided'
                idx = idx + 1
                s = mem[(65 * idx) + ceil32(arg3.length) + 674]
                s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                s = mem[(65 * idx) + ceil32(arg3.length) + 706 len 1]
                s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                s = mem[(65 * idx) + ceil32(arg3.length) + 642]
                continue 
            if mem[(65 * idx) + ceil32(arg3.length) + 706 len 1] <= 30:
                _2272 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_2272 + 32] = sha3(0, 0, domainSeparator, _7)
                mem[_2272 + 64] = uint8(_2271)
                mem[_2272 + 96] = _2269
                mem[_2272 + 128] = _2270
                signer = erecover(sha3(0, 0, domainSeparator, _7), _2271 << 248, _2269, _2270) 
                mem[_2272] = signer
            else:
                _2274 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                _2275 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _2277 = sha3(mem[_2275 + 32 len mem[_2275]])
                mem[_2274 + 92] = 0
                mem[64] = _2274 + 124
                mem[_2274 + 124] = _2277
                mem[_2274 + 156] = uint8(uint8(_2271) - 4)
                mem[_2274 + 188] = _2269
                mem[_2274 + 220] = _2270
                signer = erecover(_2277, uint8(_2271) - 4 << 248, _2269, _2270) 
                mem[_2274 + 92] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(signer)
            mem[32] = 2
            if not stor2[address(signer)].field_0:
                revert with 0, 'Invalid owner provided'
            if 1 == address(signer):
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _2270
            s = _2269
            s = uint8(_2271)
            s = signer
            s = signer
            continue 
        if not threshold:
            if mem[(65 * idx) + ceil32(arg3.length) + 674] < 0:
                revert with 0, 
                            32,
                            55,
                            0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                            mem[mem[64] + 123 len 9]
            require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
            if mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                revert with 0, 
                            32,
                            55,
                            0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                            mem[mem[64] + 123 len 9]
            require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
            require mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] >= 0
            if mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] + mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                revert with 0, 
                            32,
                            54,
                            0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                            mem[mem[64] + 122 len 10]
            _2363 = mem[64]
            mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
            _2365 = mem[ceil32(arg3.length) + 512]
            t = 0
            while t < _2365:
                mem[t + mem[64] + 100] = mem[t + ceil32(arg3.length) + 544]
                t = t + 32
                continue 
            if not _2365 % 32:
                mem[mem[64] + 36] = _2365 + 96
                mem[_2365 + mem[64] + 100] = mem[ceil32(arg3.length) + _2270 + 642]
                _4527 = mem[ceil32(arg3.length) + _2270 + 642]
                t = 0
                while t < _4527:
                    mem[t + _2365 + mem[64] + 132] = mem[t + ceil32(arg3.length) + _2270 + 674]
                    t = t + 32
                    continue 
                if not _4527 % 32:
                    require ext_code.size(address(_2269))
                    staticcall address(_2269).0x20c13b0b with:
                            gas gas_remaining wei
                           args 64, _2365 + 96, mem[mem[64] + 68 len _4527 + _2365 + 64]
                else:
                    mem[floor32(_4527) + _2365 + mem[64] + 132] = mem[floor32(_4527) + _2365 + mem[64] + -(_4527 % 32) + 164 len _4527 % 32]
                    require ext_code.size(address(_2269))
                    staticcall address(_2269).0x20c13b0b with:
                            gas gas_remaining wei
                           args 64, _2365 + 96, mem[mem[64] + 68 len floor32(_4527) + _2365 + 96]
            else:
                mem[floor32(_2365) + mem[64] + 100] = mem[floor32(_2365) + mem[64] + -(_2365 % 32) + 132 len _2365 % 32]
                mem[mem[64] + 36] = floor32(_2365) + 128
                mem[floor32(_2365) + mem[64] + 132] = mem[ceil32(arg3.length) + _2270 + 642]
                _4532 = mem[ceil32(arg3.length) + _2270 + 642]
                t = 0
                while t < _4532:
                    mem[t + floor32(_2365) + mem[64] + 164] = mem[t + ceil32(arg3.length) + _2270 + 674]
                    t = t + 32
                    continue 
                if not _4532 % 32:
                    require ext_code.size(address(_2269))
                    staticcall address(_2269).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4532 + floor32(_2365) + _2363 + -mem[64] + 160]
                else:
                    mem[floor32(_4532) + floor32(_2365) + _2363 + 164] = mem[floor32(_4532) + floor32(_2365) + _2363 + -(_4532 % 32) + 196 len _4532 % 32]
                    require ext_code.size(address(_2269))
                    staticcall address(_2269).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(_4532) + floor32(_2365) + _2363 + -mem[64] + 192]
        else:
            require 65 * threshold / threshold == 65
            if mem[(65 * idx) + ceil32(arg3.length) + 674] < 65 * threshold:
                revert with 0, 
                            32,
                            55,
                            0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                            mem[mem[64] + 123 len 9]
            require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
            if mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                revert with 0, 
                            32,
                            55,
                            0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                            mem[mem[64] + 123 len 9]
            require mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 >= mem[(65 * idx) + ceil32(arg3.length) + 674]
            require mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] >= 0
            if mem[ceil32(arg3.length) + mem[(65 * idx) + ceil32(arg3.length) + 674] + 642] + mem[(65 * idx) + ceil32(arg3.length) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                revert with 0, 
                            32,
                            54,
                            0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                            mem[mem[64] + 122 len 10]
            _2368 = mem[64]
            mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
            _2370 = mem[ceil32(arg3.length) + 512]
            t = 0
            while t < _2370:
                mem[t + mem[64] + 100] = mem[t + ceil32(arg3.length) + 544]
                t = t + 32
                continue 
            if not _2370 % 32:
                mem[mem[64] + 36] = _2370 + 96
                mem[_2370 + mem[64] + 100] = mem[ceil32(arg3.length) + _2270 + 642]
                _4524 = mem[ceil32(arg3.length) + _2270 + 642]
                t = 0
                while t < _4524:
                    mem[t + _2370 + mem[64] + 132] = mem[t + ceil32(arg3.length) + _2270 + 674]
                    t = t + 32
                    continue 
                if not _4524 % 32:
                    require ext_code.size(address(_2269))
                    staticcall address(_2269).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4524 + _2370 + _2368 + -mem[64] + 128]
                else:
                    mem[floor32(_4524) + _2370 + _2368 + 132] = mem[floor32(_4524) + _2370 + _2368 + -(_4524 % 32) + 164 len _4524 % 32]
                    require ext_code.size(address(_2269))
                    staticcall address(_2269).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(_4524) + _2370 + _2368 + -mem[64] + 160]
            else:
                mem[floor32(_2370) + mem[64] + 100] = mem[floor32(_2370) + mem[64] + -(_2370 % 32) + 132 len _2370 % 32]
                mem[mem[64] + 36] = floor32(_2370) + 128
                mem[floor32(_2370) + mem[64] + 132] = mem[ceil32(arg3.length) + _2270 + 642]
                _4530 = mem[ceil32(arg3.length) + _2270 + 642]
                t = 0
                while t < _4530:
                    mem[t + floor32(_2370) + mem[64] + 164] = mem[t + ceil32(arg3.length) + _2270 + 674]
                    t = t + 32
                    continue 
                if not _4530 % 32:
                    require ext_code.size(address(_2269))
                    staticcall address(_2269).0x20c13b0b with:
                            gas gas_remaining wei
                           args 64, floor32(_2370) + 128, mem[mem[64] + 68 len _4530 + floor32(_2370) + 96]
                else:
                    mem[floor32(_4530) + floor32(_2370) + mem[64] + 164] = mem[floor32(_4530) + floor32(_2370) + mem[64] + -(_4530 % 32) + 196 len _4530 % 32]
                    require ext_code.size(address(_2269))
                    staticcall address(_2269).0x20c13b0b with:
                            gas gas_remaining wei
                           args 64, floor32(_2370) + 128, mem[mem[64] + 68 len floor32(_4530) + floor32(_2370) + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
        if address(_2269) <= address(s):
            revert with 0, 'Invalid owner provided'
        mem[0] = address(_2269)
        mem[32] = 2
        if not stor2[address(_2269)].field_0:
            revert with 0, 'Invalid owner provided'
        if 1 == address(_2269):
            revert with 0, 'Invalid owner provided'
        idx = idx + 1
        s = _2270
        s = _2269
        s = uint8(_2271)
        s = _2269
        s = _2269
        continue 
    if 64 * arg5 / 63 >= arg5 + 2500:
        if gas_remaining < (64 * arg5 / 63) + 500:
            revert with 0, 
                        32,
                        42,
                        0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                        mem[mem[64] + 110 len 22]
        _2287 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_2287] = arg3.length
        mem[_2287 + 32 len arg3.length] = arg3[all]
        mem[_2287 + arg3.length + 32] = 0
        require arg4 <= 1
        if 0 == arg7:
            if not arg4:
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if not arg7:
                    if not ext_call.success:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2522 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _2523 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2523 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2523 + 36 len mem[_2523] - 4]
                                mem[_2522 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2522 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2522 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2522 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2522 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2611 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _2612 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2612 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2612 + 36 len mem[_2612] - 4]
                                mem[_2611 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2611 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2611 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2611 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2611 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2527 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _2528 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2528 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2528 + 36 len mem[_2528] - 4]
                                mem[_2527 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2527 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2527 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2527 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2527 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2618 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _2619 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2619 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2619 + 36 len mem[_2619] - 4]
                                mem[_2618 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2618 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2618 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2618 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2618 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                return bool(ext_call.success)
            require arg4 <= 1
            if arg4 != 1:
                require gas_remaining <= gas_remaining
                if not arg7:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2512 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _2513 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2513 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2513 + 36 len mem[_2513] - 4]
                                mem[_2512 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2512 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2512 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2512 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2512 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2597 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _2598 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2598 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2598 + 36 len mem[_2598] - 4]
                                mem[_2597 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2597 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2597 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2597 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2597 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2517 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _2518 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2518 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2518 + 36 len mem[_2518] - 4]
                                mem[_2517 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2517 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2517 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2517 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2517 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2604 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _2605 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2605 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2605 + 36 len mem[_2605] - 4]
                                mem[_2604 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2604 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2604 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2604 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2604 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                return 0
            delegate arg1 with:
                 gas gas_remaining - 2500 wei
                args arg3[all]
            require gas_remaining <= gas_remaining
            if not arg7:
                if not delegate.return_code:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
            else:
                require arg6 >= 0
                if not arg9:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                call tx.origin with:
                                   value arg7 * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require block.gasprice * arg6 / arg6 == block.gasprice
                                call tx.origin with:
                                   value block.gasprice * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                    else:
                        if not arg6:
                            _2728 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = 0
                            _2729 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2729 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2729 + 36 len mem[_2729] - 4]
                            mem[_2728 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2728 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2728 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2728 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2728 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg7 * arg6 / arg6 == arg7
                            _2885 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = arg7 * arg6
                            _2886 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2886 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2886 + 36 len mem[_2886] - 4]
                            mem[_2885 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2885 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2885 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2885 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2885 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                else:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                call arg9 with:
                                   value arg7 * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require block.gasprice * arg6 / arg6 == block.gasprice
                                call arg9 with:
                                   value block.gasprice * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                    else:
                        if not arg6:
                            _2733 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = 0
                            _2734 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2734 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2734 + 36 len mem[_2734] - 4]
                            mem[_2733 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2733 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2733 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2733 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2733 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg7 * arg6 / arg6 == arg7
                            _2892 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = arg7 * arg6
                            _2893 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2893 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2893 + 36 len mem[_2893] - 4]
                            mem[_2892 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2892 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2892 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2892 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2892 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
        else:
            if not arg4:
                call arg1 with:
                   value arg2 wei
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if not arg7:
                    if not ext_call.success:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2542 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _2543 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2543 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2543 + 36 len mem[_2543] - 4]
                                mem[_2542 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2542 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2542 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2542 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2542 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2639 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _2640 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2640 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2640 + 36 len mem[_2640] - 4]
                                mem[_2639 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2639 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2639 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2639 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2639 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2547 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _2548 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2548 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2548 + 36 len mem[_2548] - 4]
                                mem[_2547 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2547 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2547 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2547 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2547 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2646 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _2647 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2647 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2647 + 36 len mem[_2647] - 4]
                                mem[_2646 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2646 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2646 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2646 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2646 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                return bool(ext_call.success)
            require arg4 <= 1
            if arg4 != 1:
                require gas_remaining <= gas_remaining
                if not arg7:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2532 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _2533 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2533 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2533 + 36 len mem[_2533] - 4]
                                mem[_2532 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2532 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2532 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2532 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2532 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2625 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _2626 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2626 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2626 + 36 len mem[_2626] - 4]
                                mem[_2625 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2625 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2625 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2625 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2625 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2537 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _2538 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2538 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2538 + 36 len mem[_2538] - 4]
                                mem[_2537 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2537 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2537 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2537 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2537 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2632 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _2633 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2633 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2633 + 36 len mem[_2633] - 4]
                                mem[_2632 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2632 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2632 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2632 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2632 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                return 0
            delegate arg1 with:
                 gas arg5 wei
                args arg3[all]
            require gas_remaining <= gas_remaining
            if not arg7:
                if not delegate.return_code:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
            else:
                require arg6 >= 0
                if not arg9:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                call tx.origin with:
                                   value arg7 * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require block.gasprice * arg6 / arg6 == block.gasprice
                                call tx.origin with:
                                   value block.gasprice * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                    else:
                        if not arg6:
                            _2766 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = 0
                            _2767 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2767 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2767 + 36 len mem[_2767] - 4]
                            mem[_2766 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2766 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2766 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2766 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2766 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg7 * arg6 / arg6 == arg7
                            _2919 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = arg7 * arg6
                            _2920 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2920 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2920 + 36 len mem[_2920] - 4]
                            mem[_2919 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2919 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2919 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2919 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2919 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                else:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                call arg9 with:
                                   value arg7 * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require block.gasprice * arg6 / arg6 == block.gasprice
                                call arg9 with:
                                   value block.gasprice * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                    else:
                        if not arg6:
                            _2771 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = 0
                            _2772 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2772 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2772 + 36 len mem[_2772] - 4]
                            mem[_2771 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2771 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2771 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2771 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2771 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg7 * arg6 / arg6 == arg7
                            _2926 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = arg7 * arg6
                            _2927 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2927 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2927 + 36 len mem[_2927] - 4]
                            mem[_2926 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2926 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2926 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2926 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2926 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
    else:
        if gas_remaining < arg5 + 3000:
            revert with 0, 
                        32,
                        42,
                        0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                        mem[mem[64] + 110 len 22]
        _2290 = mem[64]
        mem[64] = mem[64] + ceil32(arg3.length) + 32
        mem[_2290] = arg3.length
        mem[_2290 + 32 len arg3.length] = arg3[all]
        mem[_2290 + arg3.length + 32] = 0
        require arg4 <= 1
        if 0 == arg7:
            if not arg4:
                call arg1 with:
                   value arg2 wei
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if not arg7:
                    if not ext_call.success:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2562 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _2563 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2563 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2563 + 36 len mem[_2563] - 4]
                                mem[_2562 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2562 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2562 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2562 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2562 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2667 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _2668 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2668 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2668 + 36 len mem[_2668] - 4]
                                mem[_2667 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2667 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2667 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2667 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2667 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2567 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _2568 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2568 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2568 + 36 len mem[_2568] - 4]
                                mem[_2567 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2567 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2567 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2567 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2567 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2674 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _2675 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2675 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2675 + 36 len mem[_2675] - 4]
                                mem[_2674 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2674 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2674 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2674 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2674 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                return bool(ext_call.success)
            require arg4 <= 1
            if arg4 != 1:
                require gas_remaining <= gas_remaining
                if not arg7:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2552 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _2553 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2553 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2553 + 36 len mem[_2553] - 4]
                                mem[_2552 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2552 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2552 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2552 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2552 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2653 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _2654 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2654 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2654 + 36 len mem[_2654] - 4]
                                mem[_2653 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2653 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2653 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2653 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2653 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2557 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _2558 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2558 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2558 + 36 len mem[_2558] - 4]
                                mem[_2557 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2557 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2557 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2557 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2557 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2660 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _2661 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2661 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2661 + 36 len mem[_2661] - 4]
                                mem[_2660 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2660 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2660 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2660 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2660 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                return 0
            delegate arg1 with:
                 gas gas_remaining - 2500 wei
                args arg3[all]
            require gas_remaining <= gas_remaining
            if not arg7:
                if not delegate.return_code:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
            else:
                require arg6 >= 0
                if not arg9:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                call tx.origin with:
                                   value arg7 * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require block.gasprice * arg6 / arg6 == block.gasprice
                                call tx.origin with:
                                   value block.gasprice * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                    else:
                        if not arg6:
                            _2804 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = 0
                            _2805 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2805 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2805 + 36 len mem[_2805] - 4]
                            mem[_2804 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2804 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2804 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2804 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2804 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg7 * arg6 / arg6 == arg7
                            _2953 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = arg7 * arg6
                            _2954 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2954 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2954 + 36 len mem[_2954] - 4]
                            mem[_2953 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2953 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2953 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2953 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2953 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                else:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                call arg9 with:
                                   value arg7 * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require block.gasprice * arg6 / arg6 == block.gasprice
                                call arg9 with:
                                   value block.gasprice * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                    else:
                        if not arg6:
                            _2809 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = 0
                            _2810 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2810 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2810 + 36 len mem[_2810] - 4]
                            mem[_2809 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2809 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2809 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2809 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2809 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg7 * arg6 / arg6 == arg7
                            _2960 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = arg7 * arg6
                            _2961 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2961 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2961 + 36 len mem[_2961] - 4]
                            mem[_2960 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2960 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2960 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2960 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2960 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
        else:
            if not arg4:
                call arg1 with:
                   value arg2 wei
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if not arg7:
                    if not ext_call.success:
                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                    else:
                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2582 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _2583 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2583 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2583 + 36 len mem[_2583] - 4]
                                mem[_2582 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2582 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2582 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2582 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2582 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2695 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _2696 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2696 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2696 + 36 len mem[_2696] - 4]
                                mem[_2695 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2695 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2695 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2695 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2695 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2587 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _2588 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2588 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2588 + 36 len mem[_2588] - 4]
                                mem[_2587 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2587 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2587 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2587 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2587 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2702 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _2703 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2703 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2703 + 36 len mem[_2703] - 4]
                                mem[_2702 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2702 + return_data.size + 202 len 30]
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2702 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2702 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2702 + return_data.size + 202 len 30]
                                    if not ext_call.success:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                return bool(ext_call.success)
            require arg4 <= 1
            if arg4 != 1:
                require gas_remaining <= gas_remaining
                if not arg7:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    require arg6 >= 0
                    if not arg9:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call tx.origin with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call tx.origin with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call tx.origin with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2572 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _2573 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2573 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2573 + 36 len mem[_2573] - 4]
                                mem[_2572 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2572 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2572 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2572 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2572 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2681 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg7 * arg6
                                _2682 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2682 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2682 + 36 len mem[_2682] - 4]
                                mem[_2681 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2681 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2681 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2681 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2681 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                    else:
                        if not arg8:
                            if arg7 < block.gasprice:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg7 * arg6 / arg6 == arg7
                                    call arg9 with:
                                       value arg7 * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                if not arg6:
                                    call arg9 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require block.gasprice * arg6 / arg6 == block.gasprice
                                    call arg9 with:
                                       value block.gasprice * arg6 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                        else:
                            if not arg6:
                                _2577 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _2578 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2578 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2578 + 36 len mem[_2578] - 4]
                                mem[_2577 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2577 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2577 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2577 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2577 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                _2688 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg7 * arg6
                                _2689 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2689 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_2689 + 36 len mem[_2689] - 4]
                                mem[_2688 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2688 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2688 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_2688 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_2688 + return_data.size + 202 len 30]
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                return 0
            delegate arg1 with:
                 gas arg5 wei
                args arg3[all]
            require gas_remaining <= gas_remaining
            if not arg7:
                if not delegate.return_code:
                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                else:
                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
            else:
                require arg6 >= 0
                if not arg9:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                call tx.origin with:
                                   value arg7 * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg6:
                                call tx.origin with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require block.gasprice * arg6 / arg6 == block.gasprice
                                call tx.origin with:
                                   value block.gasprice * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                    else:
                        if not arg6:
                            _2842 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = 0
                            _2843 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2843 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2843 + 36 len mem[_2843] - 4]
                            mem[_2842 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2842 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2842 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2842 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2842 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg7 * arg6 / arg6 == arg7
                            _2987 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = arg7 * arg6
                            _2988 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2988 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2988 + 36 len mem[_2988] - 4]
                            mem[_2987 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2987 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2987 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2987 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2987 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                else:
                    if not arg8:
                        if arg7 < block.gasprice:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg7 * arg6 / arg6 == arg7
                                call arg9 with:
                                   value arg7 * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                        else:
                            if not arg6:
                                call arg9 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require block.gasprice * arg6 / arg6 == block.gasprice
                                call arg9 with:
                                   value block.gasprice * arg6 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), block.gasprice * arg6);
                    else:
                        if not arg6:
                            _2847 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = 0
                            _2848 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2848 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2848 + 36 len mem[_2848] - 4]
                            mem[_2847 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2847 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2847 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2847 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2847 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                        else:
                            require arg7 * arg6 / arg6 == arg7
                            _2994 = mem[64]
                            mem[mem[64] + 36] = arg9
                            mem[mem[64] + 68] = arg7 * arg6
                            _2995 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2995 + 32 len 4] = unknown_0xa9059cbb(?????)
                            call arg8.0xa9059cbb with:
                                 gas gas_remaining - 10000 wei
                                args mem[_2995 + 36 len mem[_2995] - 4]
                            mem[_2994 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2994 + return_data.size + 202 len 30]
                            else:
                                if 32 != return_data.size:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2994 + return_data.size + 202 len 30]
                                if not ext_call.success or not mem[_2994 + 100]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                mem[_2994 + return_data.size + 202 len 30]
                            if not delegate.return_code:
                                emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
                            else:
                                emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg7 * arg6);
    return bool(delegate.return_code)
}



}
