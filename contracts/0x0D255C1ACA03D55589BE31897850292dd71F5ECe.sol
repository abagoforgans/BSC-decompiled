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
address stor8;
uint256 stor8;
address c1Address;
uint256 stor9;
uint8 stor10; offset 160
address stor10;
uint256 stor10;
uint256 reqc;

function reqc() {
    return reqc
}

function c1() {
    return address(c1Address)
}

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
  stop
}

function changeMasterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function __callback(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(msAddress)
    call msAddress.delegateCallBack(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferEther(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor10.field_160):
        revert with 0, 'Reentrant call.'
    uint8(stor10.field_160) = 1
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not authorized to Govern'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    uint8(stor10.field_160) = 0
    return bool(ext_call.success)
}

function mcrOraclise(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    reqc++
    require ext_code.size(address(stor7))
    call address(stor7).saveApiDetails(bytes32 rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc), 0x4d43520000000000000000000000000000000000000000000000000000000000, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).addInAllApiCall(bytes32 rg1) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function closeEmergencyPause(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    reqc++
    require ext_code.size(address(stor7))
    call address(stor7).saveApiDetails(bytes32 rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc), 0x4550000000000000000000000000000000000000000000000000000000000000, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).addInAllApiCall(bytes32 rg1) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function saveIADetailsOracalise(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    reqc++
    require ext_code.size(address(stor7))
    call address(stor7).saveApiDetails(bytes32 rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc), 0x4941524200000000000000000000000000000000000000000000000000000000, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).addInAllApiCall(bytes32 rg1) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mcrOracliseFail(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    reqc++
    require ext_code.size(address(stor7))
    call address(stor7).saveApiDetails(bytes32 rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc), 0x4d43524600000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).addInAllApiCall(bytes32 rg1) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function closeCoverOraclise(uint256 arg1, uint64 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    reqc++
    require ext_code.size(address(stor7))
    call address(stor7).saveApiDetails(bytes32 rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc), 0x434f560000000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).addInAllApiCall(bytes32 rg1) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function closeClaimsOraclise(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    reqc++
    require ext_code.size(address(stor7))
    call address(stor7).saveApiDetails(bytes32 rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc), 0x434c410000000000000000000000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).addInAllApiCall(bytes32 rg1) with:
         gas gas_remaining wei
        args sha3(Mask(160, 96, this.address) >> 96, Mask(160, 96, msg.sender) >> 96, reqc)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function triggerExternalLiquidityTrade() {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).liquidityTradeCallbackTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).lastLiquidityTradeTrigger() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp > 2 * ext_call.return_data[0]:
        require ext_code.size(address(stor7))
        call address(stor7).setLastLiquidityTradeTrigger() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function makeCoverBegin(address arg1, bytes4 arg2, uint256[] arg3, uint16 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 132] = msg.sender
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not member'
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require 1 < arg3.length
    require msg.value == mem[160]
    mem[(32 * arg3.length) + 420 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(address(stor2))
    call address(stor2).verifyCoverDetails(address rg1, address rg2, bytes4 rg3, uint256[] rg4, uint16 rg5, uint8 rg6, bytes32 rg7, bytes32 rg8) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Mask(32, 224, arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 420 len (32 * arg3.length) - floor32(arg3.length)]), arg4 << 240, arg5 << 248, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function makeCoverUsingCA(address arg1, bytes4 arg2, uint256[] arg3, uint16 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not member'
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    mem[(32 * arg3.length) + 132] = Mask(32, 224, arg2)
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCurrencyAssetAddress(bytes4 rg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg2)
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg3.length
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), mem[160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
    mem[(32 * arg3.length) + 420 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(address(stor2))
    call address(stor2).verifyCoverDetails(address rg1, address rg2, bytes4 rg3, uint256[] rg4, uint16 rg5, uint8 rg6, bytes32 rg7, bytes32 rg8) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Mask(32, 224, arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 420 len (32 * arg3.length) - floor32(arg3.length)]), arg4 << 240, arg5 << 248, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferCurrencyAsset(bytes4 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if uint8(stor10.field_160):
        revert with 0, 'Reentrant call.'
    uint8(stor10.field_160) = 1
    if Mask(32, 224, arg1) == 0x424e420000000000000000000000000000000000000000000000000000000000:
        require ext_code.size(address(stor6))
        if eth.balance(this.address) >= arg2:
            call address(stor6).sendEther() with:
               value arg2 wei
                 gas gas_remaining wei
        else:
            call address(stor6).sendEther() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(stor7))
        staticcall address(stor7).getCurrencyAssetAddress(bytes4 rg1) with:
                gas gas_remaining wei
               args Mask(32, 224, arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[0] >= arg2:
            call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor6), arg2
        else:
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor6), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    uint8(stor10.field_160) = 0
    return 1
}

