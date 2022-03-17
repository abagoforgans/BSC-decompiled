contract main {




// =====================  Runtime code  =====================


address owner;
uint256 version;
address DGASAddress;
address PLATFORMAddress;
address WETHAddress;
address FACTORYAddress;
mapping of uint8 stor6;
mapping of uint8 stor7;

function sub_06412e44(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function FACTORY() payable {
    return FACTORYAddress
}

function version() payable {
    return version
}

function DGAS() payable {
    return DGASAddress
}

function tokenWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
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

function sub_8f3559e7(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = uint8(arg1)
        idx = idx + 1
        continue 
}

function sub_92d51ba6(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = uint8(arg1)
        idx = idx + 1
        continue 
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

function emergencyRemoveProductivity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.0xe5e31b13 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x4f44454d4158205452414e53464552204c495354454e45523a20494c4c4547414c20414444524553,
                    mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor6[address(ext_call.return_data[0])]:
        if stor6[address(ext_call.return_data[0])]:
            revert with 0, 'DEMAX TRANSFER LISTENER: ILLEGAL'
    require ext_code.size(DGASAddress)
    call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function upgradeProdutivity(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if PLATFORMAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x5344454d4158205452414e53464552204c495354454e45523a205045524d495353494f,
                    mem[199 len 29]
    require ext_code.size(DGASAddress)
    staticcall DGASAddress.getProductivity(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(DGASAddress)
    staticcall DGASAddress.getProductivity(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            require ext_code.size(DGASAddress)
            call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(DGASAddress)
            call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function transferNotify(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if PLATFORMAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x5344454d4158205452414e53464552204c495354454e45523a205045524d495353494f,
                    mem[199 len 29]
    if WETHAddress == arg3:
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.0xe5e31b13 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor7[address(arg1)]:
                if 1 == bool(stor6[address(ext_call.return_data[0])]):
                    if 1 == bool(stor6[address(ext_call.return_data[0])]):
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.0xe6a43905 with:
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
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.0xe5e31b13 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg2)
            staticcall arg2.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            staticcall arg2.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor7[address(arg2)]:
                if 1 == bool(stor6[address(ext_call.return_data[0])]):
                    if 1 == bool(stor6[address(ext_call.return_data[0])]):
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.0xe6a43905 with:
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
                    staticcall FACTORYAddress.0x7c7f84ee with:
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
                    staticcall FACTORYAddress.0x7c7f84ee with:
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
                staticcall FACTORYAddress.0xe5e31b13 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if DGASAddress == DGASAddress:
                    if ext_call.return_data[0]:
                        require ext_code.size(arg2)
                        staticcall arg2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor7[address(arg2)]:
                            if 1 == bool(stor6[address(ext_call.return_data[0])]):
                                if 1 == bool(stor6[address(ext_call.return_data[0])]):
                                    require ext_code.size(FACTORYAddress)
                                    staticcall FACTORYAddress.0xe6a43905 with:
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
                        require ext_code.size(arg2)
                        staticcall arg2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor7[address(arg2)]:
                            if 1 == bool(stor6[address(ext_call.return_data[0])]):
                                if 1 == bool(stor6[address(ext_call.return_data[0])]):
                                    require ext_code.size(FACTORYAddress)
                                    staticcall FACTORYAddress.0xe6a43905 with:
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
                    staticcall FACTORYAddress.0x7c7f84ee with:
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
                    staticcall FACTORYAddress.0x7c7f84ee with:
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
                staticcall FACTORYAddress.0xe5e31b13 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if WETHAddress == DGASAddress:
                    if ext_call.return_data[0]:
                        require ext_code.size(arg2)
                        staticcall arg2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor7[address(arg2)]:
                            if 1 == bool(stor6[address(ext_call.return_data[0])]):
                                if 1 == bool(stor6[address(ext_call.return_data[0])]):
                                    require ext_code.size(FACTORYAddress)
                                    staticcall FACTORYAddress.0xe6a43905 with:
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
                        require ext_code.size(arg2)
                        staticcall arg2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor7[address(arg2)]:
                            if 1 == bool(stor6[address(ext_call.return_data[0])]):
                                if 1 == bool(stor6[address(ext_call.return_data[0])]):
                                    require ext_code.size(FACTORYAddress)
                                    staticcall FACTORYAddress.0xe6a43905 with:
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
            staticcall FACTORYAddress.0xe5e31b13 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor7[address(arg1)]:
                    if 1 == bool(stor6[address(ext_call.return_data[0])]):
                        if 1 == bool(stor6[address(ext_call.return_data[0])]):
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.0xe6a43905 with:
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
