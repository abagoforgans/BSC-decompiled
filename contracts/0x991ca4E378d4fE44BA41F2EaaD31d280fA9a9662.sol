contract main {




// =====================  Runtime code  =====================


address msAddress;
address soteMasterAddress;
address stor2;
uint256 stor2;
uint256 stor3;
address tkAddress;
uint256 stor4;
address stor5;
uint256 stor5;
address stor6;
uint256 stor6;
address stor7;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
uint256 stor11;

function tk() payable {
    return address(tkAddress)
}

function ms() payable {
    return msAddress
}

function soteMasterAddress() payable {
    return soteMasterAddress
}

function _fallback() payable {
    revert
}

function burnStakerLockedToken(uint256 arg1, bytes4 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
}

function changeMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function getTokenPrice(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor2))
    staticcall address(stor2).0x3cb23b2d with:
            gas gas_remaining wei
           args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isLockedForMemberVote(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(tkAddress))
    staticcall address(tkAddress).isLockedForMV(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (block.timestamp < ext_call.return_data[0])
}

function getUserLockedCNTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor5))
    staticcall address(stor5).0x179e91f1 with:
            gas gas_remaining wei
           args address(arg1), sha3(0, arg1, arg2), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deprecated_getStakerLockedTokensOnSmartContract(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(stor5))
    staticcall address(stor5).0x5ca48d8c with:
            gas gas_remaining wei
           args address(arg1), sha3(0, arg1, arg2, arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getLockedCNAgainstCover(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverMemberAddress(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor5))
    staticcall address(stor5).0x179e91f1 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), sha3(0, address(ext_call.return_data[0]), arg1), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function burnCAToken(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor5))
    call address(stor5).0x7aef5b73 with:
         gas gas_remaining wei
        args address(arg3), 0x434c410000000000000000000000000000000000000000000000000000000000, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BurnCATokens(arg1, address(arg3), arg2);
}

function extendCNEPOff(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 + block.timestamp >= block.timestamp
    require ext_code.size(address(stor7))
    staticcall address(stor7).getValidityOfCover(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 + block.timestamp >= ext_call.return_data[0]:
        require ext_code.size(address(stor5))
        call address(stor5).0x2c69d416 with:
             gas gas_remaining wei
            args address(arg1), sha3(0, arg1, arg2), arg3 + block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function pushStakerRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xe2264850 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require ext_code.size(address(stor11))
        call address(stor11).accumulateReward(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        require ext_code.size(address(stor11))
        call address(stor11).accumulateReward(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] * arg2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockCN(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xce0a6d5f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + (24 * 3600 * arg2) >= 24 * 3600 * arg2
    require ext_code.size(address(stor6))
    call address(stor6).0x4e718659 with:
         gas gas_remaining wei
        args arg3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor5))
    call address(stor5).0xfa64f8c1 with:
         gas gas_remaining wei
        args address(arg4), sha3(0, arg4, arg3), arg1, ext_call.return_data[0] + (24 * 3600 * arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function depositCN(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverMemberAddress(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor5))
    staticcall address(stor5).0x179e91f1 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), sha3(0, address(ext_call.return_data[0]), arg1), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No cover note available'
    require ext_code.size(address(stor6))
    call address(stor6).0x8831d590 with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burnDepositCN(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverMemberAddress(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x1dc130a2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        require ext_code.size(address(stor5))
        call address(stor5).0x7aef5b73 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), sha3(0, address(ext_call.return_data[0]), arg1), 0
    else:
        require 50 * ext_call.return_data[0] / ext_call.return_data[0] == 50
        require ext_code.size(address(stor5))
        call address(stor5).0x7aef5b73 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), sha3(0, address(ext_call.return_data[0]), arg1), 50 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burnStakedTokens(uint256 arg1, bytes4 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getscAddressOfCover(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor2))
    staticcall address(stor2).0x3cb23b2d with:
            gas gas_remaining wei
           args Mask(32, 224, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require ext_code.size(address(stor11))
        call address(stor11).pushBurn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), 0 / ext_call.return_data[0]
    else:
        require 10^18 * arg3 / arg3 == 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require ext_code.size(address(stor11))
        call address(stor11).pushBurn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[32]), 10^18 * arg3 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlockCN(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x1dc130a2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe436f766572206e6f7465206973206465706f736974656420616e642063616e206e6f742062652072656c65617365,
                    mem[211 len 17]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getCoverMemberAddress(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor5))
    staticcall address(stor5).0x179e91f1 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), sha3(0, address(ext_call.return_data[0]), arg1), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(stor7))
        staticcall address(stor7).getCoverMemberAddress(uint256 rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor5))
        call address(stor5).0x80c7561a with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), sha3(0, address(ext_call.return_data[0]), arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function deprecated_getStakerAllUnlockableStakedTokens(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0xe325ef7400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var105003 len 4] with:
            gas gas_remaining wei
           args mem[var105003 + 4 len var105004 - 4]
    mem[var105005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var109003 >= mem[var109002]:
        return var109006
    mem[96] = 0x96cf145500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var111001
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var113003 len 4] with:
            gas gas_remaining wei
           args mem[var113003 + 4 len var113004 - 4]
    mem[var113005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x79ade32f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var117003
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var119003 len 4] with:
            gas gas_remaining wei
           args mem[var119003 + 4 len var119004 - 4]
    mem[var119005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x24da7b6900000000000000000000000000000000000000000000000000000000
    mem[100] = address(var125002)
    mem[132] = var125001
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var127003 len 4] with:
            gas gas_remaining wei
           args mem[var127003 + 4 len var127004 - 4]
    mem[var127005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4335 = mem[var131002]
    mem[96] = 0xc1ed5a7400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = _4335
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var133003 len 4] with:
            gas gas_remaining wei
           args mem[var133003 + 4 len var133004 - 4]
    mem[var133005 len 224] = ext_call.return_data[0 len 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    mem[96] = 0xff1b450400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var137004
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var139003 len 4] with:
            gas gas_remaining wei
           args mem[var139003 + 4 len var139004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function deprecated_unlockStakerUnlockableTokens(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    mem[96] = 0xe325ef7400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var112003 len 4] with:
            gas gas_remaining wei
           args mem[var112003 + 4 len var112004 - 4]
    mem[var112005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var116003 >= mem[var116002]:
    mem[96] = 0x96cf145500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var118001
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var120003 len 4] with:
            gas gas_remaining wei
           args mem[var120003 + 4 len var120004 - 4]
    mem[var120005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x79ade32f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var124003
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var126003 len 4] with:
            gas gas_remaining wei
           args mem[var126003 + 4 len var126004 - 4]
    mem[var126005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x24da7b6900000000000000000000000000000000000000000000000000000000
    mem[100] = address(var132002)
    mem[132] = var132001
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var134003 len 4] with:
            gas gas_remaining wei
           args mem[var134003 + 4 len var134004 - 4]
    mem[var134005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6589 = mem[var138002]
    mem[96] = 0xc1ed5a7400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = _6589
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var140003 len 4] with:
            gas gas_remaining wei
           args mem[var140003 + 4 len var140004 - 4]
    mem[var140005 len 224] = ext_call.return_data[0 len 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    mem[96] = 0xff1b450400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var144004
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var146003 len 4] with:
            gas gas_remaining wei
           args mem[var146003 + 4 len var146004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function getUserAllLockedCNTokens(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0x544ef03d00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var28003 len 4] with:
            gas gas_remaining wei
           args mem[var28003 + 4 len var28004 - 4]
    mem[var28005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var32003 >= mem[var32002]:
        return var32004
    mem[96] = 0xfe7cfbfc00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(stor7))
    staticcall address(stor7).mem[var36003 len 4] with:
            gas gas_remaining wei
           args mem[var36003 + 4 len var36004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[var40002] <= 4294967296
    require var42004 + var42002 + 32 <= var42005
    require mem[var44003] <= 4294967296 and var44001 + (32 * mem[var44003]) <= var44006
    mem[var46003] = var46001
    if var28001 < 32 * mem[var46004]:
        mem[var28001 + var46003 + 32] = mem[var28001 + var46004 + 32]
        var28001 = var28001 + 32
        continue 
    mem[64] = (32 * mem[var46004]) + var46003 + 32
    require var46012 < mem[var46008]
    _292 = mem[(32 * var46012) + var46008 + 32]
    _293 = mem[64]
    mem[mem[64] + 32] = 0x434e000000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 34] = address(arg1)
    mem[mem[64] + 54] = _292
    _294 = mem[64]
    mem[mem[64]] = 54
    mem[64] = mem[64] + 86
    _296 = sha3(mem[_294 + 32 len mem[_294]])
    mem[_293 + 122] = sha3(mem[_294 + 32 len mem[_294]])
    mem[_293 + 154] = block.timestamp
    require ext_code.size(address(stor5))
    staticcall address(stor5).0x179e91f1 with:
            gas gas_remaining wei
           args address(arg1), _296, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + var46013 >= var46013
    require ext_code.size(address(stor7))
    staticcall address(stor7).getUserCoverLength(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var46012 + 1 >= ext_call.return_data[0]:
        return (ext_call.return_data[0] + var46013)
    mem[_293 + 86] = 0xfe7cfbfc00000000000000000000000000000000000000000000000000000000
    mem[_293 + 90] = arg1
    require ext_code.size(address(stor7))
    staticcall address(stor7).getAllCoversOfUser(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_293 + 86 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _293 + ceil32(return_data.size) + 86
    require return_data.size >= 32
    require mem[_293 + 86 len 4], address(arg1) << 64 <= 4294967296
    require mem[_293 + 86 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[_293 + mem[_293 + 86 len 4], address(arg1) << 64 + 86] <= 4294967296 and mem[_293 + 86 len 4], address(arg1) << 64 + (32 * mem[_293 + mem[_293 + 86 len 4], address(arg1) << 64 + 86]) + 32 <= return_data.size
    mem[_293 + ceil32(return_data.size) + 86] = mem[_293 + mem[_293 + 86 len 4], address(arg1) << 64 + 86]
    var28001 = 0
    continue 
}

function changeDependentContractAddress() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5444000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5443000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4352000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor8 = ext_call.return_data[12 len 20] or Mask(96, 160, stor8)
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
           args 0x4d43000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4756000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor9 = ext_call.return_data[12 len 20] or Mask(96, 160, stor9)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4d52000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor3 = ext_call.return_data[12 len 20] or Mask(96, 160, stor3)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5044000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor10 = ext_call.return_data[12 len 20] or Mask(96, 160, stor10)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5053000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
}

function _deprecated_unlockableBeforeBurningAndCanBurn(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xc1ed5a74 with:
            gas gas_remaining wei
           args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[64] <= block.timestamp
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xc47ac1ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= block.timestamp - ext_call.return_data[64] / 24 * 3600:
        require ext_code.size(address(stor6))
        staticcall address(stor6).0xff1b4504 with:
                gas gas_remaining wei
               args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor6))
        staticcall address(stor6).0x79ade32f with:
                gas gas_remaining wei
               args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor5))
        staticcall address(stor5).0x5ca48d8c with:
                gas gas_remaining wei
               args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
            require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
            require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
            if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                return ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 0
            require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
            require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
            return ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 
                   (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]
        require 0 <= ext_call.return_data[0]
        require ext_call.return_data[192] <= ext_call.return_data[0]
        if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
            return 0
    else:
        require block.timestamp - ext_call.return_data[64] / 24 * 3600 <= ext_call.return_data[0]
        if not ext_call.return_data[0] - (block.timestamp - ext_call.return_data[64] / 24 * 3600):
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                        return ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 0
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    return ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 
                           (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    return 0
            else:
                require ext_call.return_data[96] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == ext_call.return_data[96]
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    if ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160]:
                        return ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 
                               ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000
                    require ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    return ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 
                           (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160]
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    return 0, ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000
        else:
            require (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] - (block.timestamp - ext_call.return_data[64] / 24 * 3600) == 100000
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if not (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0]:
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                        return ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 0
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    return ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 
                           (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    return 0
            else:
                require ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] == ext_call.return_data[96]
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    if ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160]:
                        return ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 
                               ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000
                    require ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    return ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192], 
                           (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160]
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    return 0, 
                           ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000
    require 0 <= ext_call.return_data[0]
    require ext_call.return_data[192] <= ext_call.return_data[0]
    return 0, ext_call.return_data[0] - ext_call.return_data[192]
}