function getInvestmentAssetBalance() payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0x7d03238f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var39003 len 4] with:
            gas gas_remaining wei
           args mem[var39003 + 4 len var39004 - 4]
    mem[var39005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var43003 >= mem[var43002]:
        require eth.balance(address(stor6)) + var43006 >= var43006
        return (eth.balance(address(stor6)) + var43006)
    mem[96] = 0xdc68e16b00000000000000000000000000000000000000000000000000000000
    mem[100] = var45001
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var47003 len 4] with:
            gas gas_remaining wei
           args mem[var47003 + 4 len var47004 - 4]
    mem[var47005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _294 = mem[var51002]
    mem[96] = 0x7e2d14d900000000000000000000000000000000000000000000000000000000
    mem[100] = Mask(32, 224, _294)
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var53003 len 4] with:
            gas gas_remaining wei
           args mem[var53003 + 4 len var53004 - 4]
    mem[var53005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _450 = mem[var57002]
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = address(stor6)
    require ext_code.size(address(_450))
    staticcall var59002.mem[var59003 len 4] with:
            gas gas_remaining wei
           args mem[var59003 + 4 len var59004 - 4]
    mem[var59005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xfc664c3600000000000000000000000000000000000000000000000000000000
    mem[100] = Mask(32, 224, var63003)
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var65003 len 4] with:
            gas gas_remaining wei
           args mem[var65003 + 4 len var65004 - 4]
    mem[var65005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var69002] <= 0:
        require ext_code.size(address(stor7))
        # nil
    else:
        mem[96] = 0xfc664c3600000000000000000000000000000000000000000000000000000000
        mem[100] = Mask(32, 224, var71001)
        require ext_code.size(address(stor7))
        staticcall address(stor7).mem[var73003 len 4] with:
                gas gas_remaining wei
               args mem[var73003 + 4 len var73004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}

function upgradeCapitalPool(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if uint8(stor10.field_160):
        revert with 0, 'Reentrant call.'
    uint8(stor10.field_160) = 1
    mem[100] = msg.sender
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[96] = 0x255f504900000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var36003 len 4] with:
            gas gas_remaining wei
           args mem[var36003 + 4 len var36004 - 4]
    mem[var36005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint64(var40003) >= mem[var40002]:
        if eth.balance(this.address):
            require ext_code.size(arg1)
            call arg1.sendEther() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        uint8(stor10.field_160) = 0
    mem[96] = 0x3c40b1f000000000000000000000000000000000000000000000000000000000
    mem[100] = uint64(var42001)
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var44003 len 4] with:
            gas gas_remaining wei
           args mem[var44003 + 4 len var44004 - 4]
    mem[var44005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xe3dee23900000000000000000000000000000000000000000000000000000000
    mem[100] = Mask(32, 224, var50002)
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var52003 len 4] with:
            gas gas_remaining wei
           args mem[var52003 + 4 len var52004 - 4]
    mem[var52005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _417 = mem[var56002]
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(address(_417))
    staticcall var58002.mem[var58003 len 4] with:
            gas gas_remaining wei
           args mem[var58003 + 4 len var58004 - 4]
    mem[var58005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var62002] <= 0:
        mem[96] = 0x255f504900000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(stor7))
        staticcall address(stor7).mem[var70003 len 4] with:
                gas gas_remaining wei
               args mem[var70003 + 4 len var70004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
    else:
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(address(var64001))
        staticcall var66002.mem[var66003 len 4] with:
                gas gas_remaining wei
               args mem[var66003 + 4 len var66004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(var70005)
        # nil
}

function changeDependentContractAddress() {
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4d43000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(msAddress)
    staticcall msAddress.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5446000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5443000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5044000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5154000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5032000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x434c000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5444000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10.field_0))
}

