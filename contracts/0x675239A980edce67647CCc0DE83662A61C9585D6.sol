contract main {




// =====================  Runtime code  =====================


#
#  - getMaxSellTokens()
#  - _calVtpAndMCRtp(uint256 arg1)
#  - addMCRData(uint256 arg1, uint256 arg2, uint256 arg3, bytes4[] arg4, uint256[] arg5, uint64 arg6)
#
address msAddress;
address soteMasterAddress;
address stor2;
uint256 stor2;
address stor3;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor7;
uint256 variableMincap;
uint256 dynamicMincapThresholdx100;
uint256 dynamicMincapIncrementx100;

function dynamicMincapIncrementx100() payable {
    return dynamicMincapIncrementx100
}

function dynamicMincapThresholdx100() payable {
    return dynamicMincapThresholdx100
}

function ms() payable {
    return msAddress
}

function soteMasterAddress() payable {
    return soteMasterAddress
}

function variableMincap() payable {
    return variableMincap
}

function _fallback() payable {
    revert
}

function changeMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function getUintParameters(bytes8 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(64, 192, arg1) == 0x444d435400000000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), dynamicMincapThresholdx100
    if Mask(64, 192, arg1) != 0x444d434900000000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), 0
    return Mask(64, 192, arg1), dynamicMincapIncrementx100
}

function updateUintParameters(bytes8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if Mask(64, 192, arg1) == 0x444d435400000000000000000000000000000000000000000000000000000000:
        dynamicMincapThresholdx100 = arg2
    else:
        if Mask(64, 192, arg1) != 0x444d434900000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Invalid param code'
        dynamicMincapIncrementx100 = arg2
}

function changeDependentContractAddress() payable {
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
           args 0x5144000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5031000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5044000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(msAddress)
    staticcall msAddress.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor4 = ext_call.return_data[12 len 20] or Mask(96, 160, stor4)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4d52000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor6 = ext_call.return_data[12 len 20] or Mask(96, 160, stor6)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5444000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
}

