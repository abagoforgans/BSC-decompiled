contract main {




// =====================  Runtime code  =====================


address owner;
uint256 version;
address DGASAddress;
address PLATFORMAddress;
address WETHAddress;
address FACTORYAddress;
address adminAddress;
mapping of uint256 pairWeights;

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

function pairWeights(address arg1) payable {
    require calldata.size - 4 >= 32
    return pairWeights[arg1]
}

function owner() payable {
    return owner
}

function WETH() payable {
    return WETHAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    adminAddress = arg1
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

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x5344454d4158205452414e53464552204c495354454e4552203a20494e5055542041444452455353204953205a4552,
                    mem[211 len 17]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x5344454d4158205452414e53464552204c495354454e4552203a20494e5055542041444452455353204953205a4552,
                    mem[211 len 17]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x5344454d4158205452414e53464552204c495354454e4552203a20494e5055542041444452455353204953205a4552,
                    mem[211 len 17]
    if not arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x5344454d4158205452414e53464552204c495354454e4552203a20494e5055542041444452455353204953205a4552,
                    mem[211 len 17]
    DGASAddress = arg1
    FACTORYAddress = arg2
    WETHAddress = arg3
    PLATFORMAddress = arg4
    adminAddress = arg5
}

function upgradeProdutivity(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if PLATFORMAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x4e44454d4158205452414e53464552204c495354454e45523a205045524d495353494f,
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

function updatePairPowers(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x4f44454d4158205452414e53464552204c495354454e45523a2041444d494e205045524d495353494f,
                    mem[205 len 23]
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe44454d4158205452414e53464552204c495354454e45523a20494e56414c494420504152414d,
                    mem[203 len 25]
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        pairWeights[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(DGASAddress)
        staticcall DGASAddress.getProductivity(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg1 + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if DGASAddress == address(ext_call.return_data[0]):
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 7
            if ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(cd[((32 * idx) + arg1 + 36)])]:
                if ext_call.return_data[0]:
                    mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(DGASAddress)
                    call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(cd[((32 * idx) + arg1 + 36)])]:
                    mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[132] = Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(cd[((32 * idx) + arg1 + 36)])]
                    require ext_code.size(DGASAddress)
                    call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg1 + 36)]), Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(cd[((32 * idx) + arg1 + 36)])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            if DGASAddress != address(ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(DGASAddress)
                        call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 7
                if ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(cd[((32 * idx) + arg1 + 36)])]:
                    if ext_call.return_data[0]:
                        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(DGASAddress)
                        call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(cd[((32 * idx) + arg1 + 36)])]:
                        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[132] = Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(cd[((32 * idx) + arg1 + 36)])]
                        require ext_code.size(DGASAddress)
                        call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + arg1 + 36)]), Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(cd[((32 * idx) + arg1 + 36)])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        require idx < arg1.length
        require idx < arg2.length
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit WeightChanged(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function transferNotify(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if PLATFORMAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x4e44454d4158205452414e53464552204c495354454e45523a205045524d495353494f,
                    mem[199 len 29]
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.isPair(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if DGASAddress == arg3:
            require ext_code.size(DGASAddress)
            staticcall DGASAddress.getProductivity(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
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
            require ext_code.size(arg1)
            staticcall arg1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if DGASAddress == address(ext_call.return_data[0]):
                if ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(arg1)]:
                    if ext_call.return_data[0]:
                        require ext_code.size(DGASAddress)
                        call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(arg1)]:
                        require ext_code.size(DGASAddress)
                        call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg1), Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if DGASAddress != address(ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(DGASAddress)
                            call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(arg1)]:
                        if ext_call.return_data[0]:
                            require ext_code.size(DGASAddress)
                            call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(arg1)]:
                            require ext_code.size(DGASAddress)
                            call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg1), Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(arg1)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.isPair(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if DGASAddress == arg3:
            require ext_code.size(DGASAddress)
            staticcall DGASAddress.getProductivity(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
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
            require ext_code.size(arg2)
            staticcall arg2.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if DGASAddress == address(ext_call.return_data[0]):
                if ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(arg2)]:
                    if ext_call.return_data[0]:
                        require ext_code.size(DGASAddress)
                        call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(arg2)]:
                        require ext_code.size(DGASAddress)
                        call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg2), Mask(112, 0, ext_call.return_data[0]) * pairWeights[address(arg2)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                if DGASAddress != address(ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(DGASAddress)
                            call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(arg2)]:
                        if ext_call.return_data[0]:
                            require ext_code.size(DGASAddress)
                            call DGASAddress.decreaseProductivity(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(arg2)]:
                            require ext_code.size(DGASAddress)
                            call DGASAddress.increaseProductivity(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(arg2), Mask(112, 0, ext_call.return_data[32]) * pairWeights[address(arg2)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    emit Transfer(arg4, arg1, arg2, arg3);
    return 1
}



}