function sendClaimPayout(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, bytes4 arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if uint8(stor10.field_160):
        revert with 0, 'Reentrant call.'
    uint8(stor10.field_160) = 1
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCurrencyAssetAddress(bytes4 rg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, arg5) != 0x424e420000000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg5) != 0x4441490000000000000000000000000000000000000000000000000000000000:
            require ext_code.size(address(c1Address))
            call address(c1Address).0xf511bdfe with:
                 gas gas_remaining wei
                args arg2, 12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(stor7))
            staticcall address(stor7).liquidityTradeCallbackTime() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor7))
            staticcall address(stor7).lastLiquidityTradeTrigger() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            if block.timestamp > 2 * ext_call.return_data[0]:
                require ext_code.size(address(stor7))
                call address(stor7).setLastLiquidityTradeTrigger() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(stor5))
            call address(stor5).burnStakerLockedToken(uint256 rg1, bytes4 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args arg1, Mask(32, 224, arg5), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint8(stor10.field_160) = 0
            return 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            require ext_code.size(address(c1Address))
            call address(c1Address).0xf511bdfe with:
                 gas gas_remaining wei
                args arg2, 12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(stor7))
            staticcall address(stor7).liquidityTradeCallbackTime() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor7))
            staticcall address(stor7).lastLiquidityTradeTrigger() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            if block.timestamp > 2 * ext_call.return_data[0]:
                require ext_code.size(address(stor7))
                call address(stor7).setLastLiquidityTradeTrigger() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(stor5))
            call address(stor5).burnStakerLockedToken(uint256 rg1, bytes4 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args arg1, Mask(32, 224, arg5), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint8(stor10.field_160) = 0
            return 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg4), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if eth.balance(this.address) >= arg3:
            call arg4 with:
               value arg3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if Mask(32, 224, arg5) != 0x4441490000000000000000000000000000000000000000000000000000000000:
                require ext_code.size(address(c1Address))
                call address(c1Address).0xf511bdfe with:
                     gas gas_remaining wei
                    args arg2, 12
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor7))
                staticcall address(stor7).liquidityTradeCallbackTime() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor7))
                staticcall address(stor7).lastLiquidityTradeTrigger() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                if block.timestamp > 2 * ext_call.return_data[0]:
                    require ext_code.size(address(stor7))
                    call address(stor7).setLastLiquidityTradeTrigger() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor5))
                call address(stor5).burnStakerLockedToken(uint256 rg1, bytes4 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, Mask(32, 224, arg5), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor10.field_160) = 0
                return 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                require ext_code.size(address(c1Address))
                call address(c1Address).0xf511bdfe with:
                     gas gas_remaining wei
                    args arg2, 12
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor7))
                staticcall address(stor7).liquidityTradeCallbackTime() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor7))
                staticcall address(stor7).lastLiquidityTradeTrigger() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                if block.timestamp > 2 * ext_call.return_data[0]:
                    require ext_code.size(address(stor7))
                    call address(stor7).setLastLiquidityTradeTrigger() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor5))
                call address(stor5).burnStakerLockedToken(uint256 rg1, bytes4 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args arg1, Mask(32, 224, arg5), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor10.field_160) = 0
                return 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg4), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(address(stor2))
    call address(stor2).removeSAFromCSA(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, arg3 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCurrencyAssetVarMin(bytes4 rg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(address(stor7))
    call address(stor7).changeCurrencyAssetVarMin(bytes4 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args Mask(32, 224, arg5), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Payout(arg1, arg3, arg4);
    require ext_code.size(address(stor7))
    staticcall address(stor7).liquidityTradeCallbackTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).lastLiquidityTradeTrigger() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp > 2 * ext_call.return_data[0]:
        require ext_code.size(address(stor7))
        call address(stor7).setLastLiquidityTradeTrigger() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor5))
    call address(stor5).burnStakerLockedToken(uint256 rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args arg1, Mask(32, 224, arg5), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor10.field_160) = 0
    return 1
}

function getToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 + eth.balance(this.address) >= eth.balance(this.address)
    if not arg1:
        require ext_code.size(address(stor3))
        staticcall address(stor3).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        staticcall address(stor7).getLastMCR() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require arg1 <= arg1 + eth.balance(this.address)
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateVtpAndMCRtp(uint256 rg1) with:
                gas gas_remaining wei
               args eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateTokenPrice(bytes4 rg1) with:
                gas gas_remaining wei
               args 0x424e420000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Token price can not be zero'
    else:
        require 10^18 * arg1 / arg1 == 10^18
        require ext_code.size(address(stor3))
        staticcall address(stor3).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        staticcall address(stor7).getLastMCR() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require arg1 <= arg1 + eth.balance(this.address)
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateVtpAndMCRtp(uint256 rg1) with:
                gas gas_remaining wei
               args eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateTokenPrice(bytes4 rg1) with:
                gas gas_remaining wei
               args 0x424e420000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Token price can not be zero'
        s = 0
        s = 0
        s = 0
        while 10^18 * arg1:
            if not ext_call.return_data[0]:
                require ext_call.return_data[64] > 0
                require ext_call.return_data[64]
                mem[100] = 0x424e420000000000000000000000000000000000000000000000000000000000
                mem[132] = 0 / ext_call.return_data[64]
                require ext_code.size(address(stor8))
                staticcall address(stor8).calculateStepTokenPrice(bytes4 rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x424e420000000000000000000000000000000000000000000000000000000000, 0 / ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 10^18 * arg1 / ext_call.return_data[0] <= 0:
                        require 10^18 * arg1 / ext_call.return_data[0] >= 0
                        return (10^18 * arg1 / ext_call.return_data[0])
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if 10^18 * arg1 / ext_call.return_data[0] <= 10^18 * ext_call.return_data[0]:
                        require 10^18 * arg1 / ext_call.return_data[0] >= 0
                        return (10^18 * arg1 / ext_call.return_data[0])
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] >= 0
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 1000000000000000001 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= 10^18 * arg1
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if not 10^18 * ext_call.return_data[0]:
                        require 0 <= 10^18 * arg1
                    else:
                        require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ext_call.return_data[0]
                        require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] <= 10^18 * arg1
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if not 10^18 * ext_call.return_data[0]:
                        require ext_call.return_data[0] >= ext_call.return_data[0]
                    else:
                        require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ext_call.return_data[0]
                        require (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                s = 0 / ext_call.return_data[64]
                s = 10^18 * arg1 / ext_call.return_data[0]
                s = ext_call.return_data[0]
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[64] > 0
            require ext_call.return_data[64]
            mem[100] = 0x424e420000000000000000000000000000000000000000000000000000000000
            mem[132] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
            require ext_code.size(address(stor8))
            staticcall address(stor8).calculateStepTokenPrice(bytes4 rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x424e420000000000000000000000000000000000000000000000000000000000, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 10^18 * arg1 / ext_call.return_data[0] <= 0:
                    require 10^18 * arg1 / ext_call.return_data[0] >= 0
                    return (10^18 * arg1 / ext_call.return_data[0])
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if 10^18 * arg1 / ext_call.return_data[0] <= 10^18 * ext_call.return_data[0]:
                    require 10^18 * arg1 / ext_call.return_data[0] >= 0
                    return (10^18 * arg1 / ext_call.return_data[0])
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] >= 0
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] >= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 1000000000000000001 * ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= 10^18 * arg1
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if not 10^18 * ext_call.return_data[0]:
                    require 0 <= 10^18 * arg1
                else:
                    require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ext_call.return_data[0]
                    require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] <= 10^18 * arg1
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] >= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if not 10^18 * ext_call.return_data[0]:
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ext_call.return_data[0]
                    require (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
            s = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
            s = 10^18 * arg1 / ext_call.return_data[0]
            s = ext_call.return_data[0]
            continue 
    return 0
}

