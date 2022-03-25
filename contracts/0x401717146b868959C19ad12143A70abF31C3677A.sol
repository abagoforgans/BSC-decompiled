contract main {




// =====================  Runtime code  =====================


uint256 requestCount;
mapping of uint8 stor1;
mapping of struct requestMap;
mapping of uint256 lastCompletedIdxs;
uint256 defaultTimeLock;
uint256 extendedTimeLock;
address primaryAddress;

function signerSet(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function requestCount() {
    return requestCount
}

function defaultTimeLock() {
    return defaultTimeLock
}

function primary() {
    return primaryAddress
}

function extendedTimeLock() {
    return extendedTimeLock
}

function requestMap(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return requestMap[arg1].field_0, 
           Mask(32, 224, requestMap[arg1].field_256),
           requestMap[arg1].field_256,
           requestMap[arg1].field_512,
           requestMap[arg1].field_768,
           bool(requestMap[arg1].field_1024)
}

function lastCompletedIdxs(address arg1, bytes4 arg2) {
    require calldata.size - 4 >= 64
    return lastCompletedIdxs[arg1][Mask(32, 224, arg2)]
}

function _fallback() payable {
    revert
}

function extendRequestTimeLock(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if primaryAddress != msg.sender:
        revert with 0, 'only primary'
    if not requestMap[arg1].field_288:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x7372656a65637420e280986e756c6ce2809920726573756c74732066726f6d20746865206d6170206c6f6f6b75,
                    mem[209 len 19]
    if 1 == bool(requestMap[arg1].field_1024):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe60657874656e645265717565737454696d654c6f636b60206d757374206265206964656d706f74656e,
                    mem[206 len 22]
    requestMap[arg1].field_1024 = 1
    emit TimeLockExtended(extendedTimeLock + requestMap[arg1].field_768, arg1);
}

function deleteUncompletableRequest(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not requestMap[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x707468657265206d757374206265206120636f6d706c65746564206c6174746572207265717565737420776974682073616d652063616c6c626163,
                    mem[223 len 5]
    if requestMap[arg1].field_512 >= lastCompletedIdxs[stor2[arg1].field_256][Mask(32, 224, stor2[arg1].field_256)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x707468657265206d757374206265206120636f6d706c65746564206c6174746572207265717565737420776974682073616d652063616c6c626163,
                    mem[223 len 5]
    requestMap[arg1].field_0 = 0
    requestMap[arg1].field_256 = 0
    requestMap[arg1].field_512 = 0
    requestMap[arg1].field_768 = 0
    requestMap[arg1].field_1024 = 0
}

function requestUnlock(bytes32 arg1, address arg2, bytes4 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if primaryAddress != msg.sender:
        if msg.value < 10 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6b73656e646572206973207072696d617279206f72207374616b6520697320706169,
                        mem[198 len 30]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x746e6f207a65726f2076616c756520666f722063616c6c6261636b20616464726573,
                    mem[198 len 30]
    requestCount++
    requestMap[sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, stor0 + 1)][arg4][-1].field_0 = arg1
    requestMap[sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, stor0 + 1)][arg4][-1].field_256 = 0
    requestMap[sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, stor0 + 1)][arg4][-1].field_288 = arg2
    requestMap[sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, stor0 + 1)][arg4][-1].field_512 = requestCount + 1
    requestMap[sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, stor0 + 1)][arg4][-1].field_768 = block.timestamp
    requestMap[sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, stor0 + 1)][arg4][-1].field_1024 = 0
    if msg.sender == primaryAddress:
        emit Requested(arg1, address(arg2), Mask(32, 224, arg3), sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, requestCount + 1), address(arg4), sha3(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, requestCount + 1), arg4, -1), defaultTimeLock + block.timestamp);
    else:
        requestMap[sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, stor0 + 1)][arg4][-1].field_1024 = 1
        emit Requested(arg1, address(arg2), Mask(32, 224, arg3), sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, requestCount + 1), address(arg4), sha3(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, requestCount + 1), arg4, -1), extendedTimeLock + block.timestamp);
    return sha3(sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, requestCount + 1), arg4, -1)
}

function completeUnlock(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    if not stor1[msg.sender]:
        revert with 0, 'only signer'
    if not requestMap[arg1].field_288:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x746e6f207a65726f2076616c756520666f722063616c6c6261636b20616464726573,
                    mem[198 len 30]
    if requestMap[arg1].field_512 <= lastCompletedIdxs[stor2[arg1].field_256][Mask(32, 224, stor2[arg1].field_256)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    79,
                    0x7372656a65637420636f6e6669726d73206f66206561726c696572207769746864726177616c732062757269656420756e646572206c6174657220636f6e6669726d6564207769746864726177616c,
                    mem[243 len 17]
    signer = erecover(sha3(0x1954524f4e205369676e6564204d6573, arg1), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor1[address(signer)]:
        revert with 0, 'signer is set'
    signer = erecover(sha3(0x1954524f4e205369676e6564204d6573, arg1), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor1[address(signer)]:
        revert with 0, 'signer is set'
    if address(signer) == address(signer):
        revert with 0, 'signers are different'
    if requestMap[arg1].field_1024:
        if block.timestamp - requestMap[arg1].field_768 < extendedTimeLock:
            emit TimeLocked(requestMap[arg1].field_768 + extendedTimeLock, arg1);
            return 0
    if block.timestamp - requestMap[arg1].field_768 < defaultTimeLock:
        emit TimeLocked(requestMap[arg1].field_768 + defaultTimeLock, arg1);
        return 0
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    lastCompletedIdxs[stor2[arg1].field_256][Mask(32, 224, stor2[arg1].field_256)] = requestMap[arg1].field_512
    requestMap[arg1].field_0 = 0
    requestMap[arg1].field_256 = 0
    requestMap[arg1].field_288 = 0
    requestMap[arg1].field_512 = 0
    requestMap[arg1].field_768 = 0
    requestMap[arg1].field_1024 = 0
    call requestMap[arg1].field_288 with:
       funct uint32(arg6)
         gas gas_remaining wei
        args requestMap[arg1].field_32, uint32(arg7)
    if not ext_call.success:
        emit Failed(requestMap[arg1].field_0, arg1, address(signer), address(signer));
    else:
        emit Completed(requestMap[arg1].field_0, arg1, address(signer), address(signer));
    return bool(ext_call.success)
}



}
