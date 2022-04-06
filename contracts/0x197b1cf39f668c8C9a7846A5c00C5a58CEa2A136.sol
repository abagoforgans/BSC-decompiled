contract main {




// =====================  Runtime code  =====================


#
#  - execTransaction(address arg1, uint256 arg2, bytes arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9, bytes arg10)
#  - getModules()
#  - getModulesPaginated(address arg1, uint256 arg2)
#
const NAME = 'Gnosis Safe'

const VERSION = '1.2.0'


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
    if arg1 == 1:
        return arg1 != 1
    return not not stor2[address(arg1)].field_0
}

function isModuleEnabled(address arg1) {
    require calldata.size - 4 >= 32
    if 1 == arg1:
        return arg1 != 1
    return not not stor1[address(arg1)].field_0
}

function approveHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)].field_0:
        revert with 0, 'Only owners can approve a hash'
    approvedHashes[address(msg.sender)][arg1] = 1
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
    if this.address != msg.sender:
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
        mem[128 len 32 * stor3] = code.data[24410 len 32 * stor3]
    mem[0] = 1
    mem[32] = 2
    idx = stor[sha3(mem[0 len 64])]
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
    if this.address != msg.sender:
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
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'Invalid module address provided'
    if arg1 == 1:
        revert with 0, 'Invalid module address provided'
    if stor1[address(arg1)].field_0:
        revert with 0, 'Module has already been added'
    stor1[address(arg1)].field_0 = stor1[1].field_0
    stor1[1].field_0 = arg1
    emit EnabledModule(arg1);
}

function disableModule(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg2:
        revert with 0, 'Invalid module address provided'
    if arg2 == 1:
        revert with 0, 'Invalid module address provided'
    if stor1[address(arg1)].field_0 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64496e76616c696420707265764d6f64756c652c206d6f64756c6520706169722070726f76696465,
                    mem[204 len 24]
    stor1[address(arg1)].field_0 = stor1[address(arg2)].field_0
    stor1[address(arg2)].field_0 = 0
    emit DisabledModule(arg2);
}

function changeThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
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
    emit ChangedThreshold(threshold);
}

function signMessage(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if this.address != msg.sender:
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
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg3:
        revert with 0, 'Invalid owner address provided'
    if arg3 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg3)].field_0:
        revert with 0, 'Address is already an owner'
    if not arg2:
        revert with 0, 'Invalid owner address provided'
    if arg2 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)].field_0 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e496e76616c696420707265764f776e65722c206f776e657220706169722070726f76696465,
                    mem[202 len 26]
    stor2[address(arg3)].field_0 = stor2[address(arg2)].field_0
    stor2[address(arg1)].field_0 = arg3
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
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d207468697320636f6e74726163,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'Invalid owner address provided'
    if arg1 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)].field_0:
        revert with 0, 'Address is already an owner'
    stor2[address(arg1)].field_0 = stor2[1].field_0
    stor2[1].field_0 = arg1
    stor3++
    emit AddedOwner(arg1);
    if threshold != arg2:
        if this.address != msg.sender:
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
        emit ChangedThreshold(threshold);
}

function execTransactionFromModule(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if msg.sender == 1:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not stor1[address(msg.sender)].field_0:
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
    if this.address != msg.sender:
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
        revert with 0, 'Invalid owner address provided'
    if arg2 == 1:
        revert with 0, 'Invalid owner address provided'
    if stor2[address(arg1)].field_0 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e496e76616c696420707265764f776e65722c206f776e657220706169722070726f76696465,
                    mem[202 len 26]
    stor2[address(arg1)].field_0 = stor2[address(arg2)].field_0
    stor2[address(arg2)].field_0 = 0
    stor3--
    emit RemovedOwner(arg2);
    if threshold != arg3:
        if this.address != msg.sender:
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
        emit ChangedThreshold(threshold);
}