function getAllSumAssurance() payable {
    require ext_code.size(address(stor3))
    staticcall address(stor3).0x255f5049 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor3))
        staticcall address(stor3).0x3c40b1f0 with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) == 0x424e420000000000000000000000000000000000000000000000000000000000:
            require ext_code.size(address(stor5))
            staticcall address(stor5).getTotalSumAssured(bytes4 rg1) with:
                    gas gas_remaining wei
                   args Mask(32, 224, ext_call.return_data[0])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + s >= s
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        require ext_code.size(address(stor3))
        staticcall address(stor3).0xe26ff34c with:
                gas gas_remaining wei
               args Mask(32, 224, ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(address(stor3))
        staticcall address(stor3).0xe26ff34c with:
                gas gas_remaining wei
               args Mask(32, 224, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = Mask(32, 224, ext_call.return_data[0])
        require ext_code.size(address(stor5))
        staticcall address(stor5).getTotalSumAssured(bytes4 rg1) with:
                gas gas_remaining wei
               args Mask(32, 224, ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require (0 / ext_call.return_data[0]) + s >= s
            idx = idx + 1
            s = (0 / ext_call.return_data[0]) + s
            continue 
        require 100 * ext_call.return_data[0] / ext_call.return_data[0] == 100
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require (100 * ext_call.return_data[0] / ext_call.return_data[0]) + s >= s
        idx = idx + 1
        s = (100 * ext_call.return_data[0] / ext_call.return_data[0]) + s
        continue 
    return s
}

function addLastMCRData(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor3))
    staticcall address(stor3).0xff010239 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[24 len 8]:
        require ext_code.size(address(stor3))
        staticcall address(stor3).0xc94f740f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(address(stor3))
        staticcall address(stor3).0x255f5049 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor3))
        call address(stor3).0x7106767b with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], ext_call.return_data[32], ext_call.return_data[64], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(address(stor3))
            staticcall address(stor3).0x3c40b1f0 with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor3))
            staticcall address(stor3).0xe26ff34c with:
                    gas gas_remaining wei
                   args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0xade6a30300000000000000000000000000000000000000000000000000000000
            mem[100] = Mask(32, 224, ext_call.return_data[0])
            mem[132] = ext_call.return_data[0]
            require ext_code.size(address(stor3))
            call address(stor3).0xade6a303 with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        emit MCREvent(uint256 rg1, uint256 rg2, bytes4[] rg3, uint256[] rg4, uint256 rg5, uint256 rg6, uint256 rg7):
                      block.number,
                      192,
                      224,
                      ext_call.return_data[32],
                      ext_call.return_data[0],
                      ext_call.return_data[64],
                      0,
                      0,
                      arg1,
        require ext_code.size(address(stor3))
        staticcall address(stor3).0x7920e200 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor2))
        call address(stor2).0xc57dbe00 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function calculateVtpAndMCRtp(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0x255f504900000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var41003 len 4] with:
            gas gas_remaining wei
           args mem[var41003 + 4 len var41004 - 4]
    mem[var41005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var45003 >= mem[var45002]:
        require ext_code.size(address(stor2))
        staticcall address(stor2).0x69b0b737 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 + var45007 >= var45007
        require ext_call.return_data[0] >= 0
        require ext_code.size(address(stor3))
        staticcall address(stor3).0xc94f740f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not ext_call.return_data[64]:
            return ext_call.return_data[0] + arg1 + var45007, 0
        if not ext_call.return_data[0]:
            require ext_call.return_data[64] > 0
            if ext_call.return_data[64]:
                return ext_call.return_data[0] + arg1 + var45007, 0 / ext_call.return_data[64]
        else:
            require (ext_call.return_data[0] * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[0] == ext_call.return_data[0] + arg1 + var45007
            require ext_call.return_data[64] > 0
            if ext_call.return_data[64]:
                return ext_call.return_data[0] + arg1 + var45007, 
                       (ext_call.return_data[0] * ext_call.return_data[0]) + (arg1 * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64]
        ('iszero', ('ext_call.return_data', 64, 32))
        revert
    mem[96] = 0x3c40b1f000000000000000000000000000000000000000000000000000000000
    mem[100] = var47001
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var49003 len 4] with:
            gas gas_remaining wei
           args mem[var49003 + 4 len var49004 - 4]
    mem[var49005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _515 = mem[var53002]
    mem[96] = 0xe3dee23900000000000000000000000000000000000000000000000000000000
    mem[100] = Mask(32, 224, _515)
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var55003 len 4] with:
            gas gas_remaining wei
           args mem[var55003 + 4 len var55004 - 4]
    mem[var55005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _788 = mem[var59002]
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = address(stor2)
    require ext_code.size(address(_788))
    staticcall var61002.mem[var61003 len 4] with:
            gas gas_remaining wei
           args mem[var61003 + 4 len var61004 - 4]
    mem[var61005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xe26ff34c00000000000000000000000000000000000000000000000000000000
    mem[100] = Mask(32, 224, var65003)
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var67003 len 4] with:
            gas gas_remaining wei
           args mem[var67003 + 4 len var67004 - 4]
    mem[var67005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var71002] <= 0:
        require ext_code.size(address(stor3))
        # nil
    else:
        mem[96] = 0xe26ff34c00000000000000000000000000000000000000000000000000000000
        mem[100] = Mask(32, 224, var73001)
        require ext_code.size(address(stor3))
        staticcall address(stor3).mem[var75003 len 4] with:
                gas gas_remaining wei
               args mem[var75003 + 4 len var75004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}

function calVtpAndMCRtp() payable {
    mem[64] = 96
    mem[96] = 0x255f504900000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var40003 len 4] with:
            gas gas_remaining wei
           args mem[var40003 + 4 len var40004 - 4]
    mem[var40005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var44003 >= mem[var44002]:
        require ext_code.size(address(stor2))
        staticcall address(stor2).0x69b0b737 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require eth.balance(address(stor2)) + var44007 >= var44007
        require ext_call.return_data[0] >= 0
        require ext_code.size(address(stor3))
        staticcall address(stor3).0xc94f740f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not ext_call.return_data[64]:
            return ext_call.return_data[0] + eth.balance(address(stor2)) + var44007, 0
        if not ext_call.return_data[0]:
            require ext_call.return_data[64] > 0
            if ext_call.return_data[64]:
                return ext_call.return_data[0] + eth.balance(address(stor2)) + var44007, 0 / ext_call.return_data[64]
        else:
            require (ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var44007 * ext_call.return_data[0]) / ext_call.return_data[0] == ext_call.return_data[0] + eth.balance(address(stor2)) + var44007
            require ext_call.return_data[64] > 0
            if ext_call.return_data[64]:
                return ext_call.return_data[0] + eth.balance(address(stor2)) + var44007, 
                       (ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var44007 * ext_call.return_data[0]) / ext_call.return_data[64]
        ('iszero', ('ext_call.return_data', 64, 32))
        revert
    mem[96] = 0x3c40b1f000000000000000000000000000000000000000000000000000000000
    mem[100] = var46001
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var48003 len 4] with:
            gas gas_remaining wei
           args mem[var48003 + 4 len var48004 - 4]
    mem[var48005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _515 = mem[var52002]
    mem[96] = 0xe3dee23900000000000000000000000000000000000000000000000000000000
    mem[100] = Mask(32, 224, _515)
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var54003 len 4] with:
            gas gas_remaining wei
           args mem[var54003 + 4 len var54004 - 4]
    mem[var54005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _788 = mem[var58002]
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = address(stor2)
    require ext_code.size(address(_788))
    staticcall var60002.mem[var60003 len 4] with:
            gas gas_remaining wei
           args mem[var60003 + 4 len var60004 - 4]
    mem[var60005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xe26ff34c00000000000000000000000000000000000000000000000000000000
    mem[100] = Mask(32, 224, var64003)
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var66003 len 4] with:
            gas gas_remaining wei
           args mem[var66003 + 4 len var66004 - 4]
    mem[var66005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var70002] <= 0:
        require ext_code.size(address(stor3))
        # nil
    else:
        mem[96] = 0xe26ff34c00000000000000000000000000000000000000000000000000000000
        mem[100] = Mask(32, 224, var72001)
        require ext_code.size(address(stor3))
        staticcall address(stor3).mem[var74003 len 4] with:
                gas gas_remaining wei
               args mem[var74003 + 4 len var74004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}

function calculateStepTokenPrice(bytes4 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(address(stor7))
        staticcall address(stor7).tokenExponent() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require 4 * ext_call.return_data[0] / ext_call.return_data[0] == 4
                require ext_code.size(address(stor3))
                staticcall address(stor3).0x1d668c64 with:
                        gas gas_remaining wei
                       args Mask(32, 224, arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 96
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).0xb775a49d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if ext_call.return_data[32]:
                            require 10^18 * ext_call.return_data[32] / ext_call.return_data[32] == 10^18
                            if ext_call.return_data[0]:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if 10^18 * ext_call.return_data[0]:
                                    require 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == arg2^ext_call.return_data[0]
                                    require 10^18 * ext_call.return_data[32] > 0
                                    require 10^18 * ext_call.return_data[32]
                                    require 10^(4 * ext_call.return_data[0]) > 0
                                    require 10^(4 * ext_call.return_data[0])
                                    if ext_call.return_data[0]:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        require (10^18 * ext_call.return_data[0] / 100000) + (10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                        if (10^18 * ext_call.return_data[0] / 100000) + (10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                        else:
                                            return 0
                                    else:
                                        require 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                        if 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                            require 10 * ext_call.return_data[64] * 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                            return (10 * ext_call.return_data[64] * 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                        else:
                                            return 0
                                else:
                                    require 10^18 * ext_call.return_data[32] > 0
                                    require 10^18 * ext_call.return_data[32]
                                    require 10^(4 * ext_call.return_data[0]) > 0
                                    require 10^(4 * ext_call.return_data[0])
                                    if ext_call.return_data[0]:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                        if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                        else:
                                            return 0
                                    else:
                                        require 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                        if 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                            require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                            return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                        else:
                                            return 0
                            else:
                                require 10^18 * ext_call.return_data[32] > 0
                                require 10^18 * ext_call.return_data[32]
                                require 10^(4 * ext_call.return_data[0]) > 0
                                require 10^(4 * ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                    if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                        require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                        return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                    else:
                                        return 0
                                else:
                                    require 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                        require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                        return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                    else:
                                        return 0
                        else:
                            require ext_call.return_data[0]
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            require 10^18 * ext_call.return_data[0]
                            require 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != arg2^ext_call.return_data[0]
                            revert
            else:
                require ext_code.size(address(stor3))
                staticcall address(stor3).0x1d668c64 with:
                        gas gas_remaining wei
                       args Mask(32, 224, arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 96
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).0xb775a49d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if ext_call.return_data[32]:
                            require 10^18 * ext_call.return_data[32] / ext_call.return_data[32] == 10^18
                            if ext_call.return_data[0]:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if 10^18 * ext_call.return_data[0]:
                                    require 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == arg2^ext_call.return_data[0]
                                    require 10^18 * ext_call.return_data[32] > 0
                                    require 10^18 * ext_call.return_data[32]
                                    if ext_call.return_data[0]:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        require (10^18 * ext_call.return_data[0] / 100000) + (10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]) >= 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]
                                        if (10^18 * ext_call.return_data[0] / 100000) + (10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]):
                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                        else:
                                            return 0
                                    else:
                                        require 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] >= 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]
                                        if 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]:
                                            require 10 * ext_call.return_data[64] * 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                            return (10 * ext_call.return_data[64] * 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 1000)
                                        else:
                                            return 0
                                else:
                                    require 10^18 * ext_call.return_data[32] > 0
                                    require 10^18 * ext_call.return_data[32]
                                    if ext_call.return_data[0]:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) >= 0 / 10^18 * ext_call.return_data[32]
                                        if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]):
                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                        else:
                                            return 0
                                    else:
                                        require 0 / 10^18 * ext_call.return_data[32] >= 0 / 10^18 * ext_call.return_data[32]
                                        if 0 / 10^18 * ext_call.return_data[32]:
                                            require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 0 / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                            return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 1000)
                                        else:
                                            return 0
                            else:
                                require 10^18 * ext_call.return_data[32] > 0
                                require 10^18 * ext_call.return_data[32]
                                if ext_call.return_data[0]:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) >= 0 / 10^18 * ext_call.return_data[32]
                                    if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]):
                                        require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                        return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                    else:
                                        return 0
                                else:
                                    require 0 / 10^18 * ext_call.return_data[32] >= 0 / 10^18 * ext_call.return_data[32]
                                    if 0 / 10^18 * ext_call.return_data[32]:
                                        require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 0 / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                        return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 1000)
                                    else:
                                        return 0
                        else:
                            require ext_call.return_data[0]
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            require 10^18 * ext_call.return_data[0]
                            require 10^18 * arg2^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != arg2^ext_call.return_data[0]
                            revert
}