function getWei(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getLastMCR() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(address(stor8))
    staticcall address(stor8).calVtpAndMCRtp() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    s = 0
    while arg1:
        if not ext_call.return_data[0]:
            require ext_call.return_data[64] > 0
            require ext_call.return_data[64]
            mem[100] = 0x424e420000000000000000000000000000000000000000000000000000000000
            mem[132] = 0 / ext_call.return_data[64]
            require ext_code.size(address(stor8))
            staticcall address(stor8).calculateStepTokenPrice(bytes4 rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x424e420000000000000000000000000000000000000000000000000000000000, 0 / ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg1 <= 0:
                        return 0
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if arg1 <= 10^18 * ext_call.return_data[0]:
                        return 0
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= arg1
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] <= arg1
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 0 <= ext_call.return_data[0]
            else:
                require 975 * ext_call.return_data[0] / ext_call.return_data[0] == 975
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg1 <= 0:
                        if not 975 * ext_call.return_data[0] / 1000:
                            return 0
                        require arg1 * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == arg1
                        require arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
                        return (arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18)
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if arg1 <= 10^18 * ext_call.return_data[0]:
                        if not 975 * ext_call.return_data[0] / 1000:
                            return 0
                        require arg1 * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == arg1
                        require arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
                        return (arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18)
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= arg1
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] <= arg1
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 975 * ext_call.return_data[0] / 1000:
                        require not 0 / 975 * ext_call.return_data[0] / 1000
                    require 0 <= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if not 975 * ext_call.return_data[0] / 1000:
                        require 0 <= ext_call.return_data[0]
                    else:
                        require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == 10^18 * ext_call.return_data[0]
                        require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 10^18 <= ext_call.return_data[0]
                        require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
            s = 0 / ext_call.return_data[64]
            continue 
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[64] > 0
        require ext_call.return_data[64]
        mem[100] = 0x424e420000000000000000000000000000000000000000000000000000000000
        mem[132] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateStepTokenPrice(bytes4 rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x424e420000000000000000000000000000000000000000000000000000000000, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1 <= 0:
                    return 0
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if arg1 <= 10^18 * ext_call.return_data[0]:
                    return 0
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= arg1
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] <= arg1
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
            require 0 <= ext_call.return_data[0]
        else:
            require 975 * ext_call.return_data[0] / ext_call.return_data[0] == 975
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1 <= 0:
                    if not 975 * ext_call.return_data[0] / 1000:
                        return 0
                    require arg1 * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == arg1
                    require arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
                    return (arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18)
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if arg1 <= 10^18 * ext_call.return_data[0]:
                    if not 975 * ext_call.return_data[0] / 1000:
                        return 0
                    require arg1 * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == arg1
                    require arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
                    return (arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18)
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= arg1
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] <= arg1
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 975 * ext_call.return_data[0] / 1000:
                    require not 0 / 975 * ext_call.return_data[0] / 1000
                require 0 <= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if not 975 * ext_call.return_data[0] / 1000:
                    require 0 <= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == 10^18 * ext_call.return_data[0]
                    require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 10^18 <= ext_call.return_data[0]
                    require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
        s = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
        continue 
    return 0
}