function _deprecated_getStakerUnlockableTokensOnSmartContract(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x24da7b69 with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xc1ed5a74 with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xff1b4504 with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xc1ed5a74 with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[64] <= block.timestamp
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xc47ac1ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= block.timestamp - ext_call.return_data[64] / 24 * 3600:
        require ext_code.size(address(stor6))
        staticcall address(stor6).0xff1b4504 with:
                gas gas_remaining wei
               args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor6))
        staticcall address(stor6).0x79ade32f with:
                gas gas_remaining wei
               args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor5))
        staticcall address(stor5).0x5ca48d8c with:
                gas gas_remaining wei
               args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
            require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
            require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
            if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                require 0 <= ext_call.return_data[96]
                require ext_call.return_data[0] <= ext_call.return_data[96]
                require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
            require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
            require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
            require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] <= ext_call.return_data[96]
            require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - ext_call.return_data[160]
            require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - ext_call.return_data[160]
            return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (2 * ext_call.return_data[160]))
        require 0 <= ext_call.return_data[0]
        require ext_call.return_data[192] <= ext_call.return_data[0]
        if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
            require 0 <= ext_call.return_data[96]
            require ext_call.return_data[0] <= ext_call.return_data[96]
            require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
            return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
    else:
        require block.timestamp - ext_call.return_data[64] / 24 * 3600 <= ext_call.return_data[0]
        if not ext_call.return_data[0] - (block.timestamp - ext_call.return_data[64] / 24 * 3600):
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                        require 0 <= ext_call.return_data[96]
                        require ext_call.return_data[0] <= ext_call.return_data[96]
                        require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                        return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - ext_call.return_data[160]
                    require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - ext_call.return_data[160]
                    return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (2 * ext_call.return_data[160]))
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    require 0 <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= ext_call.return_data[96]
                    require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                    return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
            else:
                require ext_call.return_data[96] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == ext_call.return_data[96]
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    if ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160]:
                        require ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= ext_call.return_data[96]
                        require ext_call.return_data[0] <= ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000)
                        require ext_call.return_data[160] <= ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[0]
                        return (ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[0] - ext_call.return_data[160])
                    require ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160]
                    require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160]
                    return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - (2 * ext_call.return_data[160]))
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    require ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000)
                    require ext_call.return_data[160] <= ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[0]
                    return (ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[0] - ext_call.return_data[160])
        else:
            require (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] - (block.timestamp - ext_call.return_data[64] / 24 * 3600) == 100000
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if not (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0]:
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                        require 0 <= ext_call.return_data[96]
                        require ext_call.return_data[0] <= ext_call.return_data[96]
                        require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                        return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - ext_call.return_data[160]
                    require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - ext_call.return_data[160]
                    return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (2 * ext_call.return_data[160]))
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    require 0 <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= ext_call.return_data[96]
                    require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                    return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
            else:
                require ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] == ext_call.return_data[96]
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    if ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160]:
                        require ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= ext_call.return_data[96]
                        require ext_call.return_data[0] <= ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000)
                        require ext_call.return_data[160] <= ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[0]
                        return (ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[0] - ext_call.return_data[160])
                    require ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160]
                    require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160]
                    return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - (2 * ext_call.return_data[160]))
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    require ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000)
                    require ext_call.return_data[160] <= ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[0]
                    return (ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[0] - ext_call.return_data[160])
    require 0 <= ext_call.return_data[0]
    require ext_call.return_data[192] <= ext_call.return_data[0]
    require ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[96]
    require ext_call.return_data[0] <= ext_call.return_data[96] - ext_call.return_data[0] + ext_call.return_data[192]
    require ext_call.return_data[160] <= ext_call.return_data[96] - (2 * ext_call.return_data[0]) + ext_call.return_data[192]
    return (ext_call.return_data[96] - (2 * ext_call.return_data[0]) + ext_call.return_data[192] - ext_call.return_data[160])
}

