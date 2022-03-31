contract main {




// =====================  Runtime code  =====================


address msAddress;
address soteMasterAddress;
address stor2;
uint256 stor2;
address stor3;
uint256 stor3;
address stor4;
uint256 stor4;
address stor5;
uint256 stor5;
address stor6;
uint256 stor6;
address stor7;
uint256 stor7;
uint256 stor8;
uint8 stor9; offset 160
address stor9;
uint256 stor9;

function ms() {
    return msAddress
}

function soteMasterAddress() {
    return soteMasterAddress
}

function sendEther() payable {
  stop
}

function _fallback() payable {
    revert
}

function changeMasterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function checkCoverExpired(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getValidityOfCover(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] < uint64(block.timestamp))
}

function getOrderHash(uint256[] arg1, uint16 arg2, bytes4 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 0 < arg1.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    require 4 < arg1.length
    return sha3(mem[128], arg3, arg2, arg4, mem[160], mem[192], mem[224], mem[256], Mask(160, 96, this.address) >> 96)
}

function isValidSignature(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getAuthQuoteEngine() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (address(signer) == ext_call.return_data[12 len 20])
}

function getRecentHoldedCoverIdStatus(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getUserHoldedCoverLength(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return -1
    require 1 <= ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getUserHoldedCoverByIndex(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).holdedCoverIDStatus(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function removeSAFromCSA(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverDetailsByCoverID1(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(address(stor7))
    call address(stor7).subFromTotalSumAssured(bytes4 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args Mask(32, 224, ext_call.return_data[96]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).subFromTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[64]), Mask(32, 224, ext_call.return_data[96]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function verifySign(uint256[] arg1, uint16 arg2, bytes4 arg3, address arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg4
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x4f935945 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 
                    32,
                    48,
                    0xfe43616e206e6f742062757920636f76657220756e74696c20636170207265616368656420666f72203173742074696d,
                    mem[(32 * arg1.length) + 244 len 16]
    require 0 < arg1.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    require 4 < arg1.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[128], arg3, arg2, arg4, mem[160], mem[192], mem[224], mem[256], Mask(160, 96, this.address) >> 96)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getAuthQuoteEngine() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (address(signer) == ext_call.return_data[12 len 20])
}

function transferAssetsToNewContract(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if uint8(stor9.field_160):
        revert with 0, 'Reentrant call.'
    uint8(stor9.field_160) = 1
    if eth.balance(this.address):
        require ext_code.size(arg1)
        call arg1.sendEther() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x255f5049 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    s = 0
    while uint64(idx) < ext_call.return_data[0]:
        require ext_code.size(address(stor6))
        staticcall address(stor6).0x3c40b1f0 with:
                gas gas_remaining wei
               args uint64(idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor6))
        staticcall address(stor6).0xe3dee239 with:
                gas gas_remaining wei
               args Mask(32, 224, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = arg1
            mem[132] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    uint8(stor9.field_160) = 0
}

function expireCover(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getValidityOfCover(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < uint64(block.timestamp)
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverStatusNo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] != 3
    require ext_code.size(address(stor2))
    call address(stor2).0x85f52204 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverDetailsByCoverID1(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverStatusNo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != 1:
        require ext_code.size(msAddress)
        staticcall msAddress.isPause() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require ext_code.size(address(stor7))
        staticcall address(stor7).getCoverDetailsByCoverID1(uint256 rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_code.size(address(stor7))
        call address(stor7).subFromTotalSumAssured(bytes4 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args Mask(32, 224, ext_call.return_data[96]), ext_call.return_data[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor7))
        call address(stor7).subFromTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[64]), Mask(32, 224, ext_call.return_data[96]), ext_call.return_data[128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).changeCoverStatusNo(uint256 rg1, uint8 rg2) with:
         gas gas_remaining wei
        args arg1, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeDependentContractAddress() {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4d43000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor8 = ext_call.return_data[12 len 20] or Mask(96, 160, stor8)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5446000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5443000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5444000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5144000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5031000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5044000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4d52000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9.field_0))
}

function initiateMembershipAndCover(address arg1, bytes4 arg2, uint256[] arg3, uint16 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require 3 < arg3.length
    require mem[224] > block.timestamp
    require 4 < arg3.length
    _9 = mem[256]
    mem[(32 * arg3.length) + 132] = mem[256]
    require ext_code.size(address(stor7))
    staticcall address(stor7).timestampRepeated(uint256 rg1) with:
            gas gas_remaining wei
           args _9
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require 4 < arg3.length
    require ext_code.size(address(stor7))
    call address(stor7).setTimestampRepeated(uint256 rg1) with:
         gas gas_remaining wei
        args mem[256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    mem[(32 * arg3.length) + 132] = msg.sender
    require ext_code.size(address(stor7))
    staticcall address(stor7).refundEligible(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(stor4))
    staticcall address(stor4).0x6eeeaaa5 with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, arg2) == 0x424e420000000000000000000000000000000000000000000000000000000000:
        require 1 < arg3.length
        require mem[160] + ext_call.return_data[0] >= ext_call.return_data[0]
        require msg.value == mem[160] + ext_call.return_data[0]
    else:
        mem[(32 * arg3.length) + 132] = Mask(32, 224, arg2)
        require ext_code.size(address(stor6))
        staticcall address(stor6).0xe3dee239 with:
                gas gas_remaining wei
               args Mask(32, 224, arg2)
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < arg3.length
        _37 = mem[160]
        mem[(32 * arg3.length) + 132] = msg.sender
        mem[(32 * arg3.length) + 164] = this.address
        mem[(32 * arg3.length) + 196] = _37
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _37
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require msg.value == ext_call.return_data[0]
    require arg1
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x4f935945 with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 
                    32,
                    48,
                    0xfe43616e206e6f742062757920636f76657220756e74696c20636170207265616368656420666f72203173742074696d,
                    mem[(32 * arg3.length) + 244 len 16]
    require 0 < arg3.length
    require 1 < arg3.length
    require 2 < arg3.length
    require 3 < arg3.length
    require 4 < arg3.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[128], arg2, arg4, arg1, mem[160], mem[192], mem[224], mem[256], Mask(160, 96, this.address) >> 96)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getAuthQuoteEngine() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(signer) == ext_call.return_data[12 len 20]
    mem[(32 * arg3.length) + 750 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(address(stor7))
    call address(stor7).addHoldCover(address rg1, address rg2, bytes4 rg3, uint256[] rg4, uint16 rg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Mask(32, 224, arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 750 len (32 * arg3.length) - floor32(arg3.length)]), arg4 << 240
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).setRefundEligible(address rg1, bool rg2) with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function verifyCoverDetails(address arg1, address arg2, bytes4 arg3, uint256[] arg4, uint16 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 132] = msg.sender
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 3 < arg4.length
    require mem[224] > block.timestamp
    require 4 < arg4.length
    _9 = mem[256]
    mem[(32 * arg4.length) + 132] = mem[256]
    require ext_code.size(address(stor7))
    staticcall address(stor7).timestampRepeated(uint256 rg1) with:
            gas gas_remaining wei
           args _9
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require 4 < arg4.length
    _15 = mem[256]
    mem[(32 * arg4.length) + 132] = mem[256]
    require ext_code.size(address(stor7))
    call address(stor7).setTimestampRepeated(uint256 rg1) with:
         gas gas_remaining wei
        args _15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x4f935945 with:
            gas gas_remaining wei
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 
                    32,
                    48,
                    0xfe43616e206e6f742062757920636f76657220756e74696c20636170207265616368656420666f72203173742074696d,
                    mem[(32 * arg4.length) + 244 len 16]
    require 0 < arg4.length
    require 1 < arg4.length
    _27 = mem[160]
    require 2 < arg4.length
    _29 = mem[192]
    require 3 < arg4.length
    _31 = mem[224]
    require 4 < arg4.length
    _33 = mem[256]
    mem[(32 * arg4.length) + 160] = mem[128]
    mem[(32 * arg4.length) + 192] = Mask(32, 224, arg3)
    mem[(32 * arg4.length) + 196] = arg5 << 240
    mem[(32 * arg4.length) + 198] = address(arg2)
    mem[(32 * arg4.length) + 218] = _27
    mem[(32 * arg4.length) + 128] = 206
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[(32 * arg4.length) + 160], arg3, arg5, arg2, _27, _29, _31, _33, Mask(160, 96, this.address) >> 96)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getAuthQuoteEngine() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(signer) == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4.length
    require 1 < arg4.length
    require 2 < arg4.length
    require ext_code.size(address(stor7))
    call address(stor7).addCover(uint16 rg1, uint256 rg2, address rg3, bytes4 rg4, address rg5, uint256 rg6, uint256 rg7) with:
         gas gas_remaining wei
        args arg5 << 240, mem[128], address(arg1), Mask(32, 224, arg3), address(arg2), mem[160], mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg5 <= 60:
        if not arg5:
            require ext_code.size(address(stor5))
            call address(stor5).0x9cb341e3 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
        else:
            require 24 * 3600 * arg5 / arg5 == 24 * 3600
            require ext_code.size(address(stor5))
            call address(stor5).0x9cb341e3 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], uint64(24 * 3600 * arg5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).tokensRetained() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg4.length
    if not mem[192]:
        require ext_code.size(address(stor3))
        call address(stor3).0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor2))
        call address(stor2).0xf075be1f with:
             gas gas_remaining wei
            args 0, arg5 << 240, ext_call.return_data[0], arg1
    else:
        require ext_call.return_data[0] * mem[192] / mem[192] == ext_call.return_data[0]
        require ext_code.size(address(stor3))
        call address(stor3).0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] * mem[192] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor2))
        call address(stor2).0xf075be1f with:
             gas gas_remaining wei
            args ext_call.return_data[0] * mem[192] / 100, arg5 << 240, ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg4.length
    require ext_code.size(address(stor7))
    call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args Mask(32, 224, arg3), mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg4.length
    require ext_code.size(address(stor7))
    call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg2), Mask(32, 224, arg3), mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 2 < arg4.length
    require ext_code.size(address(stor2))
    call address(stor2).0x899ec98f with:
         gas gas_remaining wei
        args address(arg2), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function makeCoverUsingSOTETokens(uint256[] arg1, uint16 arg2, bytes4 arg3, address arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = msg.sender
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require 2 < arg1.length
    _11 = mem[192]
    mem[(32 * arg1.length) + 132] = msg.sender
    mem[(32 * arg1.length) + 164] = _11
    require ext_code.size(address(stor3))
    call address(stor3).0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, _11
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 3 < arg1.length
    require mem[224] > block.timestamp
    require 4 < arg1.length
    _18 = mem[256]
    mem[(32 * arg1.length) + 132] = mem[256]
    require ext_code.size(address(stor7))
    staticcall address(stor7).timestampRepeated(uint256 rg1) with:
            gas gas_remaining wei
           args _18
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require 4 < arg1.length
    _24 = mem[256]
    mem[(32 * arg1.length) + 132] = mem[256]
    require ext_code.size(address(stor7))
    call address(stor7).setTimestampRepeated(uint256 rg1) with:
         gas gas_remaining wei
        args _24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg4
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x4f935945 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 
                    32,
                    48,
                    0xfe43616e206e6f742062757920636f76657220756e74696c20636170207265616368656420666f72203173742074696d,
                    mem[(32 * arg1.length) + 244 len 16]
    require 0 < arg1.length
    require 1 < arg1.length
    _36 = mem[160]
    require 2 < arg1.length
    _38 = mem[192]
    require 3 < arg1.length
    _40 = mem[224]
    require 4 < arg1.length
    _42 = mem[256]
    mem[(32 * arg1.length) + 160] = mem[128]
    mem[(32 * arg1.length) + 192] = Mask(32, 224, arg3)
    mem[(32 * arg1.length) + 196] = arg2 << 240
    mem[(32 * arg1.length) + 198] = address(arg4)
    mem[(32 * arg1.length) + 218] = _36
    mem[(32 * arg1.length) + 128] = 206
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[(32 * arg1.length) + 160], arg3, arg2, arg4, _36, _38, _40, _42, Mask(160, 96, this.address) >> 96)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getAuthQuoteEngine() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(signer) == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1.length
    require 1 < arg1.length
    require 2 < arg1.length
    require ext_code.size(address(stor7))
    call address(stor7).addCover(uint16 rg1, uint256 rg2, address rg3, bytes4 rg4, address rg5, uint256 rg6, uint256 rg7) with:
         gas gas_remaining wei
        args arg2 << 240, mem[128], msg.sender, Mask(32, 224, arg3), address(arg4), mem[160], mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 <= 60:
        if not arg2:
            require ext_code.size(address(stor5))
            call address(stor5).0x9cb341e3 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
        else:
            require 24 * 3600 * arg2 / arg2 == 24 * 3600
            require ext_code.size(address(stor5))
            call address(stor5).0x9cb341e3 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], uint64(24 * 3600 * arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).tokensRetained() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg1.length
    if not mem[192]:
        require ext_code.size(address(stor3))
        call address(stor3).0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor2))
        call address(stor2).0xf075be1f with:
             gas gas_remaining wei
            args 0, arg2 << 240, ext_call.return_data[0], msg.sender
    else:
        require ext_call.return_data[0] * mem[192] / mem[192] == ext_call.return_data[0]
        require ext_code.size(address(stor3))
        call address(stor3).0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * mem[192] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor2))
        call address(stor2).0xf075be1f with:
             gas gas_remaining wei
            args ext_call.return_data[0] * mem[192] / 100, arg2 << 240, ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1.length
    require ext_code.size(address(stor7))
    call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args Mask(32, 224, arg3), mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1.length
    require ext_code.size(address(stor7))
    call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg4), Mask(32, 224, arg3), mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 2 < arg1.length
    require ext_code.size(address(stor2))
    call address(stor2).0x899ec98f with:
         gas gas_remaining wei
        args address(arg4), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function kycVerdict(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if uint8(stor9.field_160):
        revert with 0, 'Reentrant call.'
    uint8(stor9.field_160) = 1
    require ext_code.size(address(stor7))
    staticcall address(stor7).kycAuthAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getUserHoldedCoverLength(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getUserHoldedCoverByIndex(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128 len 128] = code.data[15326 len 128]
    mem[256] = 0xcc41241c00000000000000000000000000000000000000000000000000000000
    mem[260] = ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getHoldedCoverDetailsByID2(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    _24 = ext_call.return_data[28 len 4], mem[292 len 28]
    _25 = mem[320]
    require mem[320] <= 4294967296
    require mem[320] + 32 <= return_data.size
    require mem[mem[320] + 256] <= 4294967296 and mem[320] + (32 * mem[mem[320] + 256]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256] = mem[mem[320] + 256]
    _28 = mem[_25 + 256]
    mem[ceil32(return_data.size) + 288 len floor32(mem[_25 + 256])] = mem[_25 + 288 len floor32(mem[_25 + 256])]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getHoldedCoverDetailsByID1(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[(32 * _28) + ceil32(return_data.size) + 288 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(address(stor7))
    staticcall address(stor7).refundEligible(address rg1) with:
            gas gas_remaining wei
           args address(_24)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[(32 * _28) + ceil32(return_data.size) + 324] = 0
    require ext_code.size(address(stor7))
    call address(stor7).setRefundEligible(address rg1, bool rg2) with:
         gas gas_remaining wei
        args address(_24), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).holdedCoverIDStatus(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == 1
    require ext_code.size(address(stor4))
    staticcall address(stor4).0x6eeeaaa5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x6e13d8c500000000000000000000000000000000000000000000000000000000
        mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
        mem[(32 * _28) + ceil32(return_data.size) + 324] = 3
        require ext_code.size(address(stor7))
        call address(stor7).setHoldedCoverIDStatus(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if Mask(32, 224, ext_call.return_data[64]) == 0x424e420000000000000000000000000000000000000000000000000000000000:
            require 1 < mem[ceil32(return_data.size) + 256]
            require ext_call.return_data[0] + mem[ceil32(return_data.size) + 320] >= mem[ceil32(return_data.size) + 320]
            call address(_24) with:
               value ext_call.return_data[0] + mem[ceil32(return_data.size) + 320] wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
            require ext_code.size(address(stor6))
            staticcall address(stor6).0xe3dee239 with:
                    gas gas_remaining wei
                   args Mask(32, 224, ext_call.return_data[64])
            mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[ceil32(return_data.size) + 256]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_24), mem[ceil32(return_data.size) + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            call address(_24) with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RefundEvent(ext_call.return_data[0], 0x4b5943204661696c656400000000000000000000000000000000000000000000, address(_24), arg2);
    else:
        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xead3e7200000000000000000000000000000000000000000000000000000000
        mem[(32 * _28) + ceil32(return_data.size) + 292] = address(_24)
        require ext_code.size(address(stor9.field_0))
        call address(stor9.field_0).payJoiningFee(address rg1) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args address(_24)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 3 < mem[ceil32(return_data.size) + 256]
        if mem[ceil32(return_data.size) + 384] <= block.timestamp:
            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x6e13d8c500000000000000000000000000000000000000000000000000000000
            mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
            mem[(32 * _28) + ceil32(return_data.size) + 324] = 4
            require ext_code.size(address(stor7))
            call address(stor7).setHoldedCoverIDStatus(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0x424e420000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[64]):
                require 1 < mem[ceil32(return_data.size) + 256]
                call address(_24) with:
                   value mem[ceil32(return_data.size) + 320] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xe3dee239 with:
                        gas gas_remaining wei
                       args Mask(32, 224, ext_call.return_data[64])
                mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[ceil32(return_data.size) + 256]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_24), mem[ceil32(return_data.size) + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
            emit RefundEvent(ext_call.return_data[0], 0x436f766572204661696c65640000000000000000000000000000000000000000, address(_24), arg2);
        else:
            mem[(32 * _28) + ceil32(return_data.size) + 324] = 2
            require ext_code.size(address(stor7))
            call address(stor7).setHoldedCoverIDStatus(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _28) + ceil32(return_data.size) + 292] = 0x5031000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(msAddress)
            staticcall msAddress.getLatestAddress(bytes2 rg1) with:
                    gas gas_remaining wei
                   args 0x5031000000000000000000000000000000000000000000000000000000000000
            mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[64]) == 0x424e420000000000000000000000000000000000000000000000000000000000:
                require 1 < mem[ceil32(return_data.size) + 256]
                require ext_code.size(address(stor5))
                call address(stor5).sendEther() with:
                   value mem[ceil32(return_data.size) + 320] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _28) + ceil32(return_data.size) + 320] = 0x4b59432050617373656400000000000000000000000000000000000000000000
                emit RefundEvent(ext_call.return_data[0], 0x4b59432050617373656400000000000000000000000000000000000000000000, address(_24), arg2);
                require ext_code.size(address(stor7))
                staticcall address(stor7).getCoverLength() with:
                        gas gas_remaining wei
                mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 256]
                _474 = mem[ceil32(return_data.size) + 288]
                require 1 < mem[ceil32(return_data.size) + 256]
                _476 = mem[ceil32(return_data.size) + 320]
                require 2 < mem[ceil32(return_data.size) + 256]
                _479 = mem[ceil32(return_data.size) + 352]
                mem[(32 * _28) + ceil32(return_data.size) + 292] = uint16(ext_call.return_data[96])
                mem[(32 * _28) + ceil32(return_data.size) + 324] = _474
                mem[(32 * _28) + ceil32(return_data.size) + 356] = address(_24)
                require ext_code.size(address(stor7))
                call address(stor7).addCover(uint16 rg1, uint256 rg2, address rg3, bytes4 rg4, address rg5, uint256 rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args ext_call.return_data[96] << 240, _474, address(_24), Mask(32, 224, ext_call.return_data[64]), address(ext_call.return_data[32]), _476, _479
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(ext_call.return_data[96]) > 60:
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).tokensRetained() with:
                            gas gas_remaining wei
                    mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[ceil32(return_data.size) + 256]
                    _498 = mem[ceil32(return_data.size) + 352]
                    if not mem[ceil32(return_data.size) + 352]:
                        require ext_code.size(address(stor3))
                        call address(stor3).0x40c10f19 with:
                             gas gas_remaining wei
                            args address(_24), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = 0
                        require ext_code.size(address(stor2))
                        call address(stor2).0xf075be1f with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[ceil32(return_data.size) + 256]
                        _546 = mem[ceil32(return_data.size) + 288]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                        require ext_code.size(address(stor7))
                        call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args Mask(32, 224, ext_call.return_data[64]), _546
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[ceil32(return_data.size) + 256]
                        _563 = mem[ceil32(return_data.size) + 288]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                        mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                        mem[(32 * _28) + ceil32(return_data.size) + 356] = _563
                        require ext_code.size(address(stor7))
                        call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _563
                    else:
                        require ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / mem[ceil32(return_data.size) + 352] == ext_call.return_data[0]
                        require ext_code.size(address(stor3))
                        call address(stor3).0x40c10f19 with:
                             gas gas_remaining wei
                            args address(_24), ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0] * _498 / 100
                        require ext_code.size(address(stor2))
                        call address(stor2).0xf075be1f with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * _498 / 100, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[ceil32(return_data.size) + 256]
                        _554 = mem[ceil32(return_data.size) + 288]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                        require ext_code.size(address(stor7))
                        call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args Mask(32, 224, ext_call.return_data[64]), _554
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[ceil32(return_data.size) + 256]
                        _577 = mem[ceil32(return_data.size) + 288]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                        mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                        mem[(32 * _28) + ceil32(return_data.size) + 356] = _577
                        require ext_code.size(address(stor7))
                        call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _577
                else:
                    if not uint16(ext_call.return_data[96]):
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        mem[(32 * _28) + ceil32(return_data.size) + 324] = 0
                        require ext_code.size(address(stor5))
                        call address(stor5).0x9cb341e3 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).tokensRetained() with:
                                gas gas_remaining wei
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[ceil32(return_data.size) + 256]
                        _521 = mem[ceil32(return_data.size) + 352]
                        if not mem[ceil32(return_data.size) + 352]:
                            require ext_code.size(address(stor3))
                            call address(stor3).0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(_24), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = 0
                            require ext_code.size(address(stor2))
                            call address(stor2).0xf075be1f with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _601 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, ext_call.return_data[64]), _601
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _640 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                            mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                            mem[(32 * _28) + ceil32(return_data.size) + 356] = _640
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _640
                        else:
                            require ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / mem[ceil32(return_data.size) + 352] == ext_call.return_data[0]
                            require ext_code.size(address(stor3))
                            call address(stor3).0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(_24), ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0] * _521 / 100
                            require ext_code.size(address(stor2))
                            call address(stor2).0xf075be1f with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * _521 / 100, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _625 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, ext_call.return_data[64]), _625
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _662 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                            mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                            mem[(32 * _28) + ceil32(return_data.size) + 356] = _662
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _662
                    else:
                        require 24 * 3600 * uint16(ext_call.return_data[96]) / uint16(ext_call.return_data[96]) == 24 * 3600
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        mem[(32 * _28) + ceil32(return_data.size) + 324] = uint64(24 * 3600 * uint16(ext_call.return_data[96]))
                        require ext_code.size(address(stor5))
                        call address(stor5).0x9cb341e3 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], uint64(24 * 3600 * uint16(ext_call.return_data[96]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).tokensRetained() with:
                                gas gas_remaining wei
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[ceil32(return_data.size) + 256]
                        _529 = mem[ceil32(return_data.size) + 352]
                        if not mem[ceil32(return_data.size) + 352]:
                            require ext_code.size(address(stor3))
                            call address(stor3).0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(_24), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = 0
                            require ext_code.size(address(stor2))
                            call address(stor2).0xf075be1f with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _622 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, ext_call.return_data[64]), _622
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _659 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                            mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                            mem[(32 * _28) + ceil32(return_data.size) + 356] = _659
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _659
                        else:
                            require ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / mem[ceil32(return_data.size) + 352] == ext_call.return_data[0]
                            require ext_code.size(address(stor3))
                            call address(stor3).0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(_24), ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0] * _529 / 100
                            require ext_code.size(address(stor2))
                            call address(stor2).0xf075be1f with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * _529 / 100, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _647 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, ext_call.return_data[64]), _647
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _681 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                            mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                            mem[(32 * _28) + ceil32(return_data.size) + 356] = _681
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _681
            else:
                mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xe3dee239 with:
                        gas gas_remaining wei
                       args Mask(32, 224, ext_call.return_data[64])
                mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[ceil32(return_data.size) + 256]
                _456 = mem[ceil32(return_data.size) + 320]
                mem[(32 * _28) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 320]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _456
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(32 * _28) + ceil32(return_data.size) + 320] = 0x4b59432050617373656400000000000000000000000000000000000000000000
                emit RefundEvent(ext_call.return_data[0], 0x4b59432050617373656400000000000000000000000000000000000000000000, address(_24), arg2);
                require ext_code.size(address(stor7))
                staticcall address(stor7).getCoverLength() with:
                        gas gas_remaining wei
                mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 256]
                _484 = mem[ceil32(return_data.size) + 288]
                require 1 < mem[ceil32(return_data.size) + 256]
                _486 = mem[ceil32(return_data.size) + 320]
                require 2 < mem[ceil32(return_data.size) + 256]
                _490 = mem[ceil32(return_data.size) + 352]
                mem[(32 * _28) + ceil32(return_data.size) + 292] = uint16(ext_call.return_data[96])
                mem[(32 * _28) + ceil32(return_data.size) + 324] = _484
                mem[(32 * _28) + ceil32(return_data.size) + 356] = address(_24)
                require ext_code.size(address(stor7))
                call address(stor7).addCover(uint16 rg1, uint256 rg2, address rg3, bytes4 rg4, address rg5, uint256 rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args ext_call.return_data[96] << 240, _484, address(_24), Mask(32, 224, ext_call.return_data[64]), address(ext_call.return_data[32]), _486, _490
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint16(ext_call.return_data[96]) > 60:
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).tokensRetained() with:
                            gas gas_remaining wei
                    mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < mem[ceil32(return_data.size) + 256]
                    _508 = mem[ceil32(return_data.size) + 352]
                    if not mem[ceil32(return_data.size) + 352]:
                        require ext_code.size(address(stor3))
                        call address(stor3).0x40c10f19 with:
                             gas gas_remaining wei
                            args address(_24), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = 0
                        require ext_code.size(address(stor2))
                        call address(stor2).0xf075be1f with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[ceil32(return_data.size) + 256]
                        _566 = mem[ceil32(return_data.size) + 288]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                        require ext_code.size(address(stor7))
                        call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args Mask(32, 224, ext_call.return_data[64]), _566
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[ceil32(return_data.size) + 256]
                        _597 = mem[ceil32(return_data.size) + 288]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                        mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                        mem[(32 * _28) + ceil32(return_data.size) + 356] = _597
                        require ext_code.size(address(stor7))
                        call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _597
                    else:
                        require ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / mem[ceil32(return_data.size) + 352] == ext_call.return_data[0]
                        require ext_code.size(address(stor3))
                        call address(stor3).0x40c10f19 with:
                             gas gas_remaining wei
                            args address(_24), ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0] * _508 / 100
                        require ext_code.size(address(stor2))
                        call address(stor2).0xf075be1f with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * _508 / 100, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[ceil32(return_data.size) + 256]
                        _581 = mem[ceil32(return_data.size) + 288]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                        require ext_code.size(address(stor7))
                        call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args Mask(32, 224, ext_call.return_data[64]), _581
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require mem[ceil32(return_data.size) + 256]
                        _618 = mem[ceil32(return_data.size) + 288]
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                        mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                        mem[(32 * _28) + ceil32(return_data.size) + 356] = _618
                        require ext_code.size(address(stor7))
                        call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _618
                else:
                    if not uint16(ext_call.return_data[96]):
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        mem[(32 * _28) + ceil32(return_data.size) + 324] = 0
                        require ext_code.size(address(stor5))
                        call address(stor5).0x9cb341e3 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).tokensRetained() with:
                                gas gas_remaining wei
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[ceil32(return_data.size) + 256]
                        _537 = mem[ceil32(return_data.size) + 352]
                        if not mem[ceil32(return_data.size) + 352]:
                            require ext_code.size(address(stor3))
                            call address(stor3).0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(_24), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = 0
                            require ext_code.size(address(stor2))
                            call address(stor2).0xf075be1f with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _644 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, ext_call.return_data[64]), _644
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _678 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                            mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                            mem[(32 * _28) + ceil32(return_data.size) + 356] = _678
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _678
                        else:
                            require ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / mem[ceil32(return_data.size) + 352] == ext_call.return_data[0]
                            require ext_code.size(address(stor3))
                            call address(stor3).0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(_24), ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0] * _537 / 100
                            require ext_code.size(address(stor2))
                            call address(stor2).0xf075be1f with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * _537 / 100, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _669 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, ext_call.return_data[64]), _669
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _700 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                            mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                            mem[(32 * _28) + ceil32(return_data.size) + 356] = _700
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _700
                    else:
                        require 24 * 3600 * uint16(ext_call.return_data[96]) / uint16(ext_call.return_data[96]) == 24 * 3600
                        mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        mem[(32 * _28) + ceil32(return_data.size) + 324] = uint64(24 * 3600 * uint16(ext_call.return_data[96]))
                        require ext_code.size(address(stor5))
                        call address(stor5).0x9cb341e3 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], uint64(24 * 3600 * uint16(ext_call.return_data[96]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).tokensRetained() with:
                                gas gas_remaining wei
                        mem[(32 * _28) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 < mem[ceil32(return_data.size) + 256]
                        _545 = mem[ceil32(return_data.size) + 352]
                        if not mem[ceil32(return_data.size) + 352]:
                            require ext_code.size(address(stor3))
                            call address(stor3).0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(_24), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = 0
                            require ext_code.size(address(stor2))
                            call address(stor2).0xf075be1f with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _666 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, ext_call.return_data[64]), _666
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _697 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                            mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                            mem[(32 * _28) + ceil32(return_data.size) + 356] = _697
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _697
                        else:
                            require ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / mem[ceil32(return_data.size) + 352] == ext_call.return_data[0]
                            require ext_code.size(address(stor3))
                            call address(stor3).0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(_24), ext_call.return_data[0] * mem[ceil32(return_data.size) + 352] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xf075be1f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = ext_call.return_data[0] * _545 / 100
                            require ext_code.size(address(stor2))
                            call address(stor2).0xf075be1f with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * _545 / 100, ext_call.return_data[96] << 240, ext_call.return_data[0], address(_24)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _686 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0xa2c6bc2500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = Mask(32, 224, ext_call.return_data[64])
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssured(bytes4 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, ext_call.return_data[64]), _686
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require mem[ceil32(return_data.size) + 256]
                            _712 = mem[ceil32(return_data.size) + 288]
                            mem[(32 * _28) + ceil32(return_data.size) + 288] = 0x3994b3d500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _28) + ceil32(return_data.size) + 292] = address(ext_call.return_data[32])
                            mem[(32 * _28) + ceil32(return_data.size) + 324] = Mask(32, 224, ext_call.return_data[64])
                            mem[(32 * _28) + ceil32(return_data.size) + 356] = _712
                            require ext_code.size(address(stor7))
                            call address(stor7).addInTotalSumAssuredSC(address rg1, bytes4 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[32]), Mask(32, 224, ext_call.return_data[64]), _712
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 2 < mem[ceil32(return_data.size) + 256]
            require ext_code.size(address(stor2))
            call address(stor2).0x899ec98f with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), mem[ceil32(return_data.size) + 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    uint8(stor9.field_160) = 0
}



}
