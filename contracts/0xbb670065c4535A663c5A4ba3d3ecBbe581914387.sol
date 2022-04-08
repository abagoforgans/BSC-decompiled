contract main {




// =====================  Runtime code  =====================


#
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
                            mem[mem[64] + 36] = _546 + 96
                            mem[_546 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _805 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _805:
                                mem[_546 + mem[64] + t + 132] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _805 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _546 + 96, mem[mem[64] + 68 len _805 + _546 + 64]
                            else:
                                mem[floor32(_805) + _546 + mem[64] + 132] = mem[floor32(_805) + _546 + mem[64] + -(_805 % 32) + 164 len _805 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _546 + 96, mem[mem[64] + 68 len floor32(_805) + _546 + 96]
                        else:
                            mem[floor32(_546) + mem[64] + 100] = mem[floor32(_546) + mem[64] + -(_546 % 32) + 132 len _546 % 32]
                            mem[mem[64] + 36] = floor32(_546) + 128
                            mem[floor32(_546) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _814 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _814:
                                mem[floor32(_546) + mem[64] + t + 164] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _814 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_546) + 128, mem[mem[64] + 68 len _814 + floor32(_546) + 96]
                            else:
                                mem[floor32(_814) + floor32(_546) + mem[64] + 164] = mem[floor32(_814) + floor32(_546) + mem[64] + -(_814 % 32) + 196 len _814 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_546) + 128, mem[mem[64] + 68 len floor32(_814) + floor32(_546) + 128]
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
                            mem[mem[64] + 36] = _557 + 96
                            mem[_557 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _802 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _802:
                                mem[_557 + mem[64] + t + 132] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _802 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _557 + 96, mem[mem[64] + 68 len _802 + _557 + 64]
                            else:
                                mem[floor32(_802) + _557 + mem[64] + 132] = mem[floor32(_802) + _557 + mem[64] + -(_802 % 32) + 164 len _802 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _557 + 96, mem[mem[64] + 68 len floor32(_802) + _557 + 96]
                        else:
                            mem[floor32(_557) + mem[64] + 100] = mem[floor32(_557) + mem[64] + -(_557 % 32) + 132 len _557 % 32]
                            mem[mem[64] + 36] = floor32(_557) + 128
                            mem[floor32(_557) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            _812 = mem[(2 * ceil32(arg1.length)) + _413 + 386]
                            t = 0
                            while t < _812:
                                mem[floor32(_557) + mem[64] + t + 164] = mem[(2 * ceil32(arg1.length)) + _413 + t + 418]
                                t = t + 32
                                continue 
                            if not _812 % 32:
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_557) + 128, mem[mem[64] + 68 len _812 + floor32(_557) + 96]
                            else:
                                mem[floor32(_812) + floor32(_557) + mem[64] + 164] = mem[floor32(_812) + floor32(_557) + mem[64] + -(_812 % 32) + 196 len _812 % 32]
                                require ext_code.size(address(_412))
                                staticcall address(_412).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_557) + 128, mem[mem[64] + 68 len floor32(_812) + floor32(_557) + 128]
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
                            mem[mem[64] + 36] = _541 + 96
                            mem[_541 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _799 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _799:
                                mem[_541 + mem[64] + t + 132] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _799 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _541 + 96, mem[mem[64] + 68 len _799 + _541 + 64]
                            else:
                                mem[floor32(_799) + _541 + mem[64] + 132] = mem[floor32(_799) + _541 + mem[64] + -(_799 % 32) + 164 len _799 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _541 + 96, mem[mem[64] + 68 len floor32(_799) + _541 + 96]
                        else:
                            mem[floor32(_541) + mem[64] + 100] = mem[floor32(_541) + mem[64] + -(_541 % 32) + 132 len _541 % 32]
                            mem[mem[64] + 36] = floor32(_541) + 128
                            mem[floor32(_541) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _810 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _810:
                                mem[floor32(_541) + mem[64] + t + 164] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _810 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_541) + 128, mem[mem[64] + 68 len _810 + floor32(_541) + 96]
                            else:
                                mem[floor32(_810) + floor32(_541) + mem[64] + 164] = mem[floor32(_810) + floor32(_541) + mem[64] + -(_810 % 32) + 196 len _810 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_541) + 128, mem[mem[64] + 68 len floor32(_810) + floor32(_541) + 128]
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
                            mem[mem[64] + 36] = _551 + 96
                            mem[_551 + mem[64] + 100] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _796 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _796:
                                mem[_551 + mem[64] + t + 132] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _796 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _551 + 96, mem[mem[64] + 68 len _796 + _551 + 64]
                            else:
                                mem[floor32(_796) + _551 + mem[64] + 132] = mem[floor32(_796) + _551 + mem[64] + -(_796 % 32) + 164 len _796 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, _551 + 96, mem[mem[64] + 68 len floor32(_796) + _551 + 96]
                        else:
                            mem[floor32(_551) + mem[64] + 100] = mem[floor32(_551) + mem[64] + -(_551 % 32) + 132 len _551 % 32]
                            mem[mem[64] + 36] = floor32(_551) + 128
                            mem[floor32(_551) + mem[64] + 132] = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            _808 = mem[(2 * ceil32(arg1.length)) + _410 + 386]
                            t = 0
                            while t < _808:
                                mem[floor32(_551) + mem[64] + t + 164] = mem[(2 * ceil32(arg1.length)) + _410 + t + 418]
                                t = t + 32
                                continue 
                            if not _808 % 32:
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_551) + 128, mem[mem[64] + 68 len _808 + floor32(_551) + 96]
                            else:
                                mem[floor32(_808) + floor32(_551) + mem[64] + 164] = mem[floor32(_808) + floor32(_551) + mem[64] + -(_808 % 32) + 196 len _808 % 32]
                                require ext_code.size(address(_409))
                                staticcall address(_409).0x20c13b0b with:
                                        gas gas_remaining wei
                                       args 64, floor32(_551) + 128, mem[mem[64] + 68 len floor32(_808) + floor32(_551) + 128]
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
    if threshold <= 0:
        revert with 0, 'Threshold needs to be defined!'
    if not threshold:
        if arg10.length < 0:
            revert with 0, 'Signatures data too short'
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while idx < threshold:
            _4722 = mem[ceil32(arg3.length) + (65 * idx) + 642]
            _4723 = mem[ceil32(arg3.length) + (65 * idx) + 674]
            _4724 = mem[ceil32(arg3.length) + (65 * idx) + 675]
            if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]:
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] == 1:
                    if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                        if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])].field_0:
                                revert with 0, 'Invalid owner provided'
                    else:
                        if not approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                            revert with 0, 'Hash has not been approved'
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] != msg.sender:
                            approvedHashes[address(mem[ceil32(arg3.length) + (65 * idx) + 642])][sha3(0, 0, stor6, _7)] = 0
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])].field_0:
                            revert with 0, 'Invalid owner provided'
                    if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = mem[ceil32(arg3.length) + (65 * idx) + 674]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    continue 
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] <= 30:
                    _4737 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4737 + 32] = sha3(0, 0, domainSeparator, _7)
                    mem[_4737 + 64] = uint8(_4724)
                    mem[_4737 + 96] = _4722
                    mem[_4737 + 128] = _4723
                    signer = erecover(sha3(0, 0, domainSeparator, _7), _4724 << 248, _4722, _4723) 
                    mem[_4737] = signer
                else:
                    _4740 = mem[64]
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                    _4741 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _4743 = sha3(mem[_4741 + 32 len mem[_4741]])
                    mem[_4740 + 92] = 0
                    mem[64] = _4740 + 124
                    mem[_4740 + 124] = _4743
                    mem[_4740 + 156] = uint8(uint8(_4724) - 4)
                    mem[_4740 + 188] = _4722
                    mem[_4740 + 220] = _4723
                    signer = erecover(_4743, uint8(_4724) - 4 << 248, _4722, _4723) 
                    mem[_4740 + 92] = signer
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
                s = _4723
                s = _4722
                s = uint8(_4724)
                s = signer
                s = signer
                continue 
            if not threshold:
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 0:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _4916 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _4916:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _4916 % 32:
                    mem[mem[64] + 36] = _4916 + 96
                    mem[_4916 + mem[64] + 100] = mem[ceil32(arg3.length) + _4723 + 642]
                    _9431 = mem[ceil32(arg3.length) + _4723 + 642]
                    t = 0
                    while t < _9431:
                        mem[_4916 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _4723 + t + 674]
                        t = t + 32
                        continue 
                    if not _9431 % 32:
                        require ext_code.size(address(_4722))
                        staticcall address(_4722).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _4916 + 96, mem[mem[64] + 68 len _9431 + _4916 + 64]
                    else:
                        mem[floor32(_9431) + _4916 + mem[64] + 132] = mem[floor32(_9431) + _4916 + mem[64] + -(_9431 % 32) + 164 len _9431 % 32]
                        require ext_code.size(address(_4722))
                        staticcall address(_4722).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _4916 + 96, mem[mem[64] + 68 len floor32(_9431) + _4916 + 96]
                else:
                    mem[floor32(_4916) + mem[64] + 100] = mem[floor32(_4916) + mem[64] + -(_4916 % 32) + 132 len _4916 % 32]
                    mem[mem[64] + 36] = floor32(_4916) + 128
                    mem[floor32(_4916) + mem[64] + 132] = mem[ceil32(arg3.length) + _4723 + 642]
                    _9440 = mem[ceil32(arg3.length) + _4723 + 642]
                    t = 0
                    while t < _9440:
                        mem[floor32(_4916) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _4723 + t + 674]
                        t = t + 32
                        continue 
                    if not _9440 % 32:
                        require ext_code.size(address(_4722))
                        staticcall address(_4722).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_4916) + 128, mem[mem[64] + 68 len _9440 + floor32(_4916) + 96]
                    else:
                        mem[floor32(_9440) + floor32(_4916) + mem[64] + 164] = mem[floor32(_9440) + floor32(_4916) + mem[64] + -(_9440 % 32) + 196 len _9440 % 32]
                        require ext_code.size(address(_4722))
                        staticcall address(_4722).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_4916) + 128, mem[mem[64] + 68 len floor32(_9440) + floor32(_4916) + 128]
            else:
                require threshold
                require 65 * threshold / threshold == 65
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 65 * threshold:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _4927 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _4927:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _4927 % 32:
                    mem[mem[64] + 36] = _4927 + 96
                    mem[_4927 + mem[64] + 100] = mem[ceil32(arg3.length) + _4723 + 642]
                    _9428 = mem[ceil32(arg3.length) + _4723 + 642]
                    t = 0
                    while t < _9428:
                        mem[_4927 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _4723 + t + 674]
                        t = t + 32
                        continue 
                    if not _9428 % 32:
                        require ext_code.size(address(_4722))
                        staticcall address(_4722).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _4927 + 96, mem[mem[64] + 68 len _9428 + _4927 + 64]
                    else:
                        mem[floor32(_9428) + _4927 + mem[64] + 132] = mem[floor32(_9428) + _4927 + mem[64] + -(_9428 % 32) + 164 len _9428 % 32]
                        require ext_code.size(address(_4722))
                        staticcall address(_4722).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _4927 + 96, mem[mem[64] + 68 len floor32(_9428) + _4927 + 96]
                else:
                    mem[floor32(_4927) + mem[64] + 100] = mem[floor32(_4927) + mem[64] + -(_4927 % 32) + 132 len _4927 % 32]
                    mem[mem[64] + 36] = floor32(_4927) + 128
                    mem[floor32(_4927) + mem[64] + 132] = mem[ceil32(arg3.length) + _4723 + 642]
                    _9438 = mem[ceil32(arg3.length) + _4723 + 642]
                    t = 0
                    while t < _9438:
                        mem[floor32(_4927) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _4723 + t + 674]
                        t = t + 32
                        continue 
                    if not _9438 % 32:
                        require ext_code.size(address(_4722))
                        staticcall address(_4722).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_4927) + 128, mem[mem[64] + 68 len _9438 + floor32(_4927) + 96]
                    else:
                        mem[floor32(_9438) + floor32(_4927) + mem[64] + 164] = mem[floor32(_9438) + floor32(_4927) + mem[64] + -(_9438 % 32) + 196 len _9438 % 32]
                        require ext_code.size(address(_4722))
                        staticcall address(_4722).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_4927) + 128, mem[mem[64] + 68 len floor32(_9438) + floor32(_4927) + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
            if address(_4722) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(_4722)
            mem[32] = 2
            if not stor2[address(_4722)].field_0:
                revert with 0, 'Invalid owner provided'
            if address(_4722) == 1:
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _4723
            s = _4722
            s = uint8(_4724)
            s = _4722
            s = _4722
            continue 
        if 64 * arg5 / 63 >= arg5 + 2500:
            if gas_remaining < (64 * arg5 / 63) + 500:
                revert with 0, 
                            32,
                            42,
                            0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                            mem[mem[64] + 110 len 22]
            _4765 = mem[64]
            mem[64] = mem[64] + ceil32(arg3.length) + 32
            mem[_4765] = arg3.length
            mem[_4765 + 32 len arg3.length] = arg3[all]
            mem[_4765 + arg3.length + 32] = 0
            require arg4 <= 1
            if not arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 2500 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5257 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5258 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5258 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5258 + 36 len mem[_5258] - 4]
                                    mem[_5257 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5257 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5257 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5257 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5257 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5524 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5525 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5525 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5525 + 36 len mem[_5525] - 4]
                                    mem[_5524 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5524 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5524 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5524 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5524 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5262 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5263 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5263 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5263 + 36 len mem[_5263] - 4]
                                    mem[_5262 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5262 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5262 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5262 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5262 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5534 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5535 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5535 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5535 + 36 len mem[_5535] - 4]
                                    mem[_5534 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5534 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5534 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5534 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5534 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5514 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5515 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5515 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5515 + 36 len mem[_5515] - 4]
                                    mem[_5514 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5514 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5514 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5514 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5514 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5983 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5984 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5984 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5984 + 36 len mem[_5984] - 4]
                                    mem[_5983 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5983 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5983 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5983 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5983 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5519 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5520 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5520 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5520 + 36 len mem[_5520] - 4]
                                    mem[_5519 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5519 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5519 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5519 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5519 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5993 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5994 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5994 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5994 + 36 len mem[_5994] - 4]
                                    mem[_5993 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5993 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5993 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5993 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5993 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _6003 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _6004 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6004 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6004 + 36 len mem[_6004] - 4]
                                mem[_6003 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6003 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6003 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6003 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6003 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6573 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _6574 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6574 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6574 + 36 len mem[_6574] - 4]
                                mem[_6573 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6573 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6573 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6573 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6573 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _6008 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _6009 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6009 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6009 + 36 len mem[_6009] - 4]
                                mem[_6008 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6008 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6008 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6008 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6008 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6583 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _6584 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6584 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6584 + 36 len mem[_6584] - 4]
                                mem[_6583 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6583 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6583 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6583 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6583 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5267 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5268 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5268 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5268 + 36 len mem[_5268] - 4]
                                    mem[_5267 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5267 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5267 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5267 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5267 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5554 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5555 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5555 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5555 + 36 len mem[_5555] - 4]
                                    mem[_5554 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5554 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5554 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5554 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5554 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5272 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5273 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5273 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5273 + 36 len mem[_5273] - 4]
                                    mem[_5272 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5272 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5272 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5272 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5272 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5564 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5565 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5565 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5565 + 36 len mem[_5565] - 4]
                                    mem[_5564 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5564 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5564 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5564 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5564 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5544 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5545 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5545 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5545 + 36 len mem[_5545] - 4]
                                    mem[_5544 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5544 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5544 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5544 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5544 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _6027 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6028 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6028 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6028 + 36 len mem[_6028] - 4]
                                    mem[_6027 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6027 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6027 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_6027 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6027 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5549 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5550 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5550 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5550 + 36 len mem[_5550] - 4]
                                    mem[_5549 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5549 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5549 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5549 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5549 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _6037 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6038 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6038 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6038 + 36 len mem[_6038] - 4]
                                    mem[_6037 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6037 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6037 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_6037 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6037 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _6047 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _6048 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6048 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6048 + 36 len mem[_6048] - 4]
                                mem[_6047 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6047 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6047 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6047 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6047 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6619 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _6620 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6620 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6620 + 36 len mem[_6620] - 4]
                                mem[_6619 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6619 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6619 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6619 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6619 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _6052 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _6053 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6053 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6053 + 36 len mem[_6053] - 4]
                                mem[_6052 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6052 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6052 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6052 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6052 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6629 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _6630 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6630 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6630 + 36 len mem[_6630] - 4]
                                mem[_6629 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6629 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6629 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6629 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6629 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
        else:
            if gas_remaining < arg5 + 3000:
                revert with 0, 
                            32,
                            42,
                            0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                            mem[mem[64] + 110 len 22]
            _4768 = mem[64]
            mem[64] = mem[64] + ceil32(arg3.length) + 32
            mem[_4768] = arg3.length
            mem[_4768 + 32 len arg3.length] = arg3[all]
            mem[_4768 + arg3.length + 32] = 0
            require arg4 <= 1
            if not arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 2500 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5277 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5278 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5278 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5278 + 36 len mem[_5278] - 4]
                                    mem[_5277 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5277 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5277 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5277 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5277 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5584 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5585 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5585 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5585 + 36 len mem[_5585] - 4]
                                    mem[_5584 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5584 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5584 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5584 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5584 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5282 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5283 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5283 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5283 + 36 len mem[_5283] - 4]
                                    mem[_5282 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5282 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5282 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5282 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5282 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5594 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5595 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5595 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5595 + 36 len mem[_5595] - 4]
                                    mem[_5594 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5594 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5594 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5594 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5594 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5574 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5575 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5575 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5575 + 36 len mem[_5575] - 4]
                                    mem[_5574 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5574 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5574 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5574 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5574 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _6071 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6072 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6072 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6072 + 36 len mem[_6072] - 4]
                                    mem[_6071 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6071 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6071 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_6071 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6071 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5579 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5580 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5580 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5580 + 36 len mem[_5580] - 4]
                                    mem[_5579 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5579 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5579 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5579 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5579 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _6081 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6082 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6082 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6082 + 36 len mem[_6082] - 4]
                                    mem[_6081 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6081 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6081 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_6081 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6081 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _6091 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _6092 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6092 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6092 + 36 len mem[_6092] - 4]
                                mem[_6091 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6091 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6091 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6091 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6091 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6665 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _6666 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6666 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6666 + 36 len mem[_6666] - 4]
                                mem[_6665 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6665 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6665 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6665 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6665 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _6096 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _6097 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6097 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6097 + 36 len mem[_6097] - 4]
                                mem[_6096 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6096 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6096 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6096 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6096 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6675 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _6676 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6676 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6676 + 36 len mem[_6676] - 4]
                                mem[_6675 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6675 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6675 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6675 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6675 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5287 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5288 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5288 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5288 + 36 len mem[_5288] - 4]
                                    mem[_5287 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5287 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5287 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5287 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5287 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5614 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5615 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5615 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5615 + 36 len mem[_5615] - 4]
                                    mem[_5614 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5614 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5614 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5614 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5614 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5292 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5293 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5293 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5293 + 36 len mem[_5293] - 4]
                                    mem[_5292 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5292 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5292 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5292 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5292 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5624 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5625 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5625 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5625 + 36 len mem[_5625] - 4]
                                    mem[_5624 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5624 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5624 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5624 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5624 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5604 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5605 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5605 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5605 + 36 len mem[_5605] - 4]
                                    mem[_5604 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5604 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5604 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5604 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5604 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _6115 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6116 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6116 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6116 + 36 len mem[_6116] - 4]
                                    mem[_6115 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6115 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6115 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_6115 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6115 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5609 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5610 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5610 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5610 + 36 len mem[_5610] - 4]
                                    mem[_5609 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5609 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5609 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5609 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5609 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _6125 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _6126 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_6126 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_6126 + 36 len mem[_6126] - 4]
                                    mem[_6125 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6125 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6125 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_6125 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_6125 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _6135 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _6136 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6136 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6136 + 36 len mem[_6136] - 4]
                                mem[_6135 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6135 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6135 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6135 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6135 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6711 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _6712 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6712 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6712 + 36 len mem[_6712] - 4]
                                mem[_6711 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6711 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6711 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6711 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6711 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _6140 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _6141 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6141 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6141 + 36 len mem[_6141] - 4]
                                mem[_6140 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6140 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6140 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6140 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6140 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6721 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _6722 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6722 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6722 + 36 len mem[_6722] - 4]
                                mem[_6721 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6721 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6721 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6721 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6721 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
    else:
        require threshold
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
            _4719 = mem[ceil32(arg3.length) + (65 * idx) + 642]
            _4720 = mem[ceil32(arg3.length) + (65 * idx) + 674]
            _4721 = mem[ceil32(arg3.length) + (65 * idx) + 675]
            if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]:
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] == 1:
                    if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                        if msg.sender == mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]:
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]].field_0:
                                revert with 0, 'Invalid owner provided'
                        else:
                            approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)] = 0
                            if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                                revert with 0, 'Invalid owner provided'
                            mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                            mem[32] = 2
                            if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])].field_0:
                                revert with 0, 'Invalid owner provided'
                    else:
                        if not approvedHashes[mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]][sha3(0, 0, stor6, _7)]:
                            revert with 0, 'Hash has not been approved'
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] != msg.sender:
                            approvedHashes[address(mem[ceil32(arg3.length) + (65 * idx) + 642])][sha3(0, 0, stor6, _7)] = 0
                        if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] <= address(s):
                            revert with 0, 'Invalid owner provided'
                        mem[0] = mem[ceil32(arg3.length) + (65 * idx) + 654 len 20]
                        mem[32] = 2
                        if not stor2[address(mem[ceil32(arg3.length) + (65 * idx) + 642])].field_0:
                            revert with 0, 'Invalid owner provided'
                    if mem[ceil32(arg3.length) + (65 * idx) + 654 len 20] == 1:
                        revert with 0, 'Invalid owner provided'
                    idx = idx + 1
                    s = mem[ceil32(arg3.length) + (65 * idx) + 674]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 706 len 1]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    s = mem[ceil32(arg3.length) + (65 * idx) + 642]
                    continue 
                if mem[ceil32(arg3.length) + (65 * idx) + 706 len 1] <= 30:
                    _4725 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4725 + 32] = sha3(0, 0, domainSeparator, _7)
                    mem[_4725 + 64] = uint8(_4721)
                    mem[_4725 + 96] = _4719
                    mem[_4725 + 128] = _4720
                    signer = erecover(sha3(0, 0, domainSeparator, _7), _4721 << 248, _4719, _4720) 
                    mem[_4725] = signer
                else:
                    _4728 = mem[64]
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = sha3(0, 0, domainSeparator, _7)
                    _4729 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _4731 = sha3(mem[_4729 + 32 len mem[_4729]])
                    mem[_4728 + 92] = 0
                    mem[64] = _4728 + 124
                    mem[_4728 + 124] = _4731
                    mem[_4728 + 156] = uint8(uint8(_4721) - 4)
                    mem[_4728 + 188] = _4719
                    mem[_4728 + 220] = _4720
                    signer = erecover(_4731, uint8(_4721) - 4 << 248, _4719, _4720) 
                    mem[_4728 + 92] = signer
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
                s = _4720
                s = _4719
                s = uint8(_4721)
                s = signer
                s = signer
                continue 
            if not threshold:
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 0:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _4911 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _4911:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _4911 % 32:
                    mem[mem[64] + 36] = _4911 + 96
                    mem[_4911 + mem[64] + 100] = mem[ceil32(arg3.length) + _4720 + 642]
                    _9425 = mem[ceil32(arg3.length) + _4720 + 642]
                    t = 0
                    while t < _9425:
                        mem[_4911 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _4720 + t + 674]
                        t = t + 32
                        continue 
                    if not _9425 % 32:
                        require ext_code.size(address(_4719))
                        staticcall address(_4719).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _4911 + 96, mem[mem[64] + 68 len _9425 + _4911 + 64]
                    else:
                        mem[floor32(_9425) + _4911 + mem[64] + 132] = mem[floor32(_9425) + _4911 + mem[64] + -(_9425 % 32) + 164 len _9425 % 32]
                        require ext_code.size(address(_4719))
                        staticcall address(_4719).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _4911 + 96, mem[mem[64] + 68 len floor32(_9425) + _4911 + 96]
                else:
                    mem[floor32(_4911) + mem[64] + 100] = mem[floor32(_4911) + mem[64] + -(_4911 % 32) + 132 len _4911 % 32]
                    mem[mem[64] + 36] = floor32(_4911) + 128
                    mem[floor32(_4911) + mem[64] + 132] = mem[ceil32(arg3.length) + _4720 + 642]
                    _9436 = mem[ceil32(arg3.length) + _4720 + 642]
                    t = 0
                    while t < _9436:
                        mem[floor32(_4911) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _4720 + t + 674]
                        t = t + 32
                        continue 
                    if not _9436 % 32:
                        require ext_code.size(address(_4719))
                        staticcall address(_4719).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_4911) + 128, mem[mem[64] + 68 len _9436 + floor32(_4911) + 96]
                    else:
                        mem[floor32(_9436) + floor32(_4911) + mem[64] + 164] = mem[floor32(_9436) + floor32(_4911) + mem[64] + -(_9436 % 32) + 196 len _9436 % 32]
                        require ext_code.size(address(_4719))
                        staticcall address(_4719).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_4911) + 128, mem[mem[64] + 68 len floor32(_9436) + floor32(_4911) + 128]
            else:
                require threshold
                require 65 * threshold / threshold == 65
                if mem[ceil32(arg3.length) + (65 * idx) + 674] < 65 * threshold:
                    revert with 0, 
                                32,
                                55,
                                0x30496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a20696e736964652073746174696320706172,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                55,
                                0x65496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a206c656e677468206e6f742070726573656e,
                                mem[mem[64] + 123 len 9]
                require mem[ceil32(arg3.length) + (65 * idx) + 674] + 32 >= mem[ceil32(arg3.length) + (65 * idx) + 674]
                require mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] >= 0
                if mem[ceil32(arg3.length) + (65 * idx) + 674] + mem[ceil32(arg3.length) + mem[ceil32(arg3.length) + (65 * idx) + 674] + 642] + 32 > mem[ceil32(arg3.length) + 610]:
                    revert with 0, 
                                32,
                                54,
                                0x64496e76616c696420636f6e7472616374207369676e6174757265206c6f636174696f6e3a2064617461206e6f7420636f6d706c6574,
                                mem[mem[64] + 122 len 10]
                mem[mem[64]] = 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 512]
                _4921 = mem[ceil32(arg3.length) + 512]
                t = 0
                while t < _4921:
                    mem[mem[64] + t + 100] = mem[ceil32(arg3.length) + t + 544]
                    t = t + 32
                    continue 
                if not _4921 % 32:
                    mem[mem[64] + 36] = _4921 + 96
                    mem[_4921 + mem[64] + 100] = mem[ceil32(arg3.length) + _4720 + 642]
                    _9422 = mem[ceil32(arg3.length) + _4720 + 642]
                    t = 0
                    while t < _9422:
                        mem[_4921 + mem[64] + t + 132] = mem[ceil32(arg3.length) + _4720 + t + 674]
                        t = t + 32
                        continue 
                    if not _9422 % 32:
                        require ext_code.size(address(_4719))
                        staticcall address(_4719).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _4921 + 96, mem[mem[64] + 68 len _9422 + _4921 + 64]
                    else:
                        mem[floor32(_9422) + _4921 + mem[64] + 132] = mem[floor32(_9422) + _4921 + mem[64] + -(_9422 % 32) + 164 len _9422 % 32]
                        require ext_code.size(address(_4719))
                        staticcall address(_4719).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, _4921 + 96, mem[mem[64] + 68 len floor32(_9422) + _4921 + 96]
                else:
                    mem[floor32(_4921) + mem[64] + 100] = mem[floor32(_4921) + mem[64] + -(_4921 % 32) + 132 len _4921 % 32]
                    mem[mem[64] + 36] = floor32(_4921) + 128
                    mem[floor32(_4921) + mem[64] + 132] = mem[ceil32(arg3.length) + _4720 + 642]
                    _9434 = mem[ceil32(arg3.length) + _4720 + 642]
                    t = 0
                    while t < _9434:
                        mem[floor32(_4921) + mem[64] + t + 164] = mem[ceil32(arg3.length) + _4720 + t + 674]
                        t = t + 32
                        continue 
                    if not _9434 % 32:
                        require ext_code.size(address(_4719))
                        staticcall address(_4719).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_4921) + 128, mem[mem[64] + 68 len _9434 + floor32(_4921) + 96]
                    else:
                        mem[floor32(_9434) + floor32(_4921) + mem[64] + 164] = mem[floor32(_9434) + floor32(_4921) + mem[64] + -(_9434 % 32) + 196 len _9434 % 32]
                        require ext_code.size(address(_4719))
                        staticcall address(_4719).0x20c13b0b with:
                                gas gas_remaining wei
                               args 64, floor32(_4921) + 128, mem[mem[64] + 68 len floor32(_9434) + floor32(_4921) + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 35, 0x64496e76616c696420636f6e7472616374207369676e61747572652070726f76696465, mem[mem[64] + 103 len 29]
            if address(_4719) <= address(s):
                revert with 0, 'Invalid owner provided'
            mem[0] = address(_4719)
            mem[32] = 2
            if not stor2[address(_4719)].field_0:
                revert with 0, 'Invalid owner provided'
            if address(_4719) == 1:
                revert with 0, 'Invalid owner provided'
            idx = idx + 1
            s = _4720
            s = _4719
            s = uint8(_4721)
            s = _4719
            s = _4719
            continue 
        if 64 * arg5 / 63 >= arg5 + 2500:
            if gas_remaining < (64 * arg5 / 63) + 500:
                revert with 0, 
                            32,
                            42,
                            0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                            mem[mem[64] + 110 len 22]
            _4757 = mem[64]
            mem[64] = mem[64] + ceil32(arg3.length) + 32
            mem[_4757] = arg3.length
            mem[_4757 + 32 len arg3.length] = arg3[all]
            mem[_4757 + arg3.length + 32] = 0
            require arg4 <= 1
            if not arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 2500 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5211 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5212 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5212 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5212 + 36 len mem[_5212] - 4]
                                    mem[_5211 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5211 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5211 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5211 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5211 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5393 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5394 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5394 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5394 + 36 len mem[_5394] - 4]
                                    mem[_5393 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5393 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5393 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5393 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5393 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5216 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5217 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5217 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5217 + 36 len mem[_5217] - 4]
                                    mem[_5216 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5216 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5216 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5216 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5216 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5403 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5404 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5404 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5404 + 36 len mem[_5404] - 4]
                                    mem[_5403 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5403 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5403 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5403 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5403 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5383 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5384 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5384 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5384 + 36 len mem[_5384] - 4]
                                    mem[_5383 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5383 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5383 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5383 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5383 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5797 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5798 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5798 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5798 + 36 len mem[_5798] - 4]
                                    mem[_5797 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5797 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5797 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5797 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5797 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5388 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5389 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5389 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5389 + 36 len mem[_5389] - 4]
                                    mem[_5388 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5388 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5388 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5388 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5388 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5807 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5808 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5808 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5808 + 36 len mem[_5808] - 4]
                                    mem[_5807 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5807 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5807 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5807 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5807 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _5817 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5818 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5818 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5818 + 36 len mem[_5818] - 4]
                                mem[_5817 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5817 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5817 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5817 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5817 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6387 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _6388 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6388 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6388 + 36 len mem[_6388] - 4]
                                mem[_6387 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6387 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6387 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6387 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6387 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _5822 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5823 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5823 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5823 + 36 len mem[_5823] - 4]
                                mem[_5822 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5822 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5822 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5822 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5822 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6397 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _6398 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6398 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6398 + 36 len mem[_6398] - 4]
                                mem[_6397 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6397 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6397 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6397 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6397 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5221 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5222 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5222 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5222 + 36 len mem[_5222] - 4]
                                    mem[_5221 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5221 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5221 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5221 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5221 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5423 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5424 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5424 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5424 + 36 len mem[_5424] - 4]
                                    mem[_5423 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5423 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5423 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5423 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5423 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5226 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5227 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5227 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5227 + 36 len mem[_5227] - 4]
                                    mem[_5226 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5226 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5226 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5226 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5226 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5433 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5434 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5434 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5434 + 36 len mem[_5434] - 4]
                                    mem[_5433 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5433 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5433 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5433 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5433 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5413 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5414 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5414 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5414 + 36 len mem[_5414] - 4]
                                    mem[_5413 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5413 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5413 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5413 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5413 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5841 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5842 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5842 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5842 + 36 len mem[_5842] - 4]
                                    mem[_5841 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5841 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5841 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5841 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5841 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5418 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5419 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5419 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5419 + 36 len mem[_5419] - 4]
                                    mem[_5418 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5418 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5418 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5418 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5418 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5851 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5852 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5852 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5852 + 36 len mem[_5852] - 4]
                                    mem[_5851 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5851 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5851 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5851 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5851 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _5861 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5862 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5862 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5862 + 36 len mem[_5862] - 4]
                                mem[_5861 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5861 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5861 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5861 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5861 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6433 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _6434 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6434 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6434 + 36 len mem[_6434] - 4]
                                mem[_6433 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6433 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6433 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6433 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6433 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _5866 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5867 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5867 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5867 + 36 len mem[_5867] - 4]
                                mem[_5866 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5866 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5866 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5866 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5866 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6443 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _6444 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6444 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6444 + 36 len mem[_6444] - 4]
                                mem[_6443 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6443 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6443 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6443 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6443 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
        else:
            if gas_remaining < arg5 + 3000:
                revert with 0, 
                            32,
                            42,
                            0x724e6f7420656e6f7567682067617320746f20657865637574652073616665207472616e73616374696f,
                            mem[mem[64] + 110 len 22]
            _4760 = mem[64]
            mem[64] = mem[64] + ceil32(arg3.length) + 32
            mem[_4760] = arg3.length
            mem[_4760 + 32 len arg3.length] = arg3[all]
            mem[_4760 + arg3.length + 32] = 0
            require arg4 <= 1
            if not arg7:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 2500 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5231 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5232 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5232 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5232 + 36 len mem[_5232] - 4]
                                    mem[_5231 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5231 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5231 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5231 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5231 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5453 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5454 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5454 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5454 + 36 len mem[_5454] - 4]
                                    mem[_5453 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5453 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5453 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5453 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5453 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5236 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5237 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5237 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5237 + 36 len mem[_5237] - 4]
                                    mem[_5236 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5236 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5236 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5236 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5236 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5463 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5464 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5464 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5464 + 36 len mem[_5464] - 4]
                                    mem[_5463 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5463 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5463 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5463 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5463 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5443 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5444 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5444 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5444 + 36 len mem[_5444] - 4]
                                    mem[_5443 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5443 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5443 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5443 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5443 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5885 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5886 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5886 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5886 + 36 len mem[_5886] - 4]
                                    mem[_5885 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5885 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5885 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5885 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5885 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5448 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5449 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5449 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5449 + 36 len mem[_5449] - 4]
                                    mem[_5448 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5448 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5448 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5448 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5448 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5895 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5896 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5896 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5896 + 36 len mem[_5896] - 4]
                                    mem[_5895 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5895 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5895 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5895 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5895 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas gas_remaining - 2500 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _5905 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5906 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5906 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5906 + 36 len mem[_5906] - 4]
                                mem[_5905 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5905 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5905 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5905 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5905 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6479 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _6480 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6480 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6480 + 36 len mem[_6480] - 4]
                                mem[_6479 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6479 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6479 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6479 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6479 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _5910 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5911 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5911 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5911 + 36 len mem[_5911] - 4]
                                mem[_5910 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5910 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5910 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5910 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5910 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6489 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _6490 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6490 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6490 + 36 len mem[_6490] - 4]
                                mem[_6489 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6489 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6489 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6489 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6489 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
            else:
                if not arg4:
                    call arg1 with:
                       value arg2 wei
                         gas arg5 wei
                        args arg3[all]
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5241 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5242 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5242 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5242 + 36 len mem[_5242] - 4]
                                    mem[_5241 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5241 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5241 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5241 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5241 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5483 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5484 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5484 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5484 + 36 len mem[_5484] - 4]
                                    mem[_5483 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5483 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5483 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5483 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5483 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5246 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5247 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5247 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5247 + 36 len mem[_5247] - 4]
                                    mem[_5246 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5246 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5246 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5246 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5246 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5493 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5494 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5494 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5494 + 36 len mem[_5494] - 4]
                                    mem[_5493 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5493 + return_data.size + 202 len 30]
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5493 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5493 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5493 + return_data.size + 202 len 30]
                                        if not ext_call.success:
                                            emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                        else:
                                            emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return bool(ext_call.success)
                require arg4 <= 1
                if arg4 != 1:
                    require gas_remaining <= gas_remaining
                    if arg7 <= 0:
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call tx.origin with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call tx.origin with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call tx.origin with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5473 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = 0
                                    _5474 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5474 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5474 + 36 len mem[_5474] - 4]
                                    mem[_5473 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5473 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5473 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5473 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5473 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5929 = mem[64]
                                    mem[mem[64] + 36] = tx.origin
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5930 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5930 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5930 + 36 len mem[_5930] - 4]
                                    mem[_5929 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5929 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5929 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5929 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5929 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                        require arg6
                                        require arg6 * arg7 / arg6 == arg7
                                        call arg9 with:
                                           value arg6 * arg7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    if not arg6:
                                        call arg9 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                    else:
                                        require arg6
                                        require arg6 * block.gasprice / arg6 == block.gasprice
                                        call arg9 with:
                                           value arg6 * block.gasprice wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                            else:
                                if not arg6:
                                    _5478 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = 0
                                    _5479 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5479 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5479 + 36 len mem[_5479] - 4]
                                    mem[_5478 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5478 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5478 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5478 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5478 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    _5939 = mem[64]
                                    mem[mem[64] + 36] = arg9
                                    mem[mem[64] + 68] = arg6 * arg7
                                    _5940 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_5940 + 32 len 4] = unknown_0xa9059cbb(?????)
                                    call arg8.0xa9059cbb with:
                                         gas gas_remaining - 10000 wei
                                        args mem[_5940 + 36 len mem[_5940] - 4]
                                    mem[_5939 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5939 + return_data.size + 202 len 30]
                                    else:
                                        if 32 != return_data.size:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5939 + return_data.size + 202 len 30]
                                        if not ext_call.success or not mem[_5939 + 100]:
                                            revert with 0, 
                                                        32,
                                                        34,
                                                        0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                        mem[_5939 + return_data.size + 202 len 30]
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                    return 0
                delegate arg1 with:
                     gas arg5 wei
                    args arg3[all]
                require gas_remaining <= gas_remaining
                if arg7 <= 0:
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call tx.origin with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call tx.origin with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _5949 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = 0
                                _5950 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5950 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5950 + 36 len mem[_5950] - 4]
                                mem[_5949 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5949 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5949 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5949 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5949 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6525 = mem[64]
                                mem[mem[64] + 36] = tx.origin
                                mem[mem[64] + 68] = arg6 * arg7
                                _6526 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6526 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6526 + 36 len mem[_6526] - 4]
                                mem[_6525 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6525 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6525 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6525 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6525 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * arg7 / arg6 == arg7
                                    call arg9 with:
                                       value arg6 * arg7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
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
                                    require arg6
                                    require arg6 * block.gasprice / arg6 == block.gasprice
                                    call arg9 with:
                                       value arg6 * block.gasprice wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with 0, 32, 34, 0x74436f756c64206e6f74207061792067617320636f73747320776974682065746865, mem[mem[64] + 102 len 30]
                                    if not delegate.return_code:
                                        emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                                    else:
                                        emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * block.gasprice);
                        else:
                            if not arg6:
                                _5954 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = 0
                                _5955 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_5955 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_5955 + 36 len mem[_5955] - 4]
                                mem[_5954 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5954 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5954 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_5954 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_5954 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), 0);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), 0);
                            else:
                                require arg6
                                require arg6 * arg7 / arg6 == arg7
                                _6535 = mem[64]
                                mem[mem[64] + 36] = arg9
                                mem[mem[64] + 68] = arg6 * arg7
                                _6536 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_6536 + 32 len 4] = unknown_0xa9059cbb(?????)
                                call arg8.0xa9059cbb with:
                                     gas gas_remaining - 10000 wei
                                    args mem[_6536 + 36 len mem[_6536] - 4]
                                mem[_6535 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6535 + return_data.size + 202 len 30]
                                else:
                                    if 32 != return_data.size:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6535 + return_data.size + 202 len 30]
                                    if not ext_call.success or not mem[_6535 + 100]:
                                        revert with 0, 
                                                    32,
                                                    34,
                                                    0x64436f756c64206e6f74207061792067617320636f737473207769746820746f6b65,
                                                    mem[_6535 + return_data.size + 202 len 30]
                                if not delegate.return_code:
                                    emit ExecutionFailure(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
                                else:
                                    emit ExecutionSuccess(sha3(0, 0, domainSeparator, _7), arg6 * arg7);
    return bool(delegate.return_code)
}



}