function deprecated_getTotalStakedTokensOnSmartContract(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xf480454a with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor6))
        staticcall address(stor6).0xa72c3520 with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor6))
        staticcall address(stor6).0x24da7b69 with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor6))
        staticcall address(stor6).0xc1ed5a74 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), ext_call.return_data[0]
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 224
        require ext_call.return_data[64] <= block.timestamp
        require ext_code.size(address(stor6))
        staticcall address(stor6).0xc47ac1ac with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= block.timestamp - ext_call.return_data[64] / 24 * 3600:
            require ext_code.size(address(stor6))
            staticcall address(stor6).0xff1b4504 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor6))
            staticcall address(stor6).0x79ade32f with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _130 = mem[64]
            mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 34] = address(ext_call.return_data[0])
            mem[mem[64] + 54] = address(arg1)
            mem[mem[64] + 74] = ext_call.return_data[0]
            _131 = mem[64]
            mem[mem[64]] = 74
            mem[64] = mem[64] + 106
            _133 = sha3(mem[_131 + 32 len mem[_131]])
            mem[_130 + 110] = address(ext_call.return_data[0])
            mem[_130 + 142] = _133
            require ext_code.size(address(stor5))
            staticcall address(stor5).0x5ca48d8c with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), _133
            mem[_130 + 106] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                    require s >= s
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    s = s
                    continue 
                require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + s >= s
                idx = idx + 1
                s = ext_call.return_data[0]
                s = (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + s
                continue 
            require 0 <= ext_call.return_data[0]
            require ext_call.return_data[192] <= ext_call.return_data[0]
            if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                require s >= s
                idx = idx + 1
                s = ext_call.return_data[0]
                s = s
                continue 
        else:
            require block.timestamp - ext_call.return_data[64] / 24 * 3600 <= ext_call.return_data[0]
            if not ext_call.return_data[0] - (block.timestamp - ext_call.return_data[64] / 24 * 3600):
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if not 0 / ext_call.return_data[0]:
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0xff1b4504 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0x79ade32f with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _168 = mem[64]
                    mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 34] = address(ext_call.return_data[0])
                    mem[mem[64] + 54] = address(arg1)
                    mem[mem[64] + 74] = ext_call.return_data[0]
                    _169 = mem[64]
                    mem[mem[64]] = 74
                    mem[64] = mem[64] + 106
                    _171 = sha3(mem[_169 + 32 len mem[_169]])
                    mem[_168 + 110] = address(ext_call.return_data[0])
                    mem[_168 + 142] = _171
                    require ext_code.size(address(stor5))
                    staticcall address(stor5).0x5ca48d8c with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), _171
                    mem[_168 + 106] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                        require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                        require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                        if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                            require s >= s
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            s = s
                            continue 
                        require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                        require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                        require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + s >= s
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        s = (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + s
                        continue 
                    require 0 <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= ext_call.return_data[0]
                    if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                        require s >= s
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        s = s
                        continue 
                else:
                    require ext_call.return_data[96] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == ext_call.return_data[96]
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0xff1b4504 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0x79ade32f with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _179 = mem[64]
                    mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 34] = address(ext_call.return_data[0])
                    mem[mem[64] + 54] = address(arg1)
                    mem[mem[64] + 74] = ext_call.return_data[0]
                    _180 = mem[64]
                    mem[mem[64]] = 74
                    mem[64] = mem[64] + 106
                    _182 = sha3(mem[_180 + 32 len mem[_180]])
                    mem[_179 + 110] = address(ext_call.return_data[0])
                    mem[_179 + 142] = _182
                    require ext_code.size(address(stor5))
                    staticcall address(stor5).0x5ca48d8c with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), _182
                    mem[_179 + 106] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                        require ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                        require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                        if ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160]:
                            require (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + s >= s
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            s = (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + s
                            continue 
                        require ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                        require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                        require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + s >= s
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        s = (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + s
                        continue 
                    require 0 <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= ext_call.return_data[0]
                    if ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= ext_call.return_data[0] - ext_call.return_data[192]:
                        require (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + s >= s
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        s = (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + s
                        continue 
            else:
                require (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] - (block.timestamp - ext_call.return_data[64] / 24 * 3600) == 100000
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if not (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0]:
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0xff1b4504 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0x79ade32f with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _174 = mem[64]
                    mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 34] = address(ext_call.return_data[0])
                    mem[mem[64] + 54] = address(arg1)
                    mem[mem[64] + 74] = ext_call.return_data[0]
                    _175 = mem[64]
                    mem[mem[64]] = 74
                    mem[64] = mem[64] + 106
                    _177 = sha3(mem[_175 + 32 len mem[_175]])
                    mem[_174 + 110] = address(ext_call.return_data[0])
                    mem[_174 + 142] = _177
                    require ext_code.size(address(stor5))
                    staticcall address(stor5).0x5ca48d8c with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), _177
                    mem[_174 + 106] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                        require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                        require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                        if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                            require s >= s
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            s = s
                            continue 
                        require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                        require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                        require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + s >= s
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        s = (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + s
                        continue 
                    require 0 <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= ext_call.return_data[0]
                    if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                        require s >= s
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        s = s
                        continue 
                else:
                    require ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] == ext_call.return_data[96]
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0xff1b4504 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0x79ade32f with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _184 = mem[64]
                    mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 34] = address(ext_call.return_data[0])
                    mem[mem[64] + 54] = address(arg1)
                    mem[mem[64] + 74] = ext_call.return_data[0]
                    _185 = mem[64]
                    mem[mem[64]] = 74
                    mem[64] = mem[64] + 106
                    _187 = sha3(mem[_185 + 32 len mem[_185]])
                    mem[_184 + 110] = address(ext_call.return_data[0])
                    mem[_184 + 142] = _187
                    require ext_code.size(address(stor5))
                    staticcall address(stor5).0x5ca48d8c with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), _187
                    mem[_184 + 106] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                        require ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                        require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                        if ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160]:
                            require (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + s >= s
                            idx = idx + 1
                            s = ext_call.return_data[0]
                            s = (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + s
                            continue 
                        require ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                        require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                        require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + s >= s
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        s = (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + s
                        continue 
                    require 0 <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= ext_call.return_data[0]
                    if ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= ext_call.return_data[0] - ext_call.return_data[192]:
                        require (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + s >= s
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        s = (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + s
                        continue 
        require 0 <= ext_call.return_data[0]
        require ext_call.return_data[192] <= ext_call.return_data[0]
        require ext_call.return_data[0] - ext_call.return_data[192] + s >= s
        idx = idx + 1
        s = ext_call.return_data[0]
        s = ext_call.return_data[0] - ext_call.return_data[192] + s
        continue 
    return s
}

function deprecated_getStakerUnlockableTokensOnSmartContract(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x79ade32f with:
            gas gas_remaining wei
           args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x24da7b69 with:
            gas gas_remaining wei
           args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xc1ed5a74 with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xff1b4504 with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xc1ed5a74 with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[64] <= block.timestamp
    require ext_code.size(address(stor6))
    staticcall address(stor6).0xc47ac1ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= block.timestamp - ext_call.return_data[64] / 24 * 3600:
        require ext_code.size(address(stor6))
        staticcall address(stor6).0xff1b4504 with:
                gas gas_remaining wei
               args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor6))
        staticcall address(stor6).0x79ade32f with:
                gas gas_remaining wei
               args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor5))
        staticcall address(stor5).0x5ca48d8c with:
                gas gas_remaining wei
               args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
            require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
            require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
            if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                require 0 <= ext_call.return_data[96]
                require ext_call.return_data[0] <= ext_call.return_data[96]
                require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
            require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
            require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
            require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] <= ext_call.return_data[96]
            require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - ext_call.return_data[160]
            require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - ext_call.return_data[160]
            return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (2 * ext_call.return_data[160]))
        require 0 <= ext_call.return_data[0]
        require ext_call.return_data[192] <= ext_call.return_data[0]
        if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
            require 0 <= ext_call.return_data[96]
            require ext_call.return_data[0] <= ext_call.return_data[96]
            require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
            return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
    else:
        require block.timestamp - ext_call.return_data[64] / 24 * 3600 <= ext_call.return_data[0]
        if not ext_call.return_data[0] - (block.timestamp - ext_call.return_data[64] / 24 * 3600):
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                        require 0 <= ext_call.return_data[96]
                        require ext_call.return_data[0] <= ext_call.return_data[96]
                        require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                        return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - ext_call.return_data[160]
                    require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - ext_call.return_data[160]
                    return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (2 * ext_call.return_data[160]))
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    require 0 <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= ext_call.return_data[96]
                    require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                    return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
            else:
                require ext_call.return_data[96] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == ext_call.return_data[96]
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    if ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160]:
                        require ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= ext_call.return_data[96]
                        require ext_call.return_data[0] <= ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000)
                        require ext_call.return_data[160] <= ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[0]
                        return (ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[0] - ext_call.return_data[160])
                    require ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) + ext_call.return_data[160] <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160]
                    require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[160]
                    return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - (2 * ext_call.return_data[160]))
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    require ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000 <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000)
                    require ext_call.return_data[160] <= ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[0]
                    return (ext_call.return_data[96] - (ext_call.return_data[96] * 0 / ext_call.return_data[0] / 100000) - ext_call.return_data[0] - ext_call.return_data[160])
        else:
            require (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] - (block.timestamp - ext_call.return_data[64] / 24 * 3600) == 100000
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if not (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0]:
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    if 0 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160]:
                        require 0 <= ext_call.return_data[96]
                        require ext_call.return_data[0] <= ext_call.return_data[96]
                        require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                        return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
                    require ext_call.return_data[96] - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] + ext_call.return_data[192]
                    require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + ext_call.return_data[160] <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - ext_call.return_data[160]
                    require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - ext_call.return_data[160]
                    return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (2 * ext_call.return_data[160]))
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if 0 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    require 0 <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= ext_call.return_data[96]
                    require ext_call.return_data[160] <= ext_call.return_data[96] - ext_call.return_data[0]
                    return (ext_call.return_data[96] - ext_call.return_data[0] - ext_call.return_data[160])
            else:
                require ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] == ext_call.return_data[96]
                require ext_code.size(address(stor6))
                staticcall address(stor6).0xff1b4504 with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                staticcall address(stor6).0x79ade32f with:
                        gas gas_remaining wei
                       args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor5))
                staticcall address(stor5).0x5ca48d8c with:
                        gas gas_remaining wei
                       args address(arg1), sha3(0, arg1, arg2, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] >= 0:
                    require ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    if ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160]:
                        require ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= ext_call.return_data[96]
                        require ext_call.return_data[0] <= ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000)
                        require ext_call.return_data[160] <= ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[0]
                        return (ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[0] - ext_call.return_data[160])
                    require ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160] - ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[0]
                    require ext_call.return_data[192] <= (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] + ext_call.return_data[192]
                    require (2 * ext_call.return_data[0]) - ext_call.return_data[96] + (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) + ext_call.return_data[160] <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= (2 * ext_call.return_data[96]) - (2 * ext_call.return_data[0]) - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160]
                    require ext_call.return_data[160] <= (2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[160]
                    return ((2 * ext_call.return_data[96]) - (3 * ext_call.return_data[0]) - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - (2 * ext_call.return_data[160]))
                require 0 <= ext_call.return_data[0]
                require ext_call.return_data[192] <= ext_call.return_data[0]
                if ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= ext_call.return_data[0] - ext_call.return_data[192]:
                    require ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000 <= ext_call.return_data[96]
                    require ext_call.return_data[0] <= ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000)
                    require ext_call.return_data[160] <= ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[0]
                    return (ext_call.return_data[96] - (ext_call.return_data[96] * (100000 * ext_call.return_data[0]) - (100000 * block.timestamp - ext_call.return_data[64] / 24 * 3600) / ext_call.return_data[0] / 100000) - ext_call.return_data[0] - ext_call.return_data[160])
    require 0 <= ext_call.return_data[0]
    require ext_call.return_data[192] <= ext_call.return_data[0]
    require ext_call.return_data[0] - ext_call.return_data[192] <= ext_call.return_data[96]
    require ext_call.return_data[0] <= ext_call.return_data[96] - ext_call.return_data[0] + ext_call.return_data[192]
    require ext_call.return_data[160] <= ext_call.return_data[96] - (2 * ext_call.return_data[0]) + ext_call.return_data[192]
    return (ext_call.return_data[96] - (2 * ext_call.return_data[0]) + ext_call.return_data[192] - ext_call.return_data[160])
}