function calculateTokenPrice(bytes4 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0x255f504900000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor3))
    staticcall address(stor3).mem[var41003 len 4] with:
            gas gas_remaining wei
           args mem[var41003 + 4 len var41004 - 4]
    mem[var41005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        if var45003 >= mem[var45002]:
            require ext_code.size(address(stor2))
            staticcall address(stor2).0x69b0b737 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require eth.balance(address(stor2)) + var45007 >= var45007
                require ext_call.return_data[0] >= 0
                require ext_code.size(address(stor3))
                staticcall address(stor3).0xc94f740f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 128
                    if not ext_call.return_data[64]:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).tokenExponent() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require 4 * ext_call.return_data[0] / ext_call.return_data[0] == 4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).0x1d668c64 with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0xb775a49d with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[32]:
                                            require 10^18 * ext_call.return_data[32] / ext_call.return_data[32] == 10^18
                                            if ext_call.return_data[0]:
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 0^ext_call.return_data[0]
                                                    require 10^18 * ext_call.return_data[32] > 0
                                                    require 10^18 * ext_call.return_data[32]
                                                    require 10^(4 * ext_call.return_data[0]) > 0
                                                    require 10^(4 * ext_call.return_data[0])
                                                    if ext_call.return_data[0]:
                                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                        require (10^18 * ext_call.return_data[0] / 100000) + (10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                        if (10^18 * ext_call.return_data[0] / 100000) + (10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                        else:
                                                            return 0
                                                    else:
                                                        require 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                        if 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                            require 10 * ext_call.return_data[64] * 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                            return (10 * ext_call.return_data[64] * 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                        else:
                                                            return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[32] > 0
                                                    require 10^18 * ext_call.return_data[32]
                                                    require 10^(4 * ext_call.return_data[0]) > 0
                                                    require 10^(4 * ext_call.return_data[0])
                                                    if ext_call.return_data[0]:
                                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                        require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                        if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                        else:
                                                            return 0
                                                    else:
                                                        require 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                            require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                            return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                        else:
                                                            return 0
                                            else:
                                                require 10^18 * ext_call.return_data[32] > 0
                                                require 10^18 * ext_call.return_data[32]
                                                require 10^(4 * ext_call.return_data[0]) > 0
                                                require 10^(4 * ext_call.return_data[0])
                                                if ext_call.return_data[0]:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                    if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                        require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                        return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                    else:
                                                        return 0
                                                else:
                                                    require 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                    if 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                        require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                        return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                    else:
                                                        return 0
                                        else:
                                            require ext_call.return_data[0]
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            require 10^18 * ext_call.return_data[0]
                                            require 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 0^ext_call.return_data[0]
                                            revert
                            else:
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).0x1d668c64 with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0xb775a49d with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[32]:
                                            require 10^18 * ext_call.return_data[32] / ext_call.return_data[32] == 10^18
                                            if ext_call.return_data[0]:
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 0^ext_call.return_data[0]
                                                    require 10^18 * ext_call.return_data[32] > 0
                                                    require 10^18 * ext_call.return_data[32]
                                                    if ext_call.return_data[0]:
                                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                        require (10^18 * ext_call.return_data[0] / 100000) + (10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]) >= 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]
                                                        if (10^18 * ext_call.return_data[0] / 100000) + (10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]):
                                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                        else:
                                                            return 0
                                                    else:
                                                        require 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] >= 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]
                                                        if 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]:
                                                            require 10 * ext_call.return_data[64] * 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                            return (10 * ext_call.return_data[64] * 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 1000)
                                                        else:
                                                            return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[32] > 0
                                                    require 10^18 * ext_call.return_data[32]
                                                    if ext_call.return_data[0]:
                                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                        require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) >= 0 / 10^18 * ext_call.return_data[32]
                                                        if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]):
                                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                        else:
                                                            return 0
                                                    else:
                                                        require 0 / 10^18 * ext_call.return_data[32] >= 0 / 10^18 * ext_call.return_data[32]
                                                        if 0 / 10^18 * ext_call.return_data[32]:
                                                            require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 0 / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                            return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 1000)
                                                        else:
                                                            return 0
                                            else:
                                                require 10^18 * ext_call.return_data[32] > 0
                                                require 10^18 * ext_call.return_data[32]
                                                if ext_call.return_data[0]:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) >= 0 / 10^18 * ext_call.return_data[32]
                                                    if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]):
                                                        require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                        return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                    else:
                                                        return 0
                                                else:
                                                    require 0 / 10^18 * ext_call.return_data[32] >= 0 / 10^18 * ext_call.return_data[32]
                                                    if 0 / 10^18 * ext_call.return_data[32]:
                                                        require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 0 / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                        return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 1000)
                                                    else:
                                                        return 0
                                        else:
                                            require ext_call.return_data[0]
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            require 10^18 * ext_call.return_data[0]
                                            require 10^18 * 0^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 0^ext_call.return_data[0]
                                            revert
                    else:
                        if ext_call.return_data[0]:
                            require (ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[0] == ext_call.return_data[0] + eth.balance(address(stor2)) + var45007
                            require ext_call.return_data[64] > 0
                            require ext_call.return_data[64]
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).tokenExponent() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require 4 * ext_call.return_data[0] / ext_call.return_data[0] == 4
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x1d668c64 with:
                                            gas gas_remaining wei
                                           args Mask(32, 224, arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0xb775a49d with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[32]:
                                                require 10^18 * ext_call.return_data[32] / ext_call.return_data[32] == 10^18
                                                if ext_call.return_data[0]:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0]
                                                        require 10^18 * ext_call.return_data[32] > 0
                                                        require 10^18 * ext_call.return_data[32]
                                                        require 10^(4 * ext_call.return_data[0]) > 0
                                                        require 10^(4 * ext_call.return_data[0])
                                                        if ext_call.return_data[0]:
                                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                            require (10^18 * ext_call.return_data[0] / 100000) + (10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                            if (10^18 * ext_call.return_data[0] / 100000) + (10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                                require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                                return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                            else:
                                                                return 0
                                                        else:
                                                            require 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                            if 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                                require 10 * ext_call.return_data[64] * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                                return (10 * ext_call.return_data[64] * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                            else:
                                                                return 0
                                                    else:
                                                        require 10^18 * ext_call.return_data[32] > 0
                                                        require 10^18 * ext_call.return_data[32]
                                                        require 10^(4 * ext_call.return_data[0]) > 0
                                                        require 10^(4 * ext_call.return_data[0])
                                                        if ext_call.return_data[0]:
                                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                            require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                            if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                                require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                                return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                            else:
                                                                return 0
                                                        else:
                                                            require 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                                require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                                return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                            else:
                                                                return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[32] > 0
                                                    require 10^18 * ext_call.return_data[32]
                                                    require 10^(4 * ext_call.return_data[0]) > 0
                                                    require 10^(4 * ext_call.return_data[0])
                                                    if ext_call.return_data[0]:
                                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                        require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                        if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                        else:
                                                            return 0
                                                    else:
                                                        require 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                            require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                            return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                        else:
                                                            return 0
                                            else:
                                                require ext_call.return_data[0]
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                require 10^18 * ext_call.return_data[0]
                                                require 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0]
                                                revert
                                else:
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x1d668c64 with:
                                            gas gas_remaining wei
                                           args Mask(32, 224, arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0xb775a49d with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[32]:
                                                require 10^18 * ext_call.return_data[32] / ext_call.return_data[32] == 10^18
                                                if ext_call.return_data[0]:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0]
                                                        require 10^18 * ext_call.return_data[32] > 0
                                                        require 10^18 * ext_call.return_data[32]
                                                        if ext_call.return_data[0]:
                                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                            require (10^18 * ext_call.return_data[0] / 100000) + (10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]) >= 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]
                                                            if (10^18 * ext_call.return_data[0] / 100000) + (10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]):
                                                                require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                                return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                            else:
                                                                return 0
                                                        else:
                                                            require 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] >= 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]
                                                            if 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]:
                                                                require 10 * ext_call.return_data[64] * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                                return (10 * ext_call.return_data[64] * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 1000)
                                                            else:
                                                                return 0
                                                    else:
                                                        require 10^18 * ext_call.return_data[32] > 0
                                                        require 10^18 * ext_call.return_data[32]
                                                        if ext_call.return_data[0]:
                                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                            require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) >= 0 / 10^18 * ext_call.return_data[32]
                                                            if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]):
                                                                require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                                return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                            else:
                                                                return 0
                                                        else:
                                                            require 0 / 10^18 * ext_call.return_data[32] >= 0 / 10^18 * ext_call.return_data[32]
                                                            if 0 / 10^18 * ext_call.return_data[32]:
                                                                require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 0 / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                                return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 1000)
                                                            else:
                                                                return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[32] > 0
                                                    require 10^18 * ext_call.return_data[32]
                                                    if ext_call.return_data[0]:
                                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                        require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) >= 0 / 10^18 * ext_call.return_data[32]
                                                        if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]):
                                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                        else:
                                                            return 0
                                                    else:
                                                        require 0 / 10^18 * ext_call.return_data[32] >= 0 / 10^18 * ext_call.return_data[32]
                                                        if 0 / 10^18 * ext_call.return_data[32]:
                                                            require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 0 / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                            return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 1000)
                                                        else:
                                                            return 0
                                            else:
                                                require ext_call.return_data[0]
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                require 10^18 * ext_call.return_data[0]
                                                require 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != ((ext_call.return_data[0] * ext_call.return_data[0]) + (eth.balance(address(stor2)) * ext_call.return_data[0]) + (var45007 * ext_call.return_data[0]) / ext_call.return_data[64])^ext_call.return_data[0]
                                                revert
                        else:
                            require ext_call.return_data[64] > 0
                            require ext_call.return_data[64]
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).tokenExponent() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require 4 * ext_call.return_data[0] / ext_call.return_data[0] == 4
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x1d668c64 with:
                                            gas gas_remaining wei
                                           args Mask(32, 224, arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0xb775a49d with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[32]:
                                                require 10^18 * ext_call.return_data[32] / ext_call.return_data[32] == 10^18
                                                if ext_call.return_data[0]:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == (0 / ext_call.return_data[64])^ext_call.return_data[0]
                                                        require 10^18 * ext_call.return_data[32] > 0
                                                        require 10^18 * ext_call.return_data[32]
                                                        require 10^(4 * ext_call.return_data[0]) > 0
                                                        require 10^(4 * ext_call.return_data[0])
                                                        if ext_call.return_data[0]:
                                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                            require (10^18 * ext_call.return_data[0] / 100000) + (10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                            if (10^18 * ext_call.return_data[0] / 100000) + (10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                                require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                                return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                            else:
                                                                return 0
                                                        else:
                                                            require 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                            if 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                                require 10 * ext_call.return_data[64] * 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                                return (10 * ext_call.return_data[64] * 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                            else:
                                                                return 0
                                                    else:
                                                        require 10^18 * ext_call.return_data[32] > 0
                                                        require 10^18 * ext_call.return_data[32]
                                                        require 10^(4 * ext_call.return_data[0]) > 0
                                                        require 10^(4 * ext_call.return_data[0])
                                                        if ext_call.return_data[0]:
                                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                            require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                            if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                                require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                                return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                            else:
                                                                return 0
                                                        else:
                                                            require 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                            if 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                                require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                                return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                            else:
                                                                return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[32] > 0
                                                    require 10^18 * ext_call.return_data[32]
                                                    require 10^(4 * ext_call.return_data[0]) > 0
                                                    require 10^(4 * ext_call.return_data[0])
                                                    if ext_call.return_data[0]:
                                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                        require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                        if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])):
                                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])) == 10 * ext_call.return_data[64]
                                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) * ext_call.return_data[64]) / 1000)
                                                        else:
                                                            return 0
                                                    else:
                                                        require 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) >= 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0])
                                                        if 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]):
                                                            require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) == 10 * ext_call.return_data[64]
                                                            return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 10^(4 * ext_call.return_data[0]) / 1000)
                                                        else:
                                                            return 0
                                            else:
                                                require ext_call.return_data[0]
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                require 10^18 * ext_call.return_data[0]
                                                require 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != (0 / ext_call.return_data[64])^ext_call.return_data[0]
                                                revert
                                else:
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x1d668c64 with:
                                            gas gas_remaining wei
                                           args Mask(32, 224, arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0xb775a49d with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[32]:
                                                require 10^18 * ext_call.return_data[32] / ext_call.return_data[32] == 10^18
                                                if ext_call.return_data[0]:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == (0 / ext_call.return_data[64])^ext_call.return_data[0]
                                                        require 10^18 * ext_call.return_data[32] > 0
                                                        require 10^18 * ext_call.return_data[32]
                                                        if ext_call.return_data[0]:
                                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                            require (10^18 * ext_call.return_data[0] / 100000) + (10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]) >= 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]
                                                            if (10^18 * ext_call.return_data[0] / 100000) + (10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]):
                                                                require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                                return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                            else:
                                                                return 0
                                                        else:
                                                            require 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] >= 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]
                                                            if 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32]:
                                                                require 10 * ext_call.return_data[64] * 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                                return (10 * ext_call.return_data[64] * 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / 1000)
                                                            else:
                                                                return 0
                                                    else:
                                                        require 10^18 * ext_call.return_data[32] > 0
                                                        require 10^18 * ext_call.return_data[32]
                                                        if ext_call.return_data[0]:
                                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                            require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) >= 0 / 10^18 * ext_call.return_data[32]
                                                            if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]):
                                                                require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                                return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                            else:
                                                                return 0
                                                        else:
                                                            require 0 / 10^18 * ext_call.return_data[32] >= 0 / 10^18 * ext_call.return_data[32]
                                                            if 0 / 10^18 * ext_call.return_data[32]:
                                                                require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 0 / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                                return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 1000)
                                                            else:
                                                                return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[32] > 0
                                                    require 10^18 * ext_call.return_data[32]
                                                    if ext_call.return_data[0]:
                                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                        require (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) >= 0 / 10^18 * ext_call.return_data[32]
                                                        if (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]):
                                                            require (10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / (10^18 * ext_call.return_data[0] / 100000) + (0 / 10^18 * ext_call.return_data[32]) == 10 * ext_call.return_data[64]
                                                            return ((10 * 10^18 * ext_call.return_data[0] / 100000 * ext_call.return_data[64]) + (10 * 0 / 10^18 * ext_call.return_data[32] * ext_call.return_data[64]) / 1000)
                                                        else:
                                                            return 0
                                                    else:
                                                        require 0 / 10^18 * ext_call.return_data[32] >= 0 / 10^18 * ext_call.return_data[32]
                                                        if 0 / 10^18 * ext_call.return_data[32]:
                                                            require 10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 0 / 10^18 * ext_call.return_data[32] == 10 * ext_call.return_data[64]
                                                            return (10 * ext_call.return_data[64] * 0 / 10^18 * ext_call.return_data[32] / 1000)
                                                        else:
                                                            return 0
                                            else:
                                                require ext_call.return_data[0]
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                require 10^18 * ext_call.return_data[0]
                                                require 10^18 * (0 / ext_call.return_data[64])^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != (0 / ext_call.return_data[64])^ext_call.return_data[0]
                                                revert
        else:
            mem[96] = 0x3c40b1f000000000000000000000000000000000000000000000000000000000
            mem[100] = var47001
            require ext_code.size(address(stor3))
            staticcall address(stor3).mem[var49003 len 4] with:
                    gas gas_remaining wei
                   args mem[var49003 + 4 len var49004 - 4]
            mem[var49005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                _4085 = mem[var53002]
                mem[96] = 0xe3dee23900000000000000000000000000000000000000000000000000000000
                mem[100] = Mask(32, 224, _4085)
                require ext_code.size(address(stor3))
                staticcall address(stor3).mem[var55003 len 4] with:
                        gas gas_remaining wei
                       args mem[var55003 + 4 len var55004 - 4]
                mem[var55005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    _6248 = mem[var59002]
                    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor2)
                    require ext_code.size(address(_6248))
                    staticcall var61002.mem[var61003 len 4] with:
                            gas gas_remaining wei
                           args mem[var61003 + 4 len var61004 - 4]
                    mem[var61005] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        mem[96] = 0xe26ff34c00000000000000000000000000000000000000000000000000000000
                        mem[100] = Mask(32, 224, var65003)
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).mem[var67003 len 4] with:
                                gas gas_remaining wei
                               args mem[var67003 + 4 len var67004 - 4]
                        mem[var67005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if mem[var71002] <= 0:
                                require ext_code.size(address(stor3))
                                # nil
                            else:
                                mem[96] = 0xe26ff34c00000000000000000000000000000000000000000000000000000000
                                mem[100] = Mask(32, 224, var73001)
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).mem[var75003 len 4] with:
                                        gas gas_remaining wei
                                       args mem[var75003 + 4 len var75004 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    # nil
}

function getThresholdValues(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not arg4:
        require variableMincap >= 0
        if arg1 < arg2:
            if not arg2:
                require variableMincap > 0
                if variableMincap:
                    if not arg1:
                        return 0, 0 / variableMincap
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).0xd3fdadf7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not variableMincap:
                            return 0, 0 / variableMincap
                        require 11 * variableMincap / variableMincap == 11
                        if 0 >= 11 * variableMincap / 10:
                            return 0, 0 / variableMincap
                        if not variableMincap:
                            return 0, 0 / variableMincap
                        require 11 * variableMincap / variableMincap == 11
                        if not 11 * variableMincap / 10:
                            return 0, 0 / variableMincap
                        if not arg1:
                            require 11 * variableMincap / 10 > 0
                            if 11 * variableMincap / 10:
                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                        else:
                            require 100 * arg1 / arg1 == 100
                            if not 100 * arg1:
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                            else:
                                require 10000 * arg1 / 100 * arg1 == 100
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                    else:
                        require 10^18 * arg3 / arg3 == 10^18
                        if not 10^18 * arg3:
                            if not variableMincap:
                                return 0, 0 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if 0 >= 11 * variableMincap / 10:
                                return 0, 0 / variableMincap
                            if not variableMincap:
                                return 0, 0 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if not 11 * variableMincap / 10:
                                return 0, 0 / variableMincap
                            if not arg1:
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                            ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                        else:
                            require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                            if not variableMincap:
                                if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                    if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                        return 0, 0 / variableMincap
                                    if not arg1:
                                        require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                        if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                else:
                                    if not variableMincap:
                                        return 0, 0 / variableMincap
                                    require 11 * variableMincap / variableMincap == 11
                                    if not 11 * variableMincap / 10:
                                        return 0, 0 / variableMincap
                                    if not arg1:
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                    ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                            else:
                                require 11 * variableMincap / variableMincap == 11
                                if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 11 * variableMincap / 10:
                                    if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                        return 0, 0 / variableMincap
                                    if not arg1:
                                        require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                        if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                else:
                                    if not variableMincap:
                                        return 0, 0 / variableMincap
                                    require 11 * variableMincap / variableMincap == 11
                                    if not 11 * variableMincap / 10:
                                        return 0, 0 / variableMincap
                                    if not arg1:
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                    ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
            else:
                require 120 * arg2 / arg2 == 120
                if not 120 * arg2:
                    require variableMincap > 0
                    if variableMincap:
                        if not arg1:
                            return 0, 0 / variableMincap
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).0xd3fdadf7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not variableMincap:
                                return 0, 0 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if 0 >= 11 * variableMincap / 10:
                                return 0, 0 / variableMincap
                            if not variableMincap:
                                return 0, 0 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if not 11 * variableMincap / 10:
                                return 0, 0 / variableMincap
                            if not arg1:
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                            ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                        else:
                            require 10^18 * arg3 / arg3 == 10^18
                            if not 10^18 * arg3:
                                if not variableMincap:
                                    return 0, 0 / variableMincap
                                require 11 * variableMincap / variableMincap == 11
                                if 0 >= 11 * variableMincap / 10:
                                    return 0, 0 / variableMincap
                                if not variableMincap:
                                    return 0, 0 / variableMincap
                                require 11 * variableMincap / variableMincap == 11
                                if not 11 * variableMincap / 10:
                                    return 0, 0 / variableMincap
                                if not arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                else:
                                    require 100 * arg1 / arg1 == 100
                                    if not 100 * arg1:
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                    else:
                                        require 10000 * arg1 / 100 * arg1 == 100
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                            else:
                                require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                                if not variableMincap:
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 0 / variableMincap
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap:
                                            return 0, 0 / variableMincap
                                        require 11 * variableMincap / variableMincap == 11
                                        if not 11 * variableMincap / 10:
                                            return 0, 0 / variableMincap
                                        if not arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                                else:
                                    require 11 * variableMincap / variableMincap == 11
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 11 * variableMincap / 10:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 0 / variableMincap
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap:
                                            return 0, 0 / variableMincap
                                        require 11 * variableMincap / variableMincap == 11
                                        if not 11 * variableMincap / 10:
                                            return 0, 0 / variableMincap
                                        if not arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                else:
                    require 12000 * arg2 / 120 * arg2 == 100
                    require variableMincap > 0
                    if variableMincap:
                        if not arg1:
                            return 0, 12000 * arg2 / variableMincap
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).0xd3fdadf7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not variableMincap:
                                return 0, 12000 * arg2 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if 0 >= 11 * variableMincap / 10:
                                return 0, 12000 * arg2 / variableMincap
                            if not variableMincap:
                                return 0, 12000 * arg2 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if not 11 * variableMincap / 10:
                                return 0, 12000 * arg2 / variableMincap
                            if not arg1:
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 0 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 10000 * arg1 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                            ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                        else:
                            require 10^18 * arg3 / arg3 == 10^18
                            if not 10^18 * arg3:
                                if not variableMincap:
                                    return 0, 12000 * arg2 / variableMincap
                                require 11 * variableMincap / variableMincap == 11
                                if 0 >= 11 * variableMincap / 10:
                                    return 0, 12000 * arg2 / variableMincap
                                if not variableMincap:
                                    return 0, 12000 * arg2 / variableMincap
                                require 11 * variableMincap / variableMincap == 11
                                if not 11 * variableMincap / 10:
                                    return 0, 12000 * arg2 / variableMincap
                                if not arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                else:
                                    require 100 * arg1 / arg1 == 100
                                    if not 100 * arg1:
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 0 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                    else:
                                        require 10000 * arg1 / 100 * arg1 == 100
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 10000 * arg1 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                            else:
                                require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                                if not variableMincap:
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 12000 * arg2 / variableMincap
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap:
                                            return 0, 12000 * arg2 / variableMincap
                                        require 11 * variableMincap / variableMincap == 11
                                        if not 11 * variableMincap / 10:
                                            return 0, 12000 * arg2 / variableMincap
                                        if not arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 0 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 10000 * arg1 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                                else:
                                    require 11 * variableMincap / variableMincap == 11
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 11 * variableMincap / 10:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 12000 * arg2 / variableMincap
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap:
                                            return 0, 12000 * arg2 / variableMincap
                                        require 11 * variableMincap / variableMincap == 11
                                        if not 11 * variableMincap / 10:
                                            return 0, 12000 * arg2 / variableMincap
                                        if not arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 0 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 10000 * arg1 / 11 * variableMincap / 10, 12000 * arg2 / variableMincap
                                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
        else:
            if not arg1:
                require variableMincap > 0
                if variableMincap:
                    if not arg1:
                        return 0, 0 / variableMincap
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).0xd3fdadf7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not variableMincap:
                            return 0, 0 / variableMincap
                        require 11 * variableMincap / variableMincap == 11
                        if 0 >= 11 * variableMincap / 10:
                            return 0, 0 / variableMincap
                        if not variableMincap:
                            return 0, 0 / variableMincap
                        require 11 * variableMincap / variableMincap == 11
                        if not 11 * variableMincap / 10:
                            return 0, 0 / variableMincap
                        if not arg1:
                            require 11 * variableMincap / 10 > 0
                            if 11 * variableMincap / 10:
                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                        else:
                            require 100 * arg1 / arg1 == 100
                            if not 100 * arg1:
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                            else:
                                require 10000 * arg1 / 100 * arg1 == 100
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                    else:
                        require 10^18 * arg3 / arg3 == 10^18
                        if not 10^18 * arg3:
                            if not variableMincap:
                                return 0, 0 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if 0 >= 11 * variableMincap / 10:
                                return 0, 0 / variableMincap
                            if not variableMincap:
                                return 0, 0 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if not 11 * variableMincap / 10:
                                return 0, 0 / variableMincap
                            if not arg1:
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                            ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                        else:
                            require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                            if not variableMincap:
                                if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                    if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                        return 0, 0 / variableMincap
                                    if not arg1:
                                        require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                        if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                else:
                                    if not variableMincap:
                                        return 0, 0 / variableMincap
                                    require 11 * variableMincap / variableMincap == 11
                                    if not 11 * variableMincap / 10:
                                        return 0, 0 / variableMincap
                                    if not arg1:
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                    ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                            else:
                                require 11 * variableMincap / variableMincap == 11
                                if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 11 * variableMincap / 10:
                                    if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                        return 0, 0 / variableMincap
                                    if not arg1:
                                        require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                        if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                else:
                                    if not variableMincap:
                                        return 0, 0 / variableMincap
                                    require 11 * variableMincap / variableMincap == 11
                                    if not 11 * variableMincap / 10:
                                        return 0, 0 / variableMincap
                                    if not arg1:
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                    ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
            else:
                require 120 * arg1 / arg1 == 120
                if not 120 * arg1:
                    require variableMincap > 0
                    if variableMincap:
                        if not arg1:
                            return 0, 0 / variableMincap
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).0xd3fdadf7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not variableMincap:
                                return 0, 0 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if 0 >= 11 * variableMincap / 10:
                                return 0, 0 / variableMincap
                            if not variableMincap:
                                return 0, 0 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if not 11 * variableMincap / 10:
                                return 0, 0 / variableMincap
                            if not arg1:
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                            ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                        else:
                            require 10^18 * arg3 / arg3 == 10^18
                            if not 10^18 * arg3:
                                if not variableMincap:
                                    return 0, 0 / variableMincap
                                require 11 * variableMincap / variableMincap == 11
                                if 0 >= 11 * variableMincap / 10:
                                    return 0, 0 / variableMincap
                                if not variableMincap:
                                    return 0, 0 / variableMincap
                                require 11 * variableMincap / variableMincap == 11
                                if not 11 * variableMincap / 10:
                                    return 0, 0 / variableMincap
                                if not arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                else:
                                    require 100 * arg1 / arg1 == 100
                                    if not 100 * arg1:
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                    else:
                                        require 10000 * arg1 / 100 * arg1 == 100
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                            else:
                                require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                                if not variableMincap:
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 0 / variableMincap
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap:
                                            return 0, 0 / variableMincap
                                        require 11 * variableMincap / variableMincap == 11
                                        if not 11 * variableMincap / 10:
                                            return 0, 0 / variableMincap
                                        if not arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                                else:
                                    require 11 * variableMincap / variableMincap == 11
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 11 * variableMincap / 10:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 0 / variableMincap
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap:
                                            return 0, 0 / variableMincap
                                        require 11 * variableMincap / variableMincap == 11
                                        if not 11 * variableMincap / 10:
                                            return 0, 0 / variableMincap
                                        if not arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 0 / 11 * variableMincap / 10, 0 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 10000 * arg1 / 11 * variableMincap / 10, 0 / variableMincap
                                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                else:
                    require 12000 * arg1 / 120 * arg1 == 100
                    require variableMincap > 0
                    if variableMincap:
                        if not arg1:
                            return 0, 12000 * arg1 / variableMincap
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).0xd3fdadf7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not variableMincap:
                                return 0, 12000 * arg1 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if 0 >= 11 * variableMincap / 10:
                                return 0, 12000 * arg1 / variableMincap
                            if not variableMincap:
                                return 0, 12000 * arg1 / variableMincap
                            require 11 * variableMincap / variableMincap == 11
                            if not 11 * variableMincap / 10:
                                return 0, 12000 * arg1 / variableMincap
                            if not arg1:
                                require 11 * variableMincap / 10 > 0
                                if 11 * variableMincap / 10:
                                    return 0 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 10000 * arg1 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                            ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                        else:
                            require 10^18 * arg3 / arg3 == 10^18
                            if not 10^18 * arg3:
                                if not variableMincap:
                                    return 0, 12000 * arg1 / variableMincap
                                require 11 * variableMincap / variableMincap == 11
                                if 0 >= 11 * variableMincap / 10:
                                    return 0, 12000 * arg1 / variableMincap
                                if not variableMincap:
                                    return 0, 12000 * arg1 / variableMincap
                                require 11 * variableMincap / variableMincap == 11
                                if not 11 * variableMincap / 10:
                                    return 0, 12000 * arg1 / variableMincap
                                if not arg1:
                                    require 11 * variableMincap / 10 > 0
                                    if 11 * variableMincap / 10:
                                        return 0 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                else:
                                    require 100 * arg1 / arg1 == 100
                                    if not 100 * arg1:
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 0 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                    else:
                                        require 10000 * arg1 / 100 * arg1 == 100
                                        require 11 * variableMincap / 10 > 0
                                        if 11 * variableMincap / 10:
                                            return 10000 * arg1 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                            else:
                                require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                                if not variableMincap:
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 12000 * arg1 / variableMincap
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap:
                                            return 0, 12000 * arg1 / variableMincap
                                        require 11 * variableMincap / variableMincap == 11
                                        if not 11 * variableMincap / 10:
                                            return 0, 12000 * arg1 / variableMincap
                                        if not arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 0 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 10000 * arg1 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
                                else:
                                    require 11 * variableMincap / variableMincap == 11
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 11 * variableMincap / 10:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 12000 * arg1 / variableMincap
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap:
                                            return 0, 12000 * arg1 / variableMincap
                                        require 11 * variableMincap / variableMincap == 11
                                        if not 11 * variableMincap / 10:
                                            return 0, 12000 * arg1 / variableMincap
                                        if not arg1:
                                            require 11 * variableMincap / 10 > 0
                                            if 11 * variableMincap / 10:
                                                return 0 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 0 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 11 * variableMincap / 10 > 0
                                                if 11 * variableMincap / 10:
                                                    return 10000 * arg1 / 11 * variableMincap / 10, 12000 * arg1 / variableMincap
                                        ('iszero', ('div', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), 10))
    else:
        require 1000 * 10^18 * arg4 / arg4 == 1000 * 10^18
        require variableMincap + (1000 * 10^18 * arg4) >= 1000 * 10^18 * arg4
        if arg1 < arg2:
            if not arg2:
                require variableMincap + (1000 * 10^18 * arg4) > 0
                if variableMincap + (1000 * 10^18 * arg4):
                    if not arg1:
                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).0xd3fdadf7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not variableMincap + (1000 * 10^18 * arg4):
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                        if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        if not variableMincap + (1000 * 10^18 * arg4):
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        if not arg1:
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                        else:
                            require 100 * arg1 / arg1 == 100
                            if not 100 * arg1:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            else:
                                require 10000 * arg1 / 100 * arg1 == 100
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                    else:
                        require 10^18 * arg3 / arg3 == 10^18
                        if not 10^18 * arg3:
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            if not arg1:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                        else:
                            require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                            if not variableMincap + (1000 * 10^18 * arg4):
                                if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                    if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    if not arg1:
                                        require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                        if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                else:
                                    if not variableMincap + (1000 * 10^18 * arg4):
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                    if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    if not arg1:
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                            else:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if 10^18 * ext_call.return_data[0] * arg3 / 100 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    if not arg1:
                                        require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                        if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                else:
                                    if not variableMincap + (1000 * 10^18 * arg4):
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                    if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    if not arg1:
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
            else:
                require 120 * arg2 / arg2 == 120
                if not 120 * arg2:
                    require variableMincap + (1000 * 10^18 * arg4) > 0
                    if variableMincap + (1000 * 10^18 * arg4):
                        if not arg1:
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).0xd3fdadf7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            if not arg1:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                        else:
                            require 10^18 * arg3 / arg3 == 10^18
                            if not 10^18 * arg3:
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                if not arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 100 * arg1 / arg1 == 100
                                    if not 100 * arg1:
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 10000 * arg1 / 100 * arg1 == 100
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                            else:
                                require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap + (1000 * 10^18 * arg4):
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                                else:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap + (1000 * 10^18 * arg4):
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                else:
                    require 12000 * arg2 / 120 * arg2 == 100
                    require variableMincap + (1000 * 10^18 * arg4) > 0
                    if variableMincap + (1000 * 10^18 * arg4):
                        if not arg1:
                            return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).0xd3fdadf7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                            if not arg1:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 
                                               12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                            ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                        else:
                            require 10^18 * arg3 / arg3 == 10^18
                            if not 10^18 * arg3:
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                if not arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 100 * arg1 / arg1 == 100
                                    if not 100 * arg1:
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 10000 * arg1 / 100 * arg1 == 100
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 
                                                   12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                            else:
                                require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap + (1000 * 10^18 * arg4):
                                            return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 
                                                           12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                                else:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap + (1000 * 10^18 * arg4):
                                            return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 
                                                           12000 * arg2 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
        else:
            if not arg1:
                require variableMincap + (1000 * 10^18 * arg4) > 0
                if variableMincap + (1000 * 10^18 * arg4):
                    if not arg1:
                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).0xd3fdadf7 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not variableMincap + (1000 * 10^18 * arg4):
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                        if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        if not variableMincap + (1000 * 10^18 * arg4):
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        if not arg1:
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                        else:
                            require 100 * arg1 / arg1 == 100
                            if not 100 * arg1:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            else:
                                require 10000 * arg1 / 100 * arg1 == 100
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                    else:
                        require 10^18 * arg3 / arg3 == 10^18
                        if not 10^18 * arg3:
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            if not arg1:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                        else:
                            require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                            if not variableMincap + (1000 * 10^18 * arg4):
                                if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                    if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    if not arg1:
                                        require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                        if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                else:
                                    if not variableMincap + (1000 * 10^18 * arg4):
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                    if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    if not arg1:
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                            else:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if 10^18 * ext_call.return_data[0] * arg3 / 100 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    if not arg1:
                                        require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                        if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                else:
                                    if not variableMincap + (1000 * 10^18 * arg4):
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                    if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    if not arg1:
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 100 * arg1 / arg1 == 100
                                        if not 100 * arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 10000 * arg1 / 100 * arg1 == 100
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
            else:
                require 120 * arg1 / arg1 == 120
                if not 120 * arg1:
                    require variableMincap + (1000 * 10^18 * arg4) > 0
                    if variableMincap + (1000 * 10^18 * arg4):
                        if not arg1:
                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).0xd3fdadf7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                            if not arg1:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                            ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                        else:
                            require 10^18 * arg3 / arg3 == 10^18
                            if not 10^18 * arg3:
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                if not arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 100 * arg1 / arg1 == 100
                                    if not 100 * arg1:
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 10000 * arg1 / 100 * arg1 == 100
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                            else:
                                require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap + (1000 * 10^18 * arg4):
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                                else:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap + (1000 * 10^18 * arg4):
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 0 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                else:
                    require 12000 * arg1 / 120 * arg1 == 100
                    require variableMincap + (1000 * 10^18 * arg4) > 0
                    if variableMincap + (1000 * 10^18 * arg4):
                        if not arg1:
                            return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).0xd3fdadf7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                            if not variableMincap + (1000 * 10^18 * arg4):
                                return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                            if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                            if not arg1:
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                            else:
                                require 100 * arg1 / arg1 == 100
                                if not 100 * arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 10000 * arg1 / 100 * arg1 == 100
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 
                                               12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                            ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                        else:
                            require 10^18 * arg3 / arg3 == 10^18
                            if not 10^18 * arg3:
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if 0 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                    return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                if not arg1:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                    if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                else:
                                    require 100 * arg1 / arg1 == 100
                                    if not 100 * arg1:
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                    else:
                                        require 10000 * arg1 / 100 * arg1 == 100
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                        if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 
                                                   12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                            else:
                                require 10^18 * ext_call.return_data[0] * arg3 / 10^18 * arg3 == ext_call.return_data[0]
                                if not variableMincap + (1000 * 10^18 * arg4):
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= 0:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap + (1000 * 10^18 * arg4):
                                            return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 
                                                           12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
                                else:
                                    require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                    if 10^18 * ext_call.return_data[0] * arg3 / 100 >= (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                        if not 10^18 * ext_call.return_data[0] * arg3 / 100:
                                            return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                            if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 0 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require 10^18 * ext_call.return_data[0] * arg3 / 100 > 0
                                                if 10^18 * ext_call.return_data[0] * arg3 / 100:
                                                    return 10000 * arg1 / 10^18 * ext_call.return_data[0] * arg3 / 100, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32), ('param', 'arg3')), 100))
                                    else:
                                        if not variableMincap + (1000 * 10^18 * arg4):
                                            return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        require (11 * variableMincap) + (11000 * 10^18 * arg4) / variableMincap + (1000 * 10^18 * arg4) == 11
                                        if not (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                            return 0, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        if not arg1:
                                            require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                            if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        else:
                                            require 100 * arg1 / arg1 == 100
                                            if not 100 * arg1:
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 0 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                            else:
                                                require 10000 * arg1 / 100 * arg1 == 100
                                                require (11 * variableMincap) + (11000 * 10^18 * arg4) / 10 > 0
                                                if (11 * variableMincap) + (11000 * 10^18 * arg4) / 10:
                                                    return 10000 * arg1 / (11 * variableMincap) + (11000 * 10^18 * arg4) / 10, 
                                                           12000 * arg1 / variableMincap + (1000 * 10^18 * arg4)
                                        ('iszero', ('div', ('add', ('mul', 11, ('stor', ('name', 'variableMincap', 9))), ('mul', 11000000000000000000000, ('param', 'arg4'))), 10))
    revert
}



}