function buyToken() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not member'
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require msg.value > 0
    if not msg.value:
        require ext_code.size(address(stor3))
        staticcall address(stor3).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        staticcall address(stor7).getLastMCR() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require msg.value <= eth.balance(this.address)
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateVtpAndMCRtp(uint256 rg1) with:
                gas gas_remaining wei
               args (eth.balance(this.address) - msg.value)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateTokenPrice(bytes4 rg1) with:
                gas gas_remaining wei
               args 0x424e420000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Token price can not be zero'
    else:
        require 10^18 * msg.value / msg.value == 10^18
        require ext_code.size(address(stor3))
        staticcall address(stor3).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        staticcall address(stor7).getLastMCR() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require msg.value <= eth.balance(this.address)
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateVtpAndMCRtp(uint256 rg1) with:
                gas gas_remaining wei
               args (eth.balance(this.address) - msg.value)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateTokenPrice(bytes4 rg1) with:
                gas gas_remaining wei
               args 0x424e420000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Token price can not be zero'
        s = 0
        s = 0
        s = 0
        while 10^18 * msg.value:
            if not ext_call.return_data[0]:
                require ext_call.return_data[64] > 0
                require ext_call.return_data[64]
                mem[100] = 0x424e420000000000000000000000000000000000000000000000000000000000
                mem[132] = 0 / ext_call.return_data[64]
                require ext_code.size(address(stor8))
                staticcall address(stor8).calculateStepTokenPrice(bytes4 rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args 0x424e420000000000000000000000000000000000000000000000000000000000, 0 / ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 10^18 * msg.value / ext_call.return_data[0] <= 0:
                        require 10^18 * msg.value / ext_call.return_data[0] >= 0
                        require ext_code.size(address(stor4))
                        call address(stor4).mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * msg.value / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        return 1
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if 10^18 * msg.value / ext_call.return_data[0] <= 10^18 * ext_call.return_data[0]:
                        require 10^18 * msg.value / ext_call.return_data[0] >= 0
                        require ext_code.size(address(stor4))
                        call address(stor4).mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * msg.value / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        return 1
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] >= 0
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 1000000000000000001 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= 10^18 * msg.value
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if not 10^18 * ext_call.return_data[0]:
                        require 0 <= 10^18 * msg.value
                    else:
                        require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ext_call.return_data[0]
                        require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] <= 10^18 * msg.value
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if not 10^18 * ext_call.return_data[0]:
                        require ext_call.return_data[0] >= ext_call.return_data[0]
                    else:
                        require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ext_call.return_data[0]
                        require (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
                s = 0 / ext_call.return_data[64]
                s = 10^18 * msg.value / ext_call.return_data[0]
                s = ext_call.return_data[0]
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[64] > 0
            require ext_call.return_data[64]
            mem[100] = 0x424e420000000000000000000000000000000000000000000000000000000000
            mem[132] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
            require ext_code.size(address(stor8))
            staticcall address(stor8).calculateStepTokenPrice(bytes4 rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x424e420000000000000000000000000000000000000000000000000000000000, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 10^18 * msg.value / ext_call.return_data[0] <= 0:
                    require 10^18 * msg.value / ext_call.return_data[0] >= 0
                    require ext_code.size(address(stor4))
                    call address(stor4).mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * msg.value / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return 1
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if 10^18 * msg.value / ext_call.return_data[0] <= 10^18 * ext_call.return_data[0]:
                    require 10^18 * msg.value / ext_call.return_data[0] >= 0
                    require ext_code.size(address(stor4))
                    call address(stor4).mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * msg.value / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return 1
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] >= 0
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] >= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 1000000000000000001 * ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= 10^18 * msg.value
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if not 10^18 * ext_call.return_data[0]:
                    require 0 <= 10^18 * msg.value
                else:
                    require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ext_call.return_data[0]
                    require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] <= 10^18 * msg.value
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] >= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if not 10^18 * ext_call.return_data[0]:
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ext_call.return_data[0]
                    require (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] >= ext_call.return_data[0]
            s = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
            s = 10^18 * msg.value / ext_call.return_data[0]
            s = ext_call.return_data[0]
            continue 
    require ext_code.size(address(stor4))
    call address(stor4).mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sellSOTETokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isMember(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not member'
    if uint8(stor10.field_160):
        revert with 0, 'Reentrant call.'
    uint8(stor10.field_160) = 1
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(address(stor3))
    staticcall address(stor3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough balance'
    require ext_code.size(address(stor5))
    staticcall address(stor5).isLockedForMemberVote(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Member voted'
    require ext_code.size(address(stor8))
    staticcall address(stor8).getMaxSellTokens() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'exceeds maximum token sell limit'
    require ext_code.size(address(stor3))
    staticcall address(stor3).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getLastMCR() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(address(stor8))
    staticcall address(stor8).calVtpAndMCRtp() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    s = 0
    while arg1:
        if not ext_call.return_data[0]:
            require ext_call.return_data[64] > 0
            require ext_call.return_data[64]
            mem[100] = 0x424e420000000000000000000000000000000000000000000000000000000000
            mem[132] = 0 / ext_call.return_data[64]
            require ext_code.size(address(stor8))
            staticcall address(stor8).calculateStepTokenPrice(bytes4 rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x424e420000000000000000000000000000000000000000000000000000000000, 0 / ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg1 <= 0:
                        require ext_code.size(address(stor4))
                        call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call msg.sender with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor10.field_160) = 0
                        return 1
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if arg1 <= 10^18 * ext_call.return_data[0]:
                        require ext_code.size(address(stor4))
                        call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call msg.sender with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor10.field_160) = 0
                        return 1
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= arg1
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] <= arg1
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 0 <= ext_call.return_data[0]
            else:
                require 975 * ext_call.return_data[0] / ext_call.return_data[0] == 975
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg1 <= 0:
                        if not 975 * ext_call.return_data[0] / 1000:
                            require ext_code.size(address(stor4))
                            call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            call msg.sender with:
                                 gas 2300 wei
                        else:
                            require arg1 * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == arg1
                            require arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
                            require ext_code.size(address(stor4))
                            call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            call msg.sender with:
                               value arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor10.field_160) = 0
                        return 1
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if arg1 <= 10^18 * ext_call.return_data[0]:
                        if not 975 * ext_call.return_data[0] / 1000:
                            require ext_code.size(address(stor4))
                            call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            call msg.sender with:
                                 gas 2300 wei
                        else:
                            require arg1 * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == arg1
                            require arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
                            require ext_code.size(address(stor4))
                            call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            call msg.sender with:
                               value arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor10.field_160) = 0
                        return 1
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= arg1
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] <= arg1
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require 0 <= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    require 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]
                require ext_code.size(address(stor10.field_0))
                staticcall address(stor10.field_0).priceStep() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 975 * ext_call.return_data[0] / 1000:
                        require not 0 / 975 * ext_call.return_data[0] / 1000
                    require 0 <= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                    if not 975 * ext_call.return_data[0] / 1000:
                        require 0 <= ext_call.return_data[0]
                    else:
                        require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == 10^18 * ext_call.return_data[0]
                        require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 10^18 <= ext_call.return_data[0]
                        require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
            s = 0 / ext_call.return_data[64]
            continue 
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[64] > 0
        require ext_call.return_data[64]
        mem[100] = 0x424e420000000000000000000000000000000000000000000000000000000000
        mem[132] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
        require ext_code.size(address(stor8))
        staticcall address(stor8).calculateStepTokenPrice(bytes4 rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x424e420000000000000000000000000000000000000000000000000000000000, ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1 <= 0:
                    require ext_code.size(address(stor4))
                    call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor10.field_160) = 0
                    return 1
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if arg1 <= 10^18 * ext_call.return_data[0]:
                    require ext_code.size(address(stor4))
                    call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call msg.sender with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor10.field_160) = 0
                    return 1
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= arg1
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] <= arg1
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
            require 0 <= ext_call.return_data[0]
        else:
            require 975 * ext_call.return_data[0] / ext_call.return_data[0] == 975
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1 <= 0:
                    if not 975 * ext_call.return_data[0] / 1000:
                        require ext_code.size(address(stor4))
                        call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call msg.sender with:
                             gas 2300 wei
                    else:
                        require arg1 * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == arg1
                        require arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
                        require ext_code.size(address(stor4))
                        call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call msg.sender with:
                           value arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor10.field_160) = 0
                    return 1
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if arg1 <= 10^18 * ext_call.return_data[0]:
                    if not 975 * ext_call.return_data[0] / 1000:
                        require ext_code.size(address(stor4))
                        call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call msg.sender with:
                             gas 2300 wei
                    else:
                        require arg1 * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == arg1
                        require arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
                        require ext_code.size(address(stor4))
                        call address(stor4).burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call msg.sender with:
                           value arg1 * 975 * ext_call.return_data[0] / 1000 / 10^18 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor10.field_160) = 0
                    return 1
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= arg1
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] <= arg1
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require 0 <= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(address(stor10.field_0))
            staticcall address(stor10.field_0).priceStep() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 975 * ext_call.return_data[0] / 1000:
                    require not 0 / 975 * ext_call.return_data[0] / 1000
                require 0 <= ext_call.return_data[0]
            else:
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                if not 975 * ext_call.return_data[0] / 1000:
                    require 0 <= ext_call.return_data[0]
                else:
                    require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 975 * ext_call.return_data[0] / 1000 == 10^18 * ext_call.return_data[0]
                    require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 10^18 <= ext_call.return_data[0]
                    require 10^18 * ext_call.return_data[0] * 975 * ext_call.return_data[0] / 1000 / 10^18 >= 0
        s = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[64]
        continue 
    require ext_code.size(address(stor4))
    call address(stor4).burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor10.field_160) = 0
    return 1
}



}