function deprecated_getStakerAllLockedTokens(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0xe325ef7400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(stor6))
    staticcall address(stor6).mem[var85003 len 4] with:
            gas gas_remaining wei
           args mem[var85003 + 4 len var85004 - 4]
    mem[var85005] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if var89003 >= mem[var89002]:
            return var89006
        mem[96] = 0x96cf145500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = var91001
        require ext_code.size(address(stor6))
        staticcall address(stor6).mem[var93003 len 4] with:
                gas gas_remaining wei
               args mem[var93003 + 4 len var93004 - 4]
        mem[var93005] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            mem[96] = 0x79ade32f00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = var97003
            require ext_code.size(address(stor6))
            staticcall address(stor6).mem[var99003 len 4] with:
                    gas gas_remaining wei
                   args mem[var99003 + 4 len var99004 - 4]
            mem[var99005] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[96] = 0xc1ed5a7400000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = var105001
                require ext_code.size(address(stor6))
                staticcall address(stor6).mem[var107003 len 4] with:
                        gas gas_remaining wei
                       args mem[var107003 + 4 len var107004 - 4]
                mem[var107005 len 224] = ext_call.return_data[0 len 224]
                if ext_call.success:
                    require return_data.size >= 224
                    require var113001 <= block.timestamp
                    require ext_code.size(address(stor6))
                    staticcall address(stor6).0xc47ac1ac with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    s = block.timestamp - var115002
                    t = var115007
                    u = var115009
                    v = var115010
                    w = var115011
                    x = var115012
                    x = var115015
                    y = var115016
                    z = var115020
                    a = var115021
                    a = var115022
                    a = var115023
                    while ext_call.success:
                        require return_data.size >= 32
                        _5644 = mem[mem[64]]
                        if mem[mem[64]] <= s / 24 * 3600:
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).0xff1b4504 with:
                                    gas gas_remaining wei
                                   args address(arg1), x
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).0x79ade32f with:
                                    gas gas_remaining wei
                                   args address(arg1), x
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _5653 = mem[64]
                            mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 34] = address(arg1)
                            mem[mem[64] + 54] = address(y)
                            mem[mem[64] + 74] = ext_call.return_data[0]
                            _5654 = mem[64]
                            mem[mem[64]] = 74
                            mem[64] = mem[64] + 106
                            require ext_code.size(address(stor5))
                            staticcall address(stor5).0x5ca48d8c with:
                                    gas gas_remaining wei
                                   args address(arg1), sha3(mem[_5654 + 32 len mem[_5654]])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if w - v - ext_call.return_data[0] - u >= 0:
                                require w - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                require u <= (2 * ext_call.return_data[0]) - w + v + u
                                if 0 <= (2 * ext_call.return_data[0]) - w + v:
                                    require a >= a
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xe325ef74 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if z + 1 >= ext_call.return_data[0]:
                                        return a
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x96cf1455 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc1ed5a74 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    mem[_5653 + 106 len 224] = ext_call.return_data[0 len 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 224
                                    require ext_call.return_data[64] <= block.timestamp
                                    mem[_5653 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc47ac1ac with:
                                            gas gas_remaining wei
                                           args mem[_5653 + 110 len -_5653 - 10]
                                    mem[_5653 + 106] = ext_call.return_data[0]
                                    s = block.timestamp - ext_call.return_data[64]
                                    t = ext_call.return_data[96]
                                    u = ext_call.return_data[192]
                                    v = ext_call.return_data[160]
                                    w = ext_call.return_data[96]
                                    x = ext_call.return_data[64]
                                    x = z + 1
                                    y = ext_call.return_data[0]
                                    z = z + 1
                                    a = ext_call.return_data[0]
                                    a = ext_call.return_data[0]
                                    a = a
                                    continue 
                                require w - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                require u <= (2 * ext_call.return_data[0]) - w + v + u
                                require (2 * ext_call.return_data[0]) - w + v + a >= a
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0xe325ef74 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if z + 1 >= ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - w + v + a)
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0x96cf1455 with:
                                        gas gas_remaining wei
                                       args address(arg1), z + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0x79ade32f with:
                                        gas gas_remaining wei
                                       args address(arg1), z + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0xc1ed5a74 with:
                                        gas gas_remaining wei
                                       args address(arg1), z + 1
                                mem[_5653 + 106 len 224] = ext_call.return_data[0 len 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 224
                                require ext_call.return_data[64] <= block.timestamp
                                mem[_5653 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0xc47ac1ac with:
                                        gas gas_remaining wei
                                       args mem[_5653 + 110 len -_5653 - 10]
                                mem[_5653 + 106] = ext_call.return_data[0]
                                s = block.timestamp - ext_call.return_data[64]
                                t = ext_call.return_data[96]
                                u = ext_call.return_data[192]
                                v = ext_call.return_data[160]
                                w = ext_call.return_data[96]
                                x = ext_call.return_data[64]
                                x = z + 1
                                y = ext_call.return_data[0]
                                z = z + 1
                                a = ext_call.return_data[0]
                                a = ext_call.return_data[0]
                                a = (2 * ext_call.return_data[0]) - w + v + a
                                continue 
                            require 0 <= ext_call.return_data[0]
                            require u <= ext_call.return_data[0]
                            if 0 <= ext_call.return_data[0] - u:
                                require a >= a
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0xe325ef74 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if z + 1 >= ext_call.return_data[0]:
                                    return a
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0x96cf1455 with:
                                        gas gas_remaining wei
                                       args address(arg1), z + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0x79ade32f with:
                                        gas gas_remaining wei
                                       args address(arg1), z + 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0xc1ed5a74 with:
                                        gas gas_remaining wei
                                       args address(arg1), z + 1
                                mem[_5653 + 106 len 224] = ext_call.return_data[0 len 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 224
                                require ext_call.return_data[64] <= block.timestamp
                                mem[_5653 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(stor6))
                                staticcall address(stor6).0xc47ac1ac with:
                                        gas gas_remaining wei
                                       args mem[_5653 + 110 len -_5653 - 10]
                                mem[_5653 + 106] = ext_call.return_data[0]
                                s = block.timestamp - ext_call.return_data[64]
                                t = ext_call.return_data[96]
                                u = ext_call.return_data[192]
                                v = ext_call.return_data[160]
                                w = ext_call.return_data[96]
                                x = ext_call.return_data[64]
                                x = z + 1
                                y = ext_call.return_data[0]
                                z = z + 1
                                a = ext_call.return_data[0]
                                a = ext_call.return_data[0]
                                a = a
                                continue 
                            require 0 <= ext_call.return_data[0]
                            require u <= ext_call.return_data[0]
                            require ext_call.return_data[0] - u + a >= a
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).0xe325ef74 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if z + 1 >= ext_call.return_data[0]:
                                return (ext_call.return_data[0] - u + a)
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).0x96cf1455 with:
                                    gas gas_remaining wei
                                   args address(arg1), z + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).0x79ade32f with:
                                    gas gas_remaining wei
                                   args address(arg1), z + 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).0xc1ed5a74 with:
                                    gas gas_remaining wei
                                   args address(arg1), z + 1
                            mem[_5653 + 106 len 224] = ext_call.return_data[0 len 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 224
                            require ext_call.return_data[64] <= block.timestamp
                            mem[_5653 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(stor6))
                            staticcall address(stor6).0xc47ac1ac with:
                                    gas gas_remaining wei
                                   args mem[_5653 + 110 len -_5653 - 10]
                            mem[_5653 + 106] = ext_call.return_data[0]
                        else:
                            require s / 24 * 3600 <= mem[mem[64]]
                            if not mem[mem[64]] - (s / 24 * 3600):
                                require mem[mem[64]] > 0
                                require mem[mem[64]]
                                if not 0 / mem[mem[64]]:
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xff1b4504 with:
                                            gas gas_remaining wei
                                           args address(arg1), x
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), x
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _5698 = mem[64]
                                    mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 34] = address(arg1)
                                    mem[mem[64] + 54] = address(y)
                                    mem[mem[64] + 74] = ext_call.return_data[0]
                                    _5699 = mem[64]
                                    mem[mem[64]] = 74
                                    mem[64] = mem[64] + 106
                                    require ext_code.size(address(stor5))
                                    staticcall address(stor5).0x5ca48d8c with:
                                            gas gas_remaining wei
                                           args address(arg1), sha3(mem[_5699 + 32 len mem[_5699]])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if w - v - ext_call.return_data[0] - u >= 0:
                                        require w - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                        require u <= (2 * ext_call.return_data[0]) - w + v + u
                                        if 0 <= (2 * ext_call.return_data[0]) - w + v:
                                            require a >= a
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xe325ef74 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if z + 1 >= ext_call.return_data[0]:
                                                return a
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0x96cf1455 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0x79ade32f with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xc1ed5a74 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            mem[_5698 + 106 len 224] = ext_call.return_data[0 len 224]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 224
                                            require ext_call.return_data[64] <= block.timestamp
                                            mem[_5698 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xc47ac1ac with:
                                                    gas gas_remaining wei
                                                   args mem[_5698 + 110 len -_5698 - 10]
                                            mem[_5698 + 106] = ext_call.return_data[0]
                                            s = block.timestamp - ext_call.return_data[64]
                                            t = ext_call.return_data[96]
                                            u = ext_call.return_data[192]
                                            v = ext_call.return_data[160]
                                            w = ext_call.return_data[96]
                                            x = ext_call.return_data[64]
                                            x = z + 1
                                            y = ext_call.return_data[0]
                                            z = z + 1
                                            a = ext_call.return_data[0]
                                            a = ext_call.return_data[0]
                                            a = a
                                            continue 
                                        require w - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                        require u <= (2 * ext_call.return_data[0]) - w + v + u
                                        require (2 * ext_call.return_data[0]) - w + v + a >= a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xe325ef74 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if z + 1 >= ext_call.return_data[0]:
                                            return ((2 * ext_call.return_data[0]) - w + v + a)
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x96cf1455 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x79ade32f with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc1ed5a74 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        mem[_5698 + 106 len 224] = ext_call.return_data[0 len 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 224
                                        require ext_call.return_data[64] <= block.timestamp
                                        mem[_5698 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc47ac1ac with:
                                                gas gas_remaining wei
                                               args mem[_5698 + 110 len -_5698 - 10]
                                        mem[_5698 + 106] = ext_call.return_data[0]
                                        s = block.timestamp - ext_call.return_data[64]
                                        t = ext_call.return_data[96]
                                        u = ext_call.return_data[192]
                                        v = ext_call.return_data[160]
                                        w = ext_call.return_data[96]
                                        x = ext_call.return_data[64]
                                        x = z + 1
                                        y = ext_call.return_data[0]
                                        z = z + 1
                                        a = ext_call.return_data[0]
                                        a = ext_call.return_data[0]
                                        a = (2 * ext_call.return_data[0]) - w + v + a
                                        continue 
                                    require 0 <= ext_call.return_data[0]
                                    require u <= ext_call.return_data[0]
                                    if 0 <= ext_call.return_data[0] - u:
                                        require a >= a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xe325ef74 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if z + 1 >= ext_call.return_data[0]:
                                            return a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x96cf1455 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x79ade32f with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc1ed5a74 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        mem[_5698 + 106 len 224] = ext_call.return_data[0 len 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 224
                                        require ext_call.return_data[64] <= block.timestamp
                                        mem[_5698 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc47ac1ac with:
                                                gas gas_remaining wei
                                               args mem[_5698 + 110 len -_5698 - 10]
                                        mem[_5698 + 106] = ext_call.return_data[0]
                                        s = block.timestamp - ext_call.return_data[64]
                                        t = ext_call.return_data[96]
                                        u = ext_call.return_data[192]
                                        v = ext_call.return_data[160]
                                        w = ext_call.return_data[96]
                                        x = ext_call.return_data[64]
                                        x = z + 1
                                        y = ext_call.return_data[0]
                                        z = z + 1
                                        a = ext_call.return_data[0]
                                        a = ext_call.return_data[0]
                                        a = a
                                        continue 
                                    require 0 <= ext_call.return_data[0]
                                    require u <= ext_call.return_data[0]
                                    require ext_call.return_data[0] - u + a >= a
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xe325ef74 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if z + 1 >= ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - u + a)
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x96cf1455 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc1ed5a74 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    mem[_5698 + 106 len 224] = ext_call.return_data[0 len 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 224
                                    require ext_call.return_data[64] <= block.timestamp
                                    mem[_5698 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc47ac1ac with:
                                            gas gas_remaining wei
                                           args mem[_5698 + 110 len -_5698 - 10]
                                    mem[_5698 + 106] = ext_call.return_data[0]
                                else:
                                    require t * 0 / mem[mem[64]] / 0 / mem[mem[64]] == t
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xff1b4504 with:
                                            gas gas_remaining wei
                                           args address(arg1), x
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), x
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _5712 = mem[64]
                                    mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 34] = address(arg1)
                                    mem[mem[64] + 54] = address(y)
                                    mem[mem[64] + 74] = ext_call.return_data[0]
                                    _5713 = mem[64]
                                    mem[mem[64]] = 74
                                    mem[64] = mem[64] + 106
                                    require ext_code.size(address(stor5))
                                    staticcall address(stor5).0x5ca48d8c with:
                                            gas gas_remaining wei
                                           args address(arg1), sha3(mem[_5713 + 32 len mem[_5713]])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if w - (t * 0 / _5644 / 100000) - v - ext_call.return_data[0] - u >= 0:
                                        require w - (t * 0 / _5644 / 100000) - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                        require u <= (2 * ext_call.return_data[0]) - w + (t * 0 / _5644 / 100000) + v + u
                                        if t * 0 / _5644 / 100000 <= (2 * ext_call.return_data[0]) - w + (t * 0 / _5644 / 100000) + v:
                                            require (t * 0 / _5644 / 100000) + a >= a
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xe325ef74 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if z + 1 >= ext_call.return_data[0]:
                                                return ((t * 0 / _5644 / 100000) + a)
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0x96cf1455 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0x79ade32f with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xc1ed5a74 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            mem[_5712 + 106 len 224] = ext_call.return_data[0 len 224]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 224
                                            require ext_call.return_data[64] <= block.timestamp
                                            mem[_5712 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xc47ac1ac with:
                                                    gas gas_remaining wei
                                                   args mem[_5712 + 110 len -_5712 - 10]
                                            mem[_5712 + 106] = ext_call.return_data[0]
                                            s = block.timestamp - ext_call.return_data[64]
                                            t = ext_call.return_data[96]
                                            u = ext_call.return_data[192]
                                            v = ext_call.return_data[160]
                                            w = ext_call.return_data[96]
                                            x = ext_call.return_data[64]
                                            x = z + 1
                                            y = ext_call.return_data[0]
                                            z = z + 1
                                            a = ext_call.return_data[0]
                                            a = ext_call.return_data[0]
                                            a = (t * 0 / _5644 / 100000) + a
                                            continue 
                                        require w - (t * 0 / _5644 / 100000) - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                        require u <= (2 * ext_call.return_data[0]) - w + (t * 0 / _5644 / 100000) + v + u
                                        require (2 * ext_call.return_data[0]) - w + (t * 0 / _5644 / 100000) + v + a >= a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xe325ef74 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if z + 1 >= ext_call.return_data[0]:
                                            return ((2 * ext_call.return_data[0]) - w + (t * 0 / _5644 / 100000) + v + a)
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x96cf1455 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x79ade32f with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc1ed5a74 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        mem[_5712 + 106 len 224] = ext_call.return_data[0 len 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 224
                                        require ext_call.return_data[64] <= block.timestamp
                                        mem[_5712 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc47ac1ac with:
                                                gas gas_remaining wei
                                               args mem[_5712 + 110 len -_5712 - 10]
                                        mem[_5712 + 106] = ext_call.return_data[0]
                                        s = block.timestamp - ext_call.return_data[64]
                                        t = ext_call.return_data[96]
                                        u = ext_call.return_data[192]
                                        v = ext_call.return_data[160]
                                        w = ext_call.return_data[96]
                                        x = ext_call.return_data[64]
                                        x = z + 1
                                        y = ext_call.return_data[0]
                                        z = z + 1
                                        a = ext_call.return_data[0]
                                        a = ext_call.return_data[0]
                                        a = (2 * ext_call.return_data[0]) - w + (t * 0 / _5644 / 100000) + v + a
                                        continue 
                                    require 0 <= ext_call.return_data[0]
                                    require u <= ext_call.return_data[0]
                                    if t * 0 / _5644 / 100000 <= ext_call.return_data[0] - u:
                                        require (t * 0 / _5644 / 100000) + a >= a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xe325ef74 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if z + 1 >= ext_call.return_data[0]:
                                            return ((t * 0 / _5644 / 100000) + a)
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x96cf1455 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x79ade32f with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc1ed5a74 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        mem[_5712 + 106 len 224] = ext_call.return_data[0 len 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 224
                                        require ext_call.return_data[64] <= block.timestamp
                                        mem[_5712 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc47ac1ac with:
                                                gas gas_remaining wei
                                               args mem[_5712 + 110 len -_5712 - 10]
                                        mem[_5712 + 106] = ext_call.return_data[0]
                                        s = block.timestamp - ext_call.return_data[64]
                                        t = ext_call.return_data[96]
                                        u = ext_call.return_data[192]
                                        v = ext_call.return_data[160]
                                        w = ext_call.return_data[96]
                                        x = ext_call.return_data[64]
                                        x = z + 1
                                        y = ext_call.return_data[0]
                                        z = z + 1
                                        a = ext_call.return_data[0]
                                        a = ext_call.return_data[0]
                                        a = (t * 0 / _5644 / 100000) + a
                                        continue 
                                    require 0 <= ext_call.return_data[0]
                                    require u <= ext_call.return_data[0]
                                    require ext_call.return_data[0] - u + a >= a
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xe325ef74 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if z + 1 >= ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - u + a)
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x96cf1455 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc1ed5a74 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    mem[_5712 + 106 len 224] = ext_call.return_data[0 len 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 224
                                    require ext_call.return_data[64] <= block.timestamp
                                    mem[_5712 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc47ac1ac with:
                                            gas gas_remaining wei
                                           args mem[_5712 + 110 len -_5712 - 10]
                                    mem[_5712 + 106] = ext_call.return_data[0]
                            else:
                                require (100000 * mem[mem[64]]) - (100000 * s / 24 * 3600) / mem[mem[64]] - (s / 24 * 3600) == 100000
                                require mem[mem[64]] > 0
                                require mem[mem[64]]
                                if not (100000 * mem[mem[64]]) - (100000 * s / 24 * 3600) / mem[mem[64]]:
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xff1b4504 with:
                                            gas gas_remaining wei
                                           args address(arg1), x
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), x
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _5707 = mem[64]
                                    mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 34] = address(arg1)
                                    mem[mem[64] + 54] = address(y)
                                    mem[mem[64] + 74] = ext_call.return_data[0]
                                    _5708 = mem[64]
                                    mem[mem[64]] = 74
                                    mem[64] = mem[64] + 106
                                    require ext_code.size(address(stor5))
                                    staticcall address(stor5).0x5ca48d8c with:
                                            gas gas_remaining wei
                                           args address(arg1), sha3(mem[_5708 + 32 len mem[_5708]])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if w - v - ext_call.return_data[0] - u >= 0:
                                        require w - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                        require u <= (2 * ext_call.return_data[0]) - w + v + u
                                        if 0 <= (2 * ext_call.return_data[0]) - w + v:
                                            require a >= a
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xe325ef74 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if z + 1 >= ext_call.return_data[0]:
                                                return a
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0x96cf1455 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0x79ade32f with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xc1ed5a74 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            mem[_5707 + 106 len 224] = ext_call.return_data[0 len 224]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 224
                                            require ext_call.return_data[64] <= block.timestamp
                                            mem[_5707 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xc47ac1ac with:
                                                    gas gas_remaining wei
                                                   args mem[_5707 + 110 len -_5707 - 10]
                                            mem[_5707 + 106] = ext_call.return_data[0]
                                            s = block.timestamp - ext_call.return_data[64]
                                            t = ext_call.return_data[96]
                                            u = ext_call.return_data[192]
                                            v = ext_call.return_data[160]
                                            w = ext_call.return_data[96]
                                            x = ext_call.return_data[64]
                                            x = z + 1
                                            y = ext_call.return_data[0]
                                            z = z + 1
                                            a = ext_call.return_data[0]
                                            a = ext_call.return_data[0]
                                            a = a
                                            continue 
                                        require w - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                        require u <= (2 * ext_call.return_data[0]) - w + v + u
                                        require (2 * ext_call.return_data[0]) - w + v + a >= a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xe325ef74 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if z + 1 >= ext_call.return_data[0]:
                                            return ((2 * ext_call.return_data[0]) - w + v + a)
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x96cf1455 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x79ade32f with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc1ed5a74 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        mem[_5707 + 106 len 224] = ext_call.return_data[0 len 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 224
                                        require ext_call.return_data[64] <= block.timestamp
                                        mem[_5707 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc47ac1ac with:
                                                gas gas_remaining wei
                                               args mem[_5707 + 110 len -_5707 - 10]
                                        mem[_5707 + 106] = ext_call.return_data[0]
                                        s = block.timestamp - ext_call.return_data[64]
                                        t = ext_call.return_data[96]
                                        u = ext_call.return_data[192]
                                        v = ext_call.return_data[160]
                                        w = ext_call.return_data[96]
                                        x = ext_call.return_data[64]
                                        x = z + 1
                                        y = ext_call.return_data[0]
                                        z = z + 1
                                        a = ext_call.return_data[0]
                                        a = ext_call.return_data[0]
                                        a = (2 * ext_call.return_data[0]) - w + v + a
                                        continue 
                                    require 0 <= ext_call.return_data[0]
                                    require u <= ext_call.return_data[0]
                                    if 0 <= ext_call.return_data[0] - u:
                                        require a >= a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xe325ef74 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if z + 1 >= ext_call.return_data[0]:
                                            return a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x96cf1455 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x79ade32f with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc1ed5a74 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        mem[_5707 + 106 len 224] = ext_call.return_data[0 len 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 224
                                        require ext_call.return_data[64] <= block.timestamp
                                        mem[_5707 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc47ac1ac with:
                                                gas gas_remaining wei
                                               args mem[_5707 + 110 len -_5707 - 10]
                                        mem[_5707 + 106] = ext_call.return_data[0]
                                        s = block.timestamp - ext_call.return_data[64]
                                        t = ext_call.return_data[96]
                                        u = ext_call.return_data[192]
                                        v = ext_call.return_data[160]
                                        w = ext_call.return_data[96]
                                        x = ext_call.return_data[64]
                                        x = z + 1
                                        y = ext_call.return_data[0]
                                        z = z + 1
                                        a = ext_call.return_data[0]
                                        a = ext_call.return_data[0]
                                        a = a
                                        continue 
                                    require 0 <= ext_call.return_data[0]
                                    require u <= ext_call.return_data[0]
                                    require ext_call.return_data[0] - u + a >= a
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xe325ef74 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if z + 1 >= ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - u + a)
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x96cf1455 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc1ed5a74 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    mem[_5707 + 106 len 224] = ext_call.return_data[0 len 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 224
                                    require ext_call.return_data[64] <= block.timestamp
                                    mem[_5707 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc47ac1ac with:
                                            gas gas_remaining wei
                                           args mem[_5707 + 110 len -_5707 - 10]
                                    mem[_5707 + 106] = ext_call.return_data[0]
                                else:
                                    require t * (100000 * mem[mem[64]]) - (100000 * s / 24 * 3600) / mem[mem[64]] / (100000 * mem[mem[64]]) - (100000 * s / 24 * 3600) / mem[mem[64]] == t
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xff1b4504 with:
                                            gas gas_remaining wei
                                           args address(arg1), x
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), x
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _5721 = mem[64]
                                    mem[mem[64] + 32] = 0x5557000000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 34] = address(arg1)
                                    mem[mem[64] + 54] = address(y)
                                    mem[mem[64] + 74] = ext_call.return_data[0]
                                    _5722 = mem[64]
                                    mem[mem[64]] = 74
                                    mem[64] = mem[64] + 106
                                    require ext_code.size(address(stor5))
                                    staticcall address(stor5).0x5ca48d8c with:
                                            gas gas_remaining wei
                                           args address(arg1), sha3(mem[_5722 + 32 len mem[_5722]])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if w - (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) - v - ext_call.return_data[0] - u >= 0:
                                        require w - (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                        require u <= (2 * ext_call.return_data[0]) - w + (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + v + u
                                        if t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000 <= (2 * ext_call.return_data[0]) - w + (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + v:
                                            require (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + a >= a
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xe325ef74 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if z + 1 >= ext_call.return_data[0]:
                                                return ((t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + a)
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0x96cf1455 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0x79ade32f with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xc1ed5a74 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), z + 1
                                            mem[_5721 + 106 len 224] = ext_call.return_data[0 len 224]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 224
                                            require ext_call.return_data[64] <= block.timestamp
                                            mem[_5721 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(address(stor6))
                                            staticcall address(stor6).0xc47ac1ac with:
                                                    gas gas_remaining wei
                                                   args mem[_5721 + 110 len -_5721 - 10]
                                            mem[_5721 + 106] = ext_call.return_data[0]
                                            s = block.timestamp - ext_call.return_data[64]
                                            t = ext_call.return_data[96]
                                            u = ext_call.return_data[192]
                                            v = ext_call.return_data[160]
                                            w = ext_call.return_data[96]
                                            x = ext_call.return_data[64]
                                            x = z + 1
                                            y = ext_call.return_data[0]
                                            z = z + 1
                                            a = ext_call.return_data[0]
                                            a = ext_call.return_data[0]
                                            a = (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + a
                                            continue 
                                        require w - (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) - v - ext_call.return_data[0] - u <= ext_call.return_data[0]
                                        require u <= (2 * ext_call.return_data[0]) - w + (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + v + u
                                        require (2 * ext_call.return_data[0]) - w + (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + v + a >= a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xe325ef74 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if z + 1 >= ext_call.return_data[0]:
                                            return ((2 * ext_call.return_data[0]) - w + (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + v + a)
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x96cf1455 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x79ade32f with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc1ed5a74 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        mem[_5721 + 106 len 224] = ext_call.return_data[0 len 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 224
                                        require ext_call.return_data[64] <= block.timestamp
                                        mem[_5721 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc47ac1ac with:
                                                gas gas_remaining wei
                                               args mem[_5721 + 110 len -_5721 - 10]
                                        mem[_5721 + 106] = ext_call.return_data[0]
                                        s = block.timestamp - ext_call.return_data[64]
                                        t = ext_call.return_data[96]
                                        u = ext_call.return_data[192]
                                        v = ext_call.return_data[160]
                                        w = ext_call.return_data[96]
                                        x = ext_call.return_data[64]
                                        x = z + 1
                                        y = ext_call.return_data[0]
                                        z = z + 1
                                        a = ext_call.return_data[0]
                                        a = ext_call.return_data[0]
                                        a = (2 * ext_call.return_data[0]) - w + (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + v + a
                                        continue 
                                    require 0 <= ext_call.return_data[0]
                                    require u <= ext_call.return_data[0]
                                    if t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000 <= ext_call.return_data[0] - u:
                                        require (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + a >= a
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xe325ef74 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if z + 1 >= ext_call.return_data[0]:
                                            return ((t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + a)
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x96cf1455 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0x79ade32f with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc1ed5a74 with:
                                                gas gas_remaining wei
                                               args address(arg1), z + 1
                                        mem[_5721 + 106 len 224] = ext_call.return_data[0 len 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 224
                                        require ext_call.return_data[64] <= block.timestamp
                                        mem[_5721 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(stor6))
                                        staticcall address(stor6).0xc47ac1ac with:
                                                gas gas_remaining wei
                                               args mem[_5721 + 110 len -_5721 - 10]
                                        mem[_5721 + 106] = ext_call.return_data[0]
                                        s = block.timestamp - ext_call.return_data[64]
                                        t = ext_call.return_data[96]
                                        u = ext_call.return_data[192]
                                        v = ext_call.return_data[160]
                                        w = ext_call.return_data[96]
                                        x = ext_call.return_data[64]
                                        x = z + 1
                                        y = ext_call.return_data[0]
                                        z = z + 1
                                        a = ext_call.return_data[0]
                                        a = ext_call.return_data[0]
                                        a = (t * (100000 * _5644) - (100000 * s / 24 * 3600) / _5644 / 100000) + a
                                        continue 
                                    require 0 <= ext_call.return_data[0]
                                    require u <= ext_call.return_data[0]
                                    require ext_call.return_data[0] - u + a >= a
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xe325ef74 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if z + 1 >= ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - u + a)
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x96cf1455 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0x79ade32f with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc1ed5a74 with:
                                            gas gas_remaining wei
                                           args address(arg1), z + 1
                                    mem[_5721 + 106 len 224] = ext_call.return_data[0 len 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 224
                                    require ext_call.return_data[64] <= block.timestamp
                                    mem[_5721 + 106] = 0xc47ac1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(stor6))
                                    staticcall address(stor6).0xc47ac1ac with:
                                            gas gas_remaining wei
                                           args mem[_5721 + 110 len -_5721 - 10]
                                    mem[_5721 + 106] = ext_call.return_data[0]
                        s = block.timestamp - ext_call.return_data[64]
                        t = ext_call.return_data[96]
                        u = ext_call.return_data[192]
                        v = ext_call.return_data[160]
                        w = ext_call.return_data[96]
                        x = ext_call.return_data[64]
                        x = z + 1
                        y = ext_call.return_data[0]
                        z = z + 1
                        a = ext_call.return_data[0]
                        a = ext_call.return_data[0]
                        a = ext_call.return_data[0] - u + a
                        continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