function requiredTxGas(address arg1, uint256 arg2, bytes arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if this.address != msg.sender:
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
    if msg.sender == 1:
        revert with 0, 
                    32,
                    48,
                    0x744d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d20616e20656e61626c6564206d6f64756c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not stor1[address(msg.sender)].field_0:
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
            revert with 0, 'Invalid owner address provided'
        if mem[(32 * idx) + 236 len 20] == 1:
            revert with 0, 'Invalid owner address provided'
        if stor2[mem[(32 * idx) + 236 len 20]].field_0:
            revert with 0, 'Duplicate owner address provided'
        mem[0] = address(s)
        mem[32] = 2
        stor2[address(s)].field_0 = mem[(32 * idx) + 236 len 20]
        idx = idx + 1
        s = mem[(32 * idx) + 224]
        continue 
    uint8(stor2[address((_368 * arg1.length) + 1)].field_0) = 1
    Mask(152, 0, stor2[address((_368 * arg1.length) + 1)].field_8) = 0
    stor3 = arg1.length
    threshold = arg2
    if arg5:
        address(stor6C9A.field_0) = arg5
        Mask(96, 0, stor6C9A.field_160) = 0
    if stor1[1].field_0:
        revert with 0, 
                    32,
                    37,
                    0x644d6f64756c6573206861766520616c7265616479206265656e20696e697469616c697a65,
                    mem[(32 * arg1.length) + ceil32(arg4.length) + 361 len 27]
    uint8(stor1[1].field_0) = 1
    Mask(152, 0, stor1[1].field_8) = 0
    if arg3:
        delegate arg3 with:
             gas gas_remaining wei
            args arg4[all]
        if not delegate.return_code:
            revert with 0, 'Could not finish initialization'
    if arg7 > 0:
        require arg7 >= arg7
        if not arg8:
            if not arg6:
                if 1 < block.gasprice:
                    if not arg7:
                        call tx.origin with:
                             gas 2300 wei
                    else:
                        require arg7
                        require arg7 / arg7 == 1
                        call tx.origin with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not arg7:
                        call tx.origin with:
                             gas 2300 wei
                    else:
                        require arg7
                        require arg7 * block.gasprice / arg7 == block.gasprice
                        call tx.origin with:
                           value arg7 * block.gasprice wei
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
                    require arg7
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
                        require arg7
                        require arg7 / arg7 == 1
                        call arg8 with:
                           value arg7 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if not arg7:
                        call arg8 with:
                             gas 2300 wei
                    else:
                        require arg7
                        require arg7 * block.gasprice / arg7 == block.gasprice
                        call arg8 with:
                           value arg7 * block.gasprice wei
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
                    require arg7
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
    if threshold <= 0:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 390] = 32
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 422] = 30
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 454] = 'Threshold needs to be defined!'
    else:
        if not threshold:
            if arg2.length >= 0:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while idx < threshold:
                    _412 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                    _413 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    _414 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 419]
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]:
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] == 1:
                            if msg.sender == mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]:
                                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                                mem[32] = 2
                                if not stor2[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]].field_0:
                                    revert with 0, 'Invalid owner provided'
                            else:
                                if not approvedHashes[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                    revert with 0, 'Hash has not been approved'
                                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                                mem[32] = 2
                                if not stor2[address(mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386])].field_0:
                                    revert with 0, 'Invalid owner provided'
                            if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] == 1:
                                revert with 0, 'Invalid owner provided'
                            idx = idx + 1
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            continue 
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] <= 30:
                            _431 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_431 + 32] = sha3(0, 0, domainSeparator, _7)
                            mem[_431 + 64] = uint8(_414)
                            mem[_431 + 96] = _412
                            mem[_431 + 128] = _413
                            signer = erecover(sha3(0, 0, domainSeparator, _7), _414 << 248, _412, _413) 
                            mem[_431] = signer
                        else:
                            _434 = mem[64]
                            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                            mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                            _435 = mem[64]
                            mem[mem[64]] = 60
                            mem[64] = mem[64] + 92
                            _437 = sha3(mem[_435 + 32 len mem[_435]])
                            mem[_434 + 92] = 0
                            mem[64] = _434 + 124
                            mem[_434 + 124] = _437
                            mem[_434 + 156] = uint8(uint8(_414) - 4)
                            mem[_434 + 188] = _412
                            mem[_434 + 220] = _413
                            signer = erecover(_437, uint8(_414) - 4 << 248, _412, _413) 
                            mem[_434 + 92] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = address(signer)
                        mem[32] = 2
                        if not stor2[address(signer)].field_0:
                            revert with 0, 'Invalid owner provided'
                        if address(signer) == 1:
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = _413
                        s = _412
                        s = uint8(_414)
                        s = signer
                        s = signer
                        continue 
                    if not threshold:
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 0:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        _544 = mem[64]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _546 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _546:
                            mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                            t = t + 32
                            continue 
                        if not _546 % 32:
                            mem[_544 + 36] = _546 + 96
                            mem[_546 + _544 + 100] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _805 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _805:
                                mem[_546 + _544 + t + 132] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _805 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _805 + _546 + _544 + -mem[64] + 128]
                            else:
                                mem[floor32(_805) + _546 + _544 + 132] = mem[floor32(_805) + _546 + _544 + -(_805 % 32) + 164 len _805 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_805) + _546 + _544 + -mem[64] + 160]
                        else:
                            mem[floor32(_546) + _544 + 100] = mem[floor32(_546) + _544 + -(_546 % 32) + 132 len _546 % 32]
                            mem[_544 + 36] = floor32(_546) + 128
                            mem[floor32(_546) + _544 + 132] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _814 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _814:
                                mem[floor32(_546) + _544 + t + 164] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _814 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _814 + floor32(_546) + _544 + -mem[64] + 160]
                            else:
                                mem[floor32(_814) + floor32(_546) + _544 + 164] = mem[floor32(_814) + floor32(_546) + _544 + -(_814 % 32) + 196 len _814 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_814) + floor32(_546) + _544 + -mem[64] + 192]
                    else:
                        require threshold
                        require 65 * threshold / threshold == 65
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 65 * threshold:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        _555 = mem[64]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _557 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _557:
                            mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                            t = t + 32
                            continue 
                        if not _557 % 32:
                            mem[_555 + 36] = _557 + 96
                            mem[_557 + _555 + 100] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _802 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _802:
                                mem[_557 + _555 + t + 132] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _802 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _802 + _557 + _555 + -mem[64] + 128]
                            else:
                                mem[floor32(_802) + _557 + _555 + 132] = mem[floor32(_802) + _557 + _555 + -(_802 % 32) + 164 len _802 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_802) + _557 + _555 + -mem[64] + 160]
                        else:
                            mem[floor32(_557) + _555 + 100] = mem[floor32(_557) + _555 + -(_557 % 32) + 132 len _557 % 32]
                            mem[_555 + 36] = floor32(_557) + 128
                            mem[floor32(_557) + _555 + 132] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _812 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _812:
                                mem[floor32(_557) + _555 + t + 164] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _812 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _812 + floor32(_557) + _555 + -mem[64] + 160]
                            else:
                                mem[floor32(_812) + floor32(_557) + _555 + 164] = mem[floor32(_812) + floor32(_557) + _555 + -(_812 % 32) + 196 len _812 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_812) + floor32(_557) + _555 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
                    if address(_412) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(_412)
                    mem[32] = 2
                    if not stor2[address(_412)].field_0:
                        revert with 0, 'Invalid owner provided'
                    if address(_412) == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _413
                    s = _412
                    s = uint8(_414)
                    s = _412
                    s = _412
                    continue 
                return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
        else:
            require threshold
            require 65 * threshold / threshold == 65
            if arg2.length >= 65 * threshold:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while idx < threshold:
                    _409 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                    _410 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                    _411 = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 419]
                    if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]:
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] == 1:
                            if msg.sender == mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]:
                                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                                mem[32] = 2
                                if not stor2[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]].field_0:
                                    revert with 0, 'Invalid owner provided'
                            else:
                                if not approvedHashes[mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]][sha3(0, 0, stor6, _7)]:
                                    revert with 0, 'Hash has not been approved'
                                if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] <= address(s):
                                    revert with 0, 'Invalid owner provided'
                                mem[0] = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20]
                                mem[32] = 2
                                if not stor2[address(mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386])].field_0:
                                    revert with 0, 'Invalid owner provided'
                            if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 398 len 20] == 1:
                                revert with 0, 'Invalid owner provided'
                            idx = idx + 1
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            s = mem[(2 * ceil32(arg1.length)) + (65 * idx) + 386]
                            continue 
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 450 len 1] <= 30:
                            _419 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_419 + 32] = sha3(0, 0, domainSeparator, _7)
                            mem[_419 + 64] = uint8(_411)
                            mem[_419 + 96] = _409
                            mem[_419 + 128] = _410
                            signer = erecover(sha3(0, 0, domainSeparator, _7), _411 << 248, _409, _410) 
                            mem[_419] = signer
                        else:
                            _422 = mem[64]
                            mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                            mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                            _423 = mem[64]
                            mem[mem[64]] = 60
                            mem[64] = mem[64] + 92
                            _425 = sha3(mem[_423 + 32 len mem[_423]])
                            mem[_422 + 92] = 0
                            mem[64] = _422 + 124
                            mem[_422 + 124] = _425
                            mem[_422 + 156] = uint8(uint8(_411) - 4)
                            mem[_422 + 188] = _409
                            mem[_422 + 220] = _410
                            signer = erecover(_425, uint8(_411) - 4 << 248, _409, _410) 
                            mem[_422 + 92] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = address(signer)
                        mem[32] = 2
                        if not stor2[address(signer)].field_0:
                            revert with 0, 'Invalid owner provided'
                        if address(signer) == 1:
                            revert with 0, 'Invalid owner provided'
                        idx = idx + 1
                        s = _410
                        s = _409
                        s = uint8(_411)
                        s = signer
                        s = signer
                        continue 
                    if not threshold:
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 0:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        _539 = mem[64]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _541 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _541:
                            mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                            t = t + 32
                            continue 
                        if not _541 % 32:
                            mem[_539 + 36] = _541 + 96
                            mem[_541 + _539 + 100] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _799 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _799:
                                mem[_541 + _539 + t + 132] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _799 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _799 + _541 + _539 + -mem[64] + 128]
                            else:
                                mem[floor32(_799) + _541 + _539 + 132] = mem[floor32(_799) + _541 + _539 + -(_799 % 32) + 164 len _799 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_799) + _541 + _539 + -mem[64] + 160]
                        else:
                            mem[floor32(_541) + _539 + 100] = mem[floor32(_541) + _539 + -(_541 % 32) + 132 len _541 % 32]
                            mem[_539 + 36] = floor32(_541) + 128
                            mem[floor32(_541) + _539 + 132] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _810 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _810:
                                mem[floor32(_541) + _539 + t + 164] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _810 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _810 + floor32(_541) + _539 + -mem[64] + 160]
                            else:
                                mem[floor32(_810) + floor32(_541) + _539 + 164] = mem[floor32(_810) + floor32(_541) + _539 + -(_810 % 32) + 196 len _810 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_810) + floor32(_541) + _539 + -mem[64] + 192]
                    else:
                        require threshold
                        require 65 * threshold / threshold == 65
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] < 65 * threshold:
                            revert with 0, 
                                        32,
                                        55,
                                        0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                        mem[mem[64] + 123 len 9]
                        require mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 32 >= mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418]
                        require mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] >= 0
                        if mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + mem[(2 * ceil32(arg1.length)) + mem[(2 * ceil32(arg1.length)) + (65 * idx) + 418] + 386] + 32 > mem[(2 * ceil32(arg1.length)) + 354]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                        mem[mem[64] + 122 len 10]
                        _549 = mem[64]
                        mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 64
                        mem[mem[64] + 68] = mem[ceil32(arg1.length) + 322]
                        _551 = mem[ceil32(arg1.length) + 322]
                        t = 0
                        while t < _551:
                            mem[mem[64] + t + 100] = mem[ceil32(arg1.length) + t + 354]
                            t = t + 32
                            continue 
                        if not _551 % 32:
                            mem[_549 + 36] = _551 + 96
                            mem[_551 + _549 + 100] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _796 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _796:
                                mem[_551 + _549 + t + 132] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _796 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _796 + _551 + _549 + -mem[64] + 128]
                            else:
                                mem[floor32(_796) + _551 + _549 + 132] = mem[floor32(_796) + _551 + _549 + -(_796 % 32) + 164 len _796 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_796) + _551 + _549 + -mem[64] + 160]
                        else:
                            mem[floor32(_551) + _549 + 100] = mem[floor32(_551) + _549 + -(_551 % 32) + 132 len _551 % 32]
                            mem[_549 + 36] = floor32(_551) + 128
                            mem[floor32(_551) + _549 + 132] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _808 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _808:
                                mem[floor32(_551) + _549 + t + 164] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _808 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _808 + floor32(_551) + _549 + -mem[64] + 160]
                            else:
                                mem[floor32(_808) + floor32(_551) + _549 + 164] = mem[floor32(_808) + floor32(_551) + _549 + -(_808 % 32) + 196 len _808 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len floor32(_808) + floor32(_551) + _549 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
                    if address(_409) <= address(s):
                        revert with 0, 'Invalid owner provided'
                    mem[0] = address(_409)
                    mem[32] = 2
                    if not stor2[address(_409)].field_0:
                        revert with 0, 'Invalid owner provided'
                    if address(_409) == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = _410
                    s = _409
                    s = uint8(_411)
                    s = _409
                    s = _409
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



}
