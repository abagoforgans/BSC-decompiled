contract main {




// =====================  Runtime code  =====================


address owner;
uint256 version;
address DGASAddress;
address PLATFORMAddress;
address WETHAddress;
address FACTORYAddress;

function FACTORY() payable {
    return FACTORYAddress
}

function version() payable {
    return version
}

function DGAS() payable {
    return DGASAddress
}

function PLATFORM() payable {
    return PLATFORMAddress
}

function owner() payable {
    return owner
}

function WETH() payable {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function updateDGASImpl(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    require ext_code.size(DGASAddress)
    call DGASAddress.upgradeImpl(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x5944454d4158205452414e53464552204c495354454e4552203a20494e5055542041444452455353204953205a4552,
                    mem[211 len 17]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x5944454d4158205452414e53464552204c495354454e4552203a20494e5055542041444452455353204953205a4552,
                    mem[211 len 17]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x5944454d4158205452414e53464552204c495354454e4552203a20494e5055542041444452455353204953205a4552,
                    mem[211 len 17]
    if not arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x5944454d4158205452414e53464552204c495354454e4552203a20494e5055542041444452455353204953205a4552,
                    mem[211 len 17]
    DGASAddress = arg1
    FACTORYAddress = arg2
    WETHAddress = arg3
    PLATFORMAddress = arg4
}

function transferNotify(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if PLATFORMAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x4f44454d4158205452414e53464552204c495354454e45523a205045524d495353494f,
                    mem[199 len 29]
    if WETHAddress == arg3:
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.isPair(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(FACTORYAddress)
        if ext_call.return_data[0]:
            staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args DGASAddress, WETHAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != arg1:
                require ext_code.size(DGASAddress)
                call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg4
            else:
                if not arg4:
                    require ext_code.size(DGASAddress)
                    call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), 0
                else:
                    if 2 * arg4 / arg4 != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(DGASAddress)
                    call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), 2 * arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        staticcall FACTORYAddress.isPair(address rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args DGASAddress, WETHAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != arg2:
                require ext_code.size(DGASAddress)
                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg4
            else:
                if not arg4:
                    require ext_code.size(DGASAddress)
                    call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg2), 0
                else:
                    if 2 * arg4 / arg4 != 2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(DGASAddress)
                    call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg2), 2 * arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if DGASAddress == arg3:
            if DGASAddress == WETHAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[201 len 27]
            if DGASAddress < WETHAddress:
                if not DGASAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if DGASAddress == WETHAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[201 len 27]
                if DGASAddress < WETHAddress:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, WETHAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, WETHAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not WETHAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(WETHAddress, DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(WETHAddress, DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.isPair(address rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if DGASAddress == DGASAddress:
                    if ext_call.return_data[0]:
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args DGASAddress, WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg2:
                            if arg4 <= 0:
                                revert with 0, 32, 37, 0xfe44656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                            if not arg4:
                                require Mask(112, 0, ext_call.return_data[0])
                                require ext_code.size(DGASAddress)
                                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), 0 / Mask(112, 0, ext_call.return_data[0])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * arg4 / arg4 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                require Mask(112, 0, ext_call.return_data[0])
                                require ext_code.size(DGASAddress)
                                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), Mask(112, 0, ext_call.return_data[32]) * arg4 / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if ext_call.return_data[0]:
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args DGASAddress, WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg2:
                            if arg4 <= 0:
                                revert with 0, 32, 37, 0xfe44656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                            if not arg4:
                                require Mask(112, 0, ext_call.return_data[32])
                                require ext_code.size(DGASAddress)
                                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), 0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) * arg4 / arg4 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                require Mask(112, 0, ext_call.return_data[32])
                                require ext_code.size(DGASAddress)
                                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), Mask(112, 0, ext_call.return_data[0]) * arg4 / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if not WETHAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if DGASAddress == WETHAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[201 len 27]
                if DGASAddress < WETHAddress:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, WETHAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, WETHAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not WETHAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(WETHAddress, DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(WETHAddress, DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.isPair(address rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if WETHAddress == DGASAddress:
                    if ext_call.return_data[0]:
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args DGASAddress, WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg2:
                            if arg4 <= 0:
                                revert with 0, 32, 37, 0xfe44656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                            if not arg4:
                                require Mask(112, 0, ext_call.return_data[0])
                                require ext_code.size(DGASAddress)
                                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), 0 / Mask(112, 0, ext_call.return_data[0])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * arg4 / arg4 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                require Mask(112, 0, ext_call.return_data[0])
                                require ext_code.size(DGASAddress)
                                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), Mask(112, 0, ext_call.return_data[32]) * arg4 / Mask(112, 0, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if ext_call.return_data[0]:
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args DGASAddress, WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != arg2:
                            if arg4 <= 0:
                                revert with 0, 32, 37, 0xfe44656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
                            if not arg4:
                                require Mask(112, 0, ext_call.return_data[32])
                                require ext_code.size(DGASAddress)
                                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), 0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) * arg4 / arg4 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                require Mask(112, 0, ext_call.return_data[32])
                                require ext_code.size(DGASAddress)
                                call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), Mask(112, 0, ext_call.return_data[0]) * arg4 / Mask(112, 0, ext_call.return_data[32])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.isPair(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args DGASAddress, WETHAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != arg1:
                    require ext_code.size(DGASAddress)
                    staticcall DGASAddress.getProductivity(address rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(arg1)
                    staticcall arg1.getDGASReserve() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg4 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg4:
                        require arg4 + ext_call.return_data[0]
                        if 0 / arg4 + ext_call.return_data[0]:
                            require ext_code.size(DGASAddress)
                            call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / arg4 + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if ext_call.return_data[0] * arg4 / arg4 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        require arg4 + ext_call.return_data[0]
                        if ext_call.return_data[0] * arg4 / arg4 + ext_call.return_data[0]:
                            require ext_code.size(DGASAddress)
                            call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] * arg4 / arg4 + ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    emit Transfer(arg4, arg1, arg2, arg3);
    return 1
}



}
