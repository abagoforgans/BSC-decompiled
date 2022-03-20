contract main {




// =====================  Runtime code  =====================


#
#  - swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#  - swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#  - swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#
const PERCENT_DENOMINATOR = 10000


address owner;
uint256 version;
address DGASAddress;
address CONFIGAddress;
address FACTORYAddress;
uint128 stor5;
address WETHAddress;
address GOVERNANCEAddress;
address TRANSFER_LISTENERAddress;
uint8 isPause; offset 160
address POOLAddress;

function GOVERNANCE() {
    return GOVERNANCEAddress
}

function FACTORY() {
    return FACTORYAddress
}

function version() {
    return version
}

function DGAS() {
    return DGASAddress
}

function POOL() {
    return POOLAddress
}

function TRANSFER_LISTENER() {
    return TRANSFER_LISTENERAddress
}

function owner() {
    return owner
}

function WETH() {
    return address(WETHAddress)
}

function CONFIG() {
    return CONFIGAddress
}

function isPause() {
    return bool(isPause)
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    isPause = 1
}

function resume() {
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    isPause = 0
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    DGASAddress = arg1
    CONFIGAddress = arg2
    FACTORYAddress = arg3
    address(WETHAddress) = arg4
    GOVERNANCEAddress = arg5
    TRANSFER_LISTENERAddress = arg6
    POOLAddress = arg7
}

function existPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not not ext_call.return_data[12 len 20]
}

function pairFor(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.contractCodeHash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0]))
    if not arg2:
        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.contractCodeHash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0]))
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x535741505f4645455f50455243454e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0, 32, 43, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[271 len 21]
    if (10000 * arg1) - (ext_call.return_data[0] * arg1) / arg1 != -ext_call.return_data[0] + 10000:
        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000 <= 0:
        revert with 0, 32, 43, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[271 len 21]
    if arg2 <= 0:
        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
    if arg3 <= 0:
        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
    if not (10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000:
        if ((10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000) + arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if ((10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000) + arg2:
            return (0 / ((10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000) + arg2)
    else:
        if arg3 * (10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000 / (10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000 != arg3:
            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ((10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000) + arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if ((10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000) + arg2:
            return (arg3 * (10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000 / ((10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000) + arg2)
    ('iszero', ('add', ('div', ('add', ('mul', 10000, ('param', 'arg1')), ('mul', -1, ('ext_call.return_data', 0, 32), ('param', 'arg1'))), 10000), ('param', 'arg2')))
    revert
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x535741505f4645455f50455243454e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[208 len 20]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if not arg2:
        if arg1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 - arg1:
            if (0 / arg3 - arg1) + 1 < 0 / arg3 - arg1:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / arg3 - arg1) + 1:
                if -ext_call.return_data[0] + 10000:
                    return (0 / -ext_call.return_data[0] + 10000)
            else:
                if (10000 * 0 / arg3 - arg1) + 10000 / (0 / arg3 - arg1) + 1 != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if -ext_call.return_data[0] + 10000:
                    return ((10000 * 0 / arg3 - arg1) + 10000 / -ext_call.return_data[0] + 10000)
            ('iszero', ('add', 10000, ('mul', -1, ('ext_call.return_data', 0, 32))))
    else:
        if arg1 * arg2 / arg2 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 - arg1:
            if (arg1 * arg2 / arg3 - arg1) + 1 < arg1 * arg2 / arg3 - arg1:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (arg1 * arg2 / arg3 - arg1) + 1:
                if -ext_call.return_data[0] + 10000:
                    return (0 / -ext_call.return_data[0] + 10000)
            else:
                if (10000 * arg1 * arg2 / arg3 - arg1) + 10000 / (arg1 * arg2 / arg3 - arg1) + 1 != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if -ext_call.return_data[0] + 10000:
                    return ((10000 * arg1 * arg2 / arg3 - arg1) + 10000 / -ext_call.return_data[0] + 10000)
            ('iszero', ('add', 10000, ('mul', -1, ('ext_call.return_data', 0, 32))))
    revert
}

function migrateLiquidity(address arg1, address arg2, address arg3, address[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(FACTORYAddress)
    if not ext_call.return_data[12 len 20]:
        call FACTORYAddress.createPair(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg4.length:
        mem[100] = address(cd[((32 * idx) + arg4 + 36)])
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg4 + 36)])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require idx < arg4.length
            mem[164] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.burn(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg4 + 36)]), address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < arg4.length
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address rg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg4 + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg4.length
            mem[100] = address(cd[((32 * idx) + arg4 + 36)])
            mem[132] = address(ext_call.return_data[0])
            require ext_code.size(FACTORYAddress)
            call FACTORYAddress.addPlayerPair(address rg1, address rg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg4 + 36)]), address(ext_call.return_data[0])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(TRANSFER_LISTENERAddress)
    call TRANSFER_LISTENERAddress.upgradeProdutivity(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getReserves(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg1:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg2:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg1:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    if arg7 < block.timestamp:
        revert with 0, 'TDEMAX PLATFORM : EXPIRED'
    if isPause:
        revert with 0, 'DEMAX PAUSED'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.contractCodeHash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(POOLAddress)
        call POOLAddress.preProductivityChanged(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])))
        call address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])).burn(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg6), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(POOLAddress)
        call POOLAddress.postProductivityChanged(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == arg2:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if arg1 == arg1:
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])), address(arg6), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])), address(arg6), address(arg2), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg4:
                    revert with 0, 
                                32,
                                38,
                                0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                                ext_call.return_data[38 len 26]
                if ext_call.return_data[32] < arg5:
                    revert with 0, 
                                32,
                                38,
                                0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                                ext_call.return_data[38 len 26]
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, arg2);
                return ext_call.return_data[0], ext_call.return_data[32]
        else:
            if not arg2:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if arg1 == arg2:
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])), address(arg6), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])), address(arg6), address(arg2), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg4:
                    revert with 0, 
                                32,
                                38,
                                0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                                ext_call.return_data[38 len 26]
                if ext_call.return_data[32] < arg5:
                    revert with 0, 
                                32,
                                38,
                                0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                                ext_call.return_data[38 len 26]
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, arg2);
                return ext_call.return_data[0], ext_call.return_data[32]
        require ext_code.size(TRANSFER_LISTENERAddress)
        call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])), address(arg6), address(arg1), ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(TRANSFER_LISTENERAddress)
        call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])), address(arg6), address(arg2), ext_call.return_data[0]
    else:
        if not arg2:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.contractCodeHash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(POOLAddress)
        call POOLAddress.preProductivityChanged(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])))
        call address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])).burn(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg6), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(POOLAddress)
        call POOLAddress.postProductivityChanged(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == arg2:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if arg1 == arg1:
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])), address(arg6), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])), address(arg6), address(arg2), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg4:
                    revert with 0, 
                                32,
                                38,
                                0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                                ext_call.return_data[38 len 26]
                if ext_call.return_data[32] < arg5:
                    revert with 0, 
                                32,
                                38,
                                0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                                ext_call.return_data[38 len 26]
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, arg2);
                return ext_call.return_data[0], ext_call.return_data[32]
        else:
            if not arg2:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if arg1 == arg2:
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])), address(arg6), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])), address(arg6), address(arg2), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg4:
                    revert with 0, 
                                32,
                                38,
                                0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                                ext_call.return_data[38 len 26]
                if ext_call.return_data[32] < arg5:
                    revert with 0, 
                                32,
                                38,
                                0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                                ext_call.return_data[38 len 26]
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, arg2);
                return ext_call.return_data[0], ext_call.return_data[32]
        require ext_code.size(TRANSFER_LISTENERAddress)
        call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])), address(arg6), address(arg1), ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(TRANSFER_LISTENERAddress)
        call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])), address(arg6), address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] < arg4:
        revert with 0, 
                    32,
                    38,
                    0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                    ext_call.return_data[6 len 26]
    if ext_call.return_data[0] < arg5:
        revert with 0, 
                    32,
                    38,
                    0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                    ext_call.return_data[6 len 26]
    emit RemoveLiquidity(ext_call.return_data[32], ext_call.return_data[0], msg.sender, arg1, arg2);
    return ext_call.return_data[32], ext_call.return_data[0]
}

function removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if arg6 < block.timestamp:
        revert with 0, 'TDEMAX PLATFORM : EXPIRED'
    if isPause:
        revert with 0, 'DEMAX PAUSED'
    if arg6 < block.timestamp:
        revert with 0, 'TDEMAX PLATFORM : EXPIRED'
    if isPause:
        revert with 0, 'DEMAX PAUSED'
    if arg1 == address(WETHAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg1 < address(WETHAddress):
        if not arg1:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.contractCodeHash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(POOLAddress)
        call POOLAddress.preProductivityChanged(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])))
        call address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])).burn(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(POOLAddress)
        call POOLAddress.postProductivityChanged(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == address(WETHAddress):
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
        if arg1 < address(WETHAddress):
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(TRANSFER_LISTENERAddress)
            if arg1 == arg1:
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), address(this.address), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), address(this.address), address(WETHAddress), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg3:
                    revert with 0, 
                                32,
                                38,
                                0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                                ext_call.return_data[38 len 26]
                if ext_call.return_data[32] < arg4:
                    revert with 0, 
                                32,
                                38,
                                0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                                ext_call.return_data[38 len 26]
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
                mem[385 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                call arg1 with:
                   funct ext_call.return_data[32 len 4]
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[449 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not arg1, Mask(96, 0, stor5):
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(WETHAddress))
                    call address(WETHAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg5 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[520 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 521 len 29]
                    ('bool', 'ext_call.success')
                    require ext_code.size(TRANSFER_LISTENERAddress)
                    call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg5), address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(TRANSFER_LISTENERAddress)
                    call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0], ext_call.return_data[32]
                mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[417]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                require ext_code.size(address(WETHAddress))
                call address(WETHAddress).withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call arg5 with:
                   value ext_call.return_data[32] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 521 len 29]
                    require ext_code.size(TRANSFER_LISTENERAddress)
                    call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg5), address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(TRANSFER_LISTENERAddress)
                    call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0], ext_call.return_data[32]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg5), address(arg1), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 551 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[32], mem[(2 * ceil32(return_data.size)) + 551 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0], 
                       ext_call.return_data[32],
                       mem[(2 * ceil32(return_data.size)) + 483 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), address(this.address), address(arg1), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(TRANSFER_LISTENERAddress)
            call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), address(this.address), address(WETHAddress), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[32] < arg3:
                revert with 0, 
                            32,
                            38,
                            0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                            ext_call.return_data[6 len 26]
            if ext_call.return_data[0] < arg4:
                revert with 0, 
                            32,
                            38,
                            0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                            ext_call.return_data[6 len 26]
            emit RemoveLiquidity(ext_call.return_data[32], ext_call.return_data[0], msg.sender, arg1, address(WETHAddress));
            mem[385 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[32 len 28]
            call arg1 with:
               funct ext_call.return_data[0 len 4]
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[32 len 28]) << 256, mem[449 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not arg1, Mask(96, 0, stor5):
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                require ext_code.size(address(WETHAddress))
                call address(WETHAddress).withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call arg5 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[520 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 521 len 29]
            else:
                mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not return_data.size:
                    require ext_code.size(address(WETHAddress))
                    call address(WETHAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg5 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 521 len 29]
                        require ext_code.size(TRANSFER_LISTENERAddress)
                        call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(arg5), address(arg1), ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(TRANSFER_LISTENERAddress)
                        call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[32], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
                    require ext_code.size(TRANSFER_LISTENERAddress)
                    call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg5), address(arg1), ext_call.return_data[32], mem[(2 * ceil32(return_data.size)) + 551 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(TRANSFER_LISTENERAddress)
                    call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 551 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[32], 
                           ext_call.return_data[0],
                           mem[(2 * ceil32(return_data.size)) + 483 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require return_data.size >= 32
                if not mem[417]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                require ext_code.size(address(WETHAddress))
                call address(WETHAddress).withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call arg5 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 521 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(2 * ceil32(return_data.size)) + 522 len 29]
        else:
            if not address(WETHAddress):
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(TRANSFER_LISTENERAddress)
            if arg1 == address(WETHAddress):
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), address(this.address), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), address(this.address), address(WETHAddress), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg3:
                    revert with 0, 
                                32,
                                38,
                                0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                                ext_call.return_data[38 len 26]
                if ext_call.return_data[32] < arg4:
                    revert with 0, 
                                32,
                                38,
                                0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                                ext_call.return_data[38 len 26]
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
                mem[385 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[449 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not arg1, Mask(96, 0, stor5):
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(WETHAddress))
                    call address(WETHAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg5 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[520 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 521 len 29]
                else:
                    mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[417]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(WETHAddress))
                    call address(WETHAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg5 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 521 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 522 len 29]
                ('bool', 'ext_call.success')
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg5), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0], ext_call.return_data[32]
            call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), address(this.address), address(arg1), ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(TRANSFER_LISTENERAddress)
            call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])), address(this.address), address(WETHAddress), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[32] < arg3:
                revert with 0, 
                            32,
                            38,
                            0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                            ext_call.return_data[6 len 26]
            if ext_call.return_data[0] < arg4:
                revert with 0, 
                            32,
                            38,
                            0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                            ext_call.return_data[6 len 26]
            emit RemoveLiquidity(ext_call.return_data[32], ext_call.return_data[0], msg.sender, arg1, address(WETHAddress));
            mem[385 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[32 len 28]
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[32 len 28]) << 256, mem[449 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not arg1, Mask(96, 0, stor5):
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                require ext_code.size(address(WETHAddress))
                call address(WETHAddress).withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call arg5 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[520 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 521 len 29]
            else:
                mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[417]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                require ext_code.size(address(WETHAddress))
                call address(WETHAddress).withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call arg5 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[ceil32(return_data.size) + 521 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(2 * ceil32(return_data.size)) + 522 len 29]
    else:
        if not address(WETHAddress):
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.contractCodeHash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(POOLAddress)
        call POOLAddress.preProductivityChanged(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])))
        call address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])).burn(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(POOLAddress)
        call POOLAddress.postProductivityChanged(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 == address(WETHAddress):
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
        if arg1 < address(WETHAddress):
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if arg1 == arg1:
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])), address(this.address), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])), address(this.address), address(WETHAddress), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg3:
                    revert with 0, 
                                32,
                                38,
                                0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                                ext_call.return_data[38 len 26]
                if ext_call.return_data[32] < arg4:
                    revert with 0, 
                                32,
                                38,
                                0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                                ext_call.return_data[38 len 26]
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
                mem[385 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[449 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not address(WETHAddress), Mask(96, 64, arg1) >> 64:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(WETHAddress))
                    call address(WETHAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg5 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[520 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 521 len 29]
                else:
                    mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[417]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(WETHAddress))
                    call address(WETHAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg5 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 521 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 522 len 29]
                ('bool', 'ext_call.success')
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg5), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0], ext_call.return_data[32]
        else:
            if not address(WETHAddress):
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if arg1 == address(WETHAddress):
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])), address(this.address), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])), address(this.address), address(WETHAddress), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg3:
                    revert with 0, 
                                32,
                                38,
                                0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                                ext_call.return_data[38 len 26]
                if ext_call.return_data[32] < arg4:
                    revert with 0, 
                                32,
                                38,
                                0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                                ext_call.return_data[38 len 26]
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
                mem[385 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[449 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not address(WETHAddress), Mask(96, 64, arg1) >> 64:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(WETHAddress))
                    call address(WETHAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg5 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[520 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 521 len 29]
                else:
                    mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[417]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(WETHAddress))
                    call address(WETHAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg5 with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[ceil32(return_data.size) + 521 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(2 * ceil32(return_data.size)) + 522 len 29]
                ('bool', 'ext_call.success')
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg5), address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(TRANSFER_LISTENERAddress)
                call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0], ext_call.return_data[32]
        require ext_code.size(TRANSFER_LISTENERAddress)
        call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])), address(this.address), address(arg1), ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(TRANSFER_LISTENERAddress)
        call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])), address(this.address), address(WETHAddress), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[32] < arg3:
            revert with 0, 
                        32,
                        38,
                        0x5344454d415820504c4154464f524d203a20494e53554646494349454e545f415f414d4f554e,
                        ext_call.return_data[6 len 26]
        if ext_call.return_data[0] < arg4:
            revert with 0, 
                        32,
                        38,
                        0x4444454d415820504c4154464f524d203a20494e53554646494349454e545f425f414d4f554e,
                        ext_call.return_data[6 len 26]
        emit RemoveLiquidity(ext_call.return_data[32], ext_call.return_data[0], msg.sender, arg1, address(WETHAddress));
        mem[385 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[32 len 28]
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[32 len 28]) << 256, mem[449 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not address(WETHAddress), Mask(96, 64, arg1) >> 64:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            require ext_code.size(address(WETHAddress))
            call address(WETHAddress).withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg5 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[520 len 29]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 521 len 29]
        else:
            mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[417]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            require ext_code.size(address(WETHAddress))
            call address(WETHAddress).withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg5 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 521 len 29]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x4c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[(2 * ceil32(return_data.size)) + 522 len 29]
    ('bool', 'ext_call.success')
    require ext_code.size(TRANSFER_LISTENERAddress)
    call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg5), address(arg1), ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(TRANSFER_LISTENERAddress)
    call TRANSFER_LISTENERAddress.transferNotify(address rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg5), address(WETHAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[32], ext_call.return_data[0]
}

function getAmountsOut(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x535741505f4645455f50455243454e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg2.length) + 160] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[96]
            _654 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _658 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _706 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_658)
                    _707 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _709 = sha3(mem[_707 + 32 len mem[_707]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_706 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_706 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_706 + 125] = _709
                    mem[_706 + 157] = ext_call.return_data[0]
                    mem[_706 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _709, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _709, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_706 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_654) == address(_654):
                        _858 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[64] = _706 + 253
                        mem[_706 + 189] = 30
                        mem[_706 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_706 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_706 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _706 + 321] = mem[idx + _706 + 221]
                                idx = idx + 32
                                continue 
                            mem[_706 + 321] = mem[_706 + 323 len 30]
                            revert with 0, 32, 30, mem[_706 + 321]
                        if not _858:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_706 + 364 len 21]
                        if (10000 * _858) - (ext_call.return_data[0] * _858) / _858 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_706 + 354 len 31]
                        if (10000 * _858) - (ext_call.return_data[0] * _858) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_706 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_706 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_706 + 361 len 24]
                        if not (10000 * _858) - (ext_call.return_data[0] * _858) / 10000:
                            if ((10000 * _858) - (ext_call.return_data[0] * _858) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _858) - (ext_call.return_data[0] * _858) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _858) - (ext_call.return_data[0] * _858) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _858) - (ext_call.return_data[0] * _858) / 10000 / (10000 * _858) - (ext_call.return_data[0] * _858) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_706 + 354 len 31]
                            if ((10000 * _858) - (ext_call.return_data[0] * _858) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _858) - (ext_call.return_data[0] * _858) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _858) - (ext_call.return_data[0] * _858) / 10000 / ((10000 * _858) - (ext_call.return_data[0] * _858) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _859 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[64] = _706 + 253
                        mem[_706 + 189] = 30
                        mem[_706 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_706 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_706 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _706 + 321] = mem[idx + _706 + 221]
                                idx = idx + 32
                                continue 
                            mem[_706 + 321] = mem[_706 + 323 len 30]
                            revert with 0, 32, 30, mem[_706 + 321]
                        if not _859:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_706 + 364 len 21]
                        if (10000 * _859) - (ext_call.return_data[0] * _859) / _859 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_706 + 354 len 31]
                        if (10000 * _859) - (ext_call.return_data[0] * _859) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_706 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_706 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_706 + 361 len 24]
                        if not (10000 * _859) - (ext_call.return_data[0] * _859) / 10000:
                            if ((10000 * _859) - (ext_call.return_data[0] * _859) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _859) - (ext_call.return_data[0] * _859) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _859) - (ext_call.return_data[0] * _859) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _859) - (ext_call.return_data[0] * _859) / 10000 / (10000 * _859) - (ext_call.return_data[0] * _859) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_706 + 354 len 31]
                            if ((10000 * _859) - (ext_call.return_data[0] * _859) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _859) - (ext_call.return_data[0] * _859) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _859) - (ext_call.return_data[0] * _859) / 10000 / ((10000 * _859) - (ext_call.return_data[0] * _859) / 10000) + Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _712 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_654)
                    _713 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _715 = sha3(mem[_713 + 32 len mem[_713]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_712 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_712 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_712 + 125] = _715
                    mem[_712 + 157] = ext_call.return_data[0]
                    mem[_712 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _715, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _715, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_712 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_654) == address(_654):
                        _860 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[64] = _712 + 253
                        mem[_712 + 189] = 30
                        mem[_712 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_712 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_712 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _712 + 321] = mem[idx + _712 + 221]
                                idx = idx + 32
                                continue 
                            mem[_712 + 321] = mem[_712 + 323 len 30]
                            revert with 0, 32, 30, mem[_712 + 321]
                        if not _860:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_712 + 364 len 21]
                        if (10000 * _860) - (ext_call.return_data[0] * _860) / _860 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_712 + 354 len 31]
                        if (10000 * _860) - (ext_call.return_data[0] * _860) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_712 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_712 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_712 + 361 len 24]
                        if not (10000 * _860) - (ext_call.return_data[0] * _860) / 10000:
                            if ((10000 * _860) - (ext_call.return_data[0] * _860) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _860) - (ext_call.return_data[0] * _860) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _860) - (ext_call.return_data[0] * _860) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _860) - (ext_call.return_data[0] * _860) / 10000 / (10000 * _860) - (ext_call.return_data[0] * _860) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_712 + 354 len 31]
                            if ((10000 * _860) - (ext_call.return_data[0] * _860) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _860) - (ext_call.return_data[0] * _860) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _860) - (ext_call.return_data[0] * _860) / 10000 / ((10000 * _860) - (ext_call.return_data[0] * _860) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _861 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[64] = _712 + 253
                        mem[_712 + 189] = 30
                        mem[_712 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_712 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_712 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _712 + 321] = mem[idx + _712 + 221]
                                idx = idx + 32
                                continue 
                            mem[_712 + 321] = mem[_712 + 323 len 30]
                            revert with 0, 32, 30, mem[_712 + 321]
                        if not _861:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_712 + 364 len 21]
                        if (10000 * _861) - (ext_call.return_data[0] * _861) / _861 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_712 + 354 len 31]
                        if (10000 * _861) - (ext_call.return_data[0] * _861) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_712 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_712 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_712 + 361 len 24]
                        if not (10000 * _861) - (ext_call.return_data[0] * _861) / 10000:
                            if ((10000 * _861) - (ext_call.return_data[0] * _861) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _861) - (ext_call.return_data[0] * _861) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _861) - (ext_call.return_data[0] * _861) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _861) - (ext_call.return_data[0] * _861) / 10000 / (10000 * _861) - (ext_call.return_data[0] * _861) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_712 + 354 len 31]
                            if ((10000 * _861) - (ext_call.return_data[0] * _861) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _861) - (ext_call.return_data[0] * _861) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _861) - (ext_call.return_data[0] * _861) / 10000 / ((10000 * _861) - (ext_call.return_data[0] * _861) / 10000) + Mask(112, 0, ext_call.return_data[32])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _718 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_658)
                    _719 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _721 = sha3(mem[_719 + 32 len mem[_719]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_718 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_718 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_718 + 125] = _721
                    mem[_718 + 157] = ext_call.return_data[0]
                    mem[_718 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _721, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _721, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_718 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_658) == address(_654):
                        _862 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[64] = _718 + 253
                        mem[_718 + 189] = 30
                        mem[_718 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_718 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_718 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _718 + 321] = mem[idx + _718 + 221]
                                idx = idx + 32
                                continue 
                            mem[_718 + 321] = mem[_718 + 323 len 30]
                            revert with 0, 32, 30, mem[_718 + 321]
                        if not _862:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_718 + 364 len 21]
                        if (10000 * _862) - (ext_call.return_data[0] * _862) / _862 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_718 + 354 len 31]
                        if (10000 * _862) - (ext_call.return_data[0] * _862) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_718 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_718 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_718 + 361 len 24]
                        if not (10000 * _862) - (ext_call.return_data[0] * _862) / 10000:
                            if ((10000 * _862) - (ext_call.return_data[0] * _862) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _862) - (ext_call.return_data[0] * _862) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _862) - (ext_call.return_data[0] * _862) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _862) - (ext_call.return_data[0] * _862) / 10000 / (10000 * _862) - (ext_call.return_data[0] * _862) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_718 + 354 len 31]
                            if ((10000 * _862) - (ext_call.return_data[0] * _862) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _862) - (ext_call.return_data[0] * _862) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _862) - (ext_call.return_data[0] * _862) / 10000 / ((10000 * _862) - (ext_call.return_data[0] * _862) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _863 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[64] = _718 + 253
                        mem[_718 + 189] = 30
                        mem[_718 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_718 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_718 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _718 + 321] = mem[idx + _718 + 221]
                                idx = idx + 32
                                continue 
                            mem[_718 + 321] = mem[_718 + 323 len 30]
                            revert with 0, 32, 30, mem[_718 + 321]
                        if not _863:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_718 + 364 len 21]
                        if (10000 * _863) - (ext_call.return_data[0] * _863) / _863 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_718 + 354 len 31]
                        if (10000 * _863) - (ext_call.return_data[0] * _863) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_718 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_718 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_718 + 361 len 24]
                        if not (10000 * _863) - (ext_call.return_data[0] * _863) / 10000:
                            if ((10000 * _863) - (ext_call.return_data[0] * _863) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _863) - (ext_call.return_data[0] * _863) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _863) - (ext_call.return_data[0] * _863) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _863) - (ext_call.return_data[0] * _863) / 10000 / (10000 * _863) - (ext_call.return_data[0] * _863) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_718 + 354 len 31]
                            if ((10000 * _863) - (ext_call.return_data[0] * _863) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _863) - (ext_call.return_data[0] * _863) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _863) - (ext_call.return_data[0] * _863) / 10000 / ((10000 * _863) - (ext_call.return_data[0] * _863) / 10000) + Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _724 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_654)
                    _725 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _727 = sha3(mem[_725 + 32 len mem[_725]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_724 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_724 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_724 + 125] = _727
                    mem[_724 + 157] = ext_call.return_data[0]
                    mem[_724 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _727, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _727, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_724 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_658) == address(_654):
                        _864 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[64] = _724 + 253
                        mem[_724 + 189] = 30
                        mem[_724 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_724 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_724 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _724 + 321] = mem[idx + _724 + 221]
                                idx = idx + 32
                                continue 
                            mem[_724 + 321] = mem[_724 + 323 len 30]
                            revert with 0, 32, 30, mem[_724 + 321]
                        if not _864:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_724 + 364 len 21]
                        if (10000 * _864) - (ext_call.return_data[0] * _864) / _864 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_724 + 354 len 31]
                        if (10000 * _864) - (ext_call.return_data[0] * _864) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_724 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_724 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_724 + 361 len 24]
                        if not (10000 * _864) - (ext_call.return_data[0] * _864) / 10000:
                            if ((10000 * _864) - (ext_call.return_data[0] * _864) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _864) - (ext_call.return_data[0] * _864) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _864) - (ext_call.return_data[0] * _864) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _864) - (ext_call.return_data[0] * _864) / 10000 / (10000 * _864) - (ext_call.return_data[0] * _864) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_724 + 354 len 31]
                            if ((10000 * _864) - (ext_call.return_data[0] * _864) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _864) - (ext_call.return_data[0] * _864) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _864) - (ext_call.return_data[0] * _864) / 10000 / ((10000 * _864) - (ext_call.return_data[0] * _864) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _865 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        mem[64] = _724 + 253
                        mem[_724 + 189] = 30
                        mem[_724 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_724 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_724 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _724 + 321] = mem[idx + _724 + 221]
                                idx = idx + 32
                                continue 
                            mem[_724 + 321] = mem[_724 + 323 len 30]
                            revert with 0, 32, 30, mem[_724 + 321]
                        if not _865:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_724 + 364 len 21]
                        if (10000 * _865) - (ext_call.return_data[0] * _865) / _865 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_724 + 354 len 31]
                        if (10000 * _865) - (ext_call.return_data[0] * _865) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_724 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_724 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_724 + 361 len 24]
                        if not (10000 * _865) - (ext_call.return_data[0] * _865) / 10000:
                            if ((10000 * _865) - (ext_call.return_data[0] * _865) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _865) - (ext_call.return_data[0] * _865) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _865) - (ext_call.return_data[0] * _865) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _865) - (ext_call.return_data[0] * _865) / 10000 / (10000 * _865) - (ext_call.return_data[0] * _865) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_724 + 354 len 31]
                            if ((10000 * _865) - (ext_call.return_data[0] * _865) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _865) - (ext_call.return_data[0] * _865) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _865) - (ext_call.return_data[0] * _865) / 10000 / ((10000 * _865) - (ext_call.return_data[0] * _865) / 10000) + Mask(112, 0, ext_call.return_data[32])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        _662 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _662) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 160] = arg1
    idx = 0
    while idx < arg2.length - 1:
        require idx < mem[96]
        _656 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _659 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _730 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_659)
                _731 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _733 = sha3(mem[_731 + 32 len mem[_731]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_730 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_730 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_730 + 125] = _733
                mem[_730 + 157] = ext_call.return_data[0]
                mem[_730 + 72] = 85
                require ext_code.size(address(sha3(0, FACTORYAddress, _733, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _733, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_730 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if address(_656) == address(_656):
                    _866 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[64] = _730 + 253
                    mem[_730 + 189] = 30
                    mem[_730 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_730 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_730 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _730 + 321] = mem[idx + _730 + 221]
                            idx = idx + 32
                            continue 
                        mem[_730 + 321] = mem[_730 + 323 len 30]
                        revert with 0, 32, 30, mem[_730 + 321]
                    if not _866:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_730 + 364 len 21]
                    if (10000 * _866) - (ext_call.return_data[0] * _866) / _866 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_730 + 354 len 31]
                    if (10000 * _866) - (ext_call.return_data[0] * _866) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_730 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_730 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_730 + 361 len 24]
                    if not (10000 * _866) - (ext_call.return_data[0] * _866) / 10000:
                        if ((10000 * _866) - (ext_call.return_data[0] * _866) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _866) - (ext_call.return_data[0] * _866) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _866) - (ext_call.return_data[0] * _866) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * (10000 * _866) - (ext_call.return_data[0] * _866) / 10000 / (10000 * _866) - (ext_call.return_data[0] * _866) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_730 + 354 len 31]
                        if ((10000 * _866) - (ext_call.return_data[0] * _866) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _866) - (ext_call.return_data[0] * _866) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _866) - (ext_call.return_data[0] * _866) / 10000 / ((10000 * _866) - (ext_call.return_data[0] * _866) / 10000) + Mask(112, 0, ext_call.return_data[0])
                else:
                    _867 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[64] = _730 + 253
                    mem[_730 + 189] = 30
                    mem[_730 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_730 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_730 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _730 + 321] = mem[idx + _730 + 221]
                            idx = idx + 32
                            continue 
                        mem[_730 + 321] = mem[_730 + 323 len 30]
                        revert with 0, 32, 30, mem[_730 + 321]
                    if not _867:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_730 + 364 len 21]
                    if (10000 * _867) - (ext_call.return_data[0] * _867) / _867 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_730 + 354 len 31]
                    if (10000 * _867) - (ext_call.return_data[0] * _867) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_730 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_730 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_730 + 361 len 24]
                    if not (10000 * _867) - (ext_call.return_data[0] * _867) / 10000:
                        if ((10000 * _867) - (ext_call.return_data[0] * _867) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _867) - (ext_call.return_data[0] * _867) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _867) - (ext_call.return_data[0] * _867) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * (10000 * _867) - (ext_call.return_data[0] * _867) / 10000 / (10000 * _867) - (ext_call.return_data[0] * _867) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_730 + 354 len 31]
                        if ((10000 * _867) - (ext_call.return_data[0] * _867) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _867) - (ext_call.return_data[0] * _867) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _867) - (ext_call.return_data[0] * _867) / 10000 / ((10000 * _867) - (ext_call.return_data[0] * _867) / 10000) + Mask(112, 0, ext_call.return_data[32])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _736 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_656)
                _737 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _739 = sha3(mem[_737 + 32 len mem[_737]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_736 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_736 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_736 + 125] = _739
                mem[_736 + 157] = ext_call.return_data[0]
                mem[_736 + 72] = 85
                require ext_code.size(address(sha3(0, FACTORYAddress, _739, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _739, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_736 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if address(_656) == address(_656):
                    _868 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[64] = _736 + 253
                    mem[_736 + 189] = 30
                    mem[_736 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_736 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_736 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _736 + 321] = mem[idx + _736 + 221]
                            idx = idx + 32
                            continue 
                        mem[_736 + 321] = mem[_736 + 323 len 30]
                        revert with 0, 32, 30, mem[_736 + 321]
                    if not _868:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_736 + 364 len 21]
                    if (10000 * _868) - (ext_call.return_data[0] * _868) / _868 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_736 + 354 len 31]
                    if (10000 * _868) - (ext_call.return_data[0] * _868) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_736 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_736 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_736 + 361 len 24]
                    if not (10000 * _868) - (ext_call.return_data[0] * _868) / 10000:
                        if ((10000 * _868) - (ext_call.return_data[0] * _868) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _868) - (ext_call.return_data[0] * _868) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _868) - (ext_call.return_data[0] * _868) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * (10000 * _868) - (ext_call.return_data[0] * _868) / 10000 / (10000 * _868) - (ext_call.return_data[0] * _868) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_736 + 354 len 31]
                        if ((10000 * _868) - (ext_call.return_data[0] * _868) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _868) - (ext_call.return_data[0] * _868) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _868) - (ext_call.return_data[0] * _868) / 10000 / ((10000 * _868) - (ext_call.return_data[0] * _868) / 10000) + Mask(112, 0, ext_call.return_data[0])
                else:
                    _869 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[64] = _736 + 253
                    mem[_736 + 189] = 30
                    mem[_736 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_736 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_736 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _736 + 321] = mem[idx + _736 + 221]
                            idx = idx + 32
                            continue 
                        mem[_736 + 321] = mem[_736 + 323 len 30]
                        revert with 0, 32, 30, mem[_736 + 321]
                    if not _869:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_736 + 364 len 21]
                    if (10000 * _869) - (ext_call.return_data[0] * _869) / _869 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_736 + 354 len 31]
                    if (10000 * _869) - (ext_call.return_data[0] * _869) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_736 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_736 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_736 + 361 len 24]
                    if not (10000 * _869) - (ext_call.return_data[0] * _869) / 10000:
                        if ((10000 * _869) - (ext_call.return_data[0] * _869) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _869) - (ext_call.return_data[0] * _869) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _869) - (ext_call.return_data[0] * _869) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * (10000 * _869) - (ext_call.return_data[0] * _869) / 10000 / (10000 * _869) - (ext_call.return_data[0] * _869) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_736 + 354 len 31]
                        if ((10000 * _869) - (ext_call.return_data[0] * _869) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _869) - (ext_call.return_data[0] * _869) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _869) - (ext_call.return_data[0] * _869) / 10000 / ((10000 * _869) - (ext_call.return_data[0] * _869) / 10000) + Mask(112, 0, ext_call.return_data[32])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _742 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_659)
                _743 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _745 = sha3(mem[_743 + 32 len mem[_743]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_742 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_742 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_742 + 125] = _745
                mem[_742 + 157] = ext_call.return_data[0]
                mem[_742 + 72] = 85
                require ext_code.size(address(sha3(0, FACTORYAddress, _745, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _745, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_742 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if address(_659) == address(_656):
                    _870 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[64] = _742 + 253
                    mem[_742 + 189] = 30
                    mem[_742 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_742 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_742 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _742 + 321] = mem[idx + _742 + 221]
                            idx = idx + 32
                            continue 
                        mem[_742 + 321] = mem[_742 + 323 len 30]
                        revert with 0, 32, 30, mem[_742 + 321]
                    if not _870:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_742 + 364 len 21]
                    if (10000 * _870) - (ext_call.return_data[0] * _870) / _870 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_742 + 354 len 31]
                    if (10000 * _870) - (ext_call.return_data[0] * _870) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_742 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_742 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_742 + 361 len 24]
                    if not (10000 * _870) - (ext_call.return_data[0] * _870) / 10000:
                        if ((10000 * _870) - (ext_call.return_data[0] * _870) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _870) - (ext_call.return_data[0] * _870) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _870) - (ext_call.return_data[0] * _870) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * (10000 * _870) - (ext_call.return_data[0] * _870) / 10000 / (10000 * _870) - (ext_call.return_data[0] * _870) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_742 + 354 len 31]
                        if ((10000 * _870) - (ext_call.return_data[0] * _870) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _870) - (ext_call.return_data[0] * _870) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _870) - (ext_call.return_data[0] * _870) / 10000 / ((10000 * _870) - (ext_call.return_data[0] * _870) / 10000) + Mask(112, 0, ext_call.return_data[0])
                else:
                    _871 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[64] = _742 + 253
                    mem[_742 + 189] = 30
                    mem[_742 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_742 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_742 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _742 + 321] = mem[idx + _742 + 221]
                            idx = idx + 32
                            continue 
                        mem[_742 + 321] = mem[_742 + 323 len 30]
                        revert with 0, 32, 30, mem[_742 + 321]
                    if not _871:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_742 + 364 len 21]
                    if (10000 * _871) - (ext_call.return_data[0] * _871) / _871 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_742 + 354 len 31]
                    if (10000 * _871) - (ext_call.return_data[0] * _871) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_742 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_742 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_742 + 361 len 24]
                    if not (10000 * _871) - (ext_call.return_data[0] * _871) / 10000:
                        if ((10000 * _871) - (ext_call.return_data[0] * _871) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _871) - (ext_call.return_data[0] * _871) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _871) - (ext_call.return_data[0] * _871) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * (10000 * _871) - (ext_call.return_data[0] * _871) / 10000 / (10000 * _871) - (ext_call.return_data[0] * _871) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_742 + 354 len 31]
                        if ((10000 * _871) - (ext_call.return_data[0] * _871) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _871) - (ext_call.return_data[0] * _871) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _871) - (ext_call.return_data[0] * _871) / 10000 / ((10000 * _871) - (ext_call.return_data[0] * _871) / 10000) + Mask(112, 0, ext_call.return_data[32])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _748 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_656)
                _749 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _751 = sha3(mem[_749 + 32 len mem[_749]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_748 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_748 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_748 + 125] = _751
                mem[_748 + 157] = ext_call.return_data[0]
                mem[_748 + 72] = 85
                require ext_code.size(address(sha3(0, FACTORYAddress, _751, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _751, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_748 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if address(_659) == address(_656):
                    _872 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[64] = _748 + 253
                    mem[_748 + 189] = 30
                    mem[_748 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_748 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_748 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _748 + 321] = mem[idx + _748 + 221]
                            idx = idx + 32
                            continue 
                        mem[_748 + 321] = mem[_748 + 323 len 30]
                        revert with 0, 32, 30, mem[_748 + 321]
                    if not _872:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_748 + 364 len 21]
                    if (10000 * _872) - (ext_call.return_data[0] * _872) / _872 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_748 + 354 len 31]
                    if (10000 * _872) - (ext_call.return_data[0] * _872) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_748 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_748 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_748 + 361 len 24]
                    if not (10000 * _872) - (ext_call.return_data[0] * _872) / 10000:
                        if ((10000 * _872) - (ext_call.return_data[0] * _872) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _872) - (ext_call.return_data[0] * _872) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _872) - (ext_call.return_data[0] * _872) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * (10000 * _872) - (ext_call.return_data[0] * _872) / 10000 / (10000 * _872) - (ext_call.return_data[0] * _872) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_748 + 354 len 31]
                        if ((10000 * _872) - (ext_call.return_data[0] * _872) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _872) - (ext_call.return_data[0] * _872) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _872) - (ext_call.return_data[0] * _872) / 10000 / ((10000 * _872) - (ext_call.return_data[0] * _872) / 10000) + Mask(112, 0, ext_call.return_data[0])
                else:
                    _873 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    mem[64] = _748 + 253
                    mem[_748 + 189] = 30
                    mem[_748 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_748 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_748 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _748 + 321] = mem[idx + _748 + 221]
                            idx = idx + 32
                            continue 
                        mem[_748 + 321] = mem[_748 + 323 len 30]
                        revert with 0, 32, 30, mem[_748 + 321]
                    if not _873:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_748 + 364 len 21]
                    if (10000 * _873) - (ext_call.return_data[0] * _873) / _873 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_748 + 354 len 31]
                    if (10000 * _873) - (ext_call.return_data[0] * _873) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_748 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_748 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_748 + 361 len 24]
                    if not (10000 * _873) - (ext_call.return_data[0] * _873) / 10000:
                        if ((10000 * _873) - (ext_call.return_data[0] * _873) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _873) - (ext_call.return_data[0] * _873) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / ((10000 * _873) - (ext_call.return_data[0] * _873) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * (10000 * _873) - (ext_call.return_data[0] * _873) / 10000 / (10000 * _873) - (ext_call.return_data[0] * _873) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_748 + 354 len 31]
                        if ((10000 * _873) - (ext_call.return_data[0] * _873) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _873) - (ext_call.return_data[0] * _873) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _873) - (ext_call.return_data[0] * _873) / 10000 / ((10000 * _873) - (ext_call.return_data[0] * _873) / 10000) + Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    _665 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _665) + 32]
}

function swapPrecondition(address arg1) {
    require calldata.size - 4 >= 32
    if DGASAddress == arg1:
        return 1
    if address(WETHAddress) == arg1:
        return 1
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 'TOKEN_TO_DGAS_PAIR_MIN_PERCENT'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(WETHAddress), DGASAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args DGASAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.checkPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args DGASAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.checkPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(WETHAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(WETHAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 1
    if not ext_call.return_data[0]:
        return 1
    if DGASAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if DGASAddress < arg1:
        if not DGASAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if DGASAddress == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if DGASAddress < arg1:
            if not DGASAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, arg1), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, arg1), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, DGASAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(arg1, DGASAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if DGASAddress == DGASAddress:
            if address(WETHAddress) == arg1:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
            if address(WETHAddress) < arg1:
                if not address(WETHAddress):
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == arg1:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
                if address(WETHAddress) < arg1:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not arg1:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(WETHAddress) == address(WETHAddress):
                    if address(WETHAddress) == DGASAddress:
                        revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                    if address(WETHAddress) < DGASAddress:
                        if not address(WETHAddress):
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if address(WETHAddress) == DGASAddress:
                            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                        if address(WETHAddress) < DGASAddress:
                            if not address(WETHAddress):
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        else:
                            if not DGASAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if address(WETHAddress) == address(WETHAddress):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require ext_call.return_data[50 len 14]
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                                    return 0 / ext_call.return_data[50 len 14] >= 0
                                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            require ext_call.return_data[50 len 14]
                            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    else:
                        if not DGASAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if address(WETHAddress) == DGASAddress:
                            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                        if address(WETHAddress) < DGASAddress:
                            if not address(WETHAddress):
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        else:
                            if not DGASAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if DGASAddress == address(WETHAddress):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require ext_call.return_data[50 len 14]
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                                    return 0 / ext_call.return_data[50 len 14] >= 0
                                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            require ext_call.return_data[50 len 14]
                            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if not Mask(112, 0, ext_call.return_data[0]):
                        require ext_call.return_data[18 len 14]
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]):
                            return 0 / ext_call.return_data[18 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[18 len 14]
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]):
                        return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
            else:
                if not arg1:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == arg1:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
                if address(WETHAddress) < arg1:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not arg1:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg1 == address(WETHAddress):
                    if address(WETHAddress) == DGASAddress:
                        revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                    if address(WETHAddress) < DGASAddress:
                        if not address(WETHAddress):
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if address(WETHAddress) == DGASAddress:
                            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                        if address(WETHAddress) < DGASAddress:
                            if not address(WETHAddress):
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        else:
                            if not DGASAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if address(WETHAddress) == address(WETHAddress):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require ext_call.return_data[50 len 14]
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                                    return 0 / ext_call.return_data[50 len 14] >= 0
                                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            require ext_call.return_data[50 len 14]
                            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    else:
                        if not DGASAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if address(WETHAddress) == DGASAddress:
                            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                        if address(WETHAddress) < DGASAddress:
                            if not address(WETHAddress):
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        else:
                            if not DGASAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if DGASAddress == address(WETHAddress):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require ext_call.return_data[50 len 14]
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                                    return 0 / ext_call.return_data[50 len 14] >= 0
                                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            require ext_call.return_data[50 len 14]
                            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if not Mask(112, 0, ext_call.return_data[0]):
                        require ext_call.return_data[18 len 14]
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]):
                            return 0 / ext_call.return_data[18 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[18 len 14]
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]):
                        return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
            if address(WETHAddress) == DGASAddress:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
            if address(WETHAddress) < DGASAddress:
                if not address(WETHAddress):
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == DGASAddress:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                if address(WETHAddress) < DGASAddress:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(WETHAddress) == address(WETHAddress):
                    if not Mask(112, 0, ext_call.return_data[0]):
                        require ext_call.return_data[50 len 14]
                        if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]):
                            return 0 / ext_call.return_data[50 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[50 len 14]
                    if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                        return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            else:
                if not DGASAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == DGASAddress:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                if address(WETHAddress) < DGASAddress:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if DGASAddress == address(WETHAddress):
                    if not Mask(112, 0, ext_call.return_data[0]):
                        require ext_call.return_data[50 len 14]
                        if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]):
                            return 0 / ext_call.return_data[50 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[50 len 14]
                    if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                        return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_call.return_data[18 len 14]
                if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]):
                    return 0 / ext_call.return_data[18 len 14] >= 0
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
            if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            require ext_call.return_data[18 len 14]
            if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]):
                return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= 0
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
    else:
        if not arg1:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if DGASAddress == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if DGASAddress < arg1:
            if not DGASAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, arg1), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, arg1), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, DGASAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(arg1, DGASAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == DGASAddress:
            if address(WETHAddress) == arg1:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
            if address(WETHAddress) < arg1:
                if not address(WETHAddress):
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == arg1:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
                if address(WETHAddress) < arg1:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not arg1:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(WETHAddress) == address(WETHAddress):
                    if address(WETHAddress) == DGASAddress:
                        revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                    if address(WETHAddress) < DGASAddress:
                        if not address(WETHAddress):
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if address(WETHAddress) == DGASAddress:
                            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                        if address(WETHAddress) < DGASAddress:
                            if not address(WETHAddress):
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        else:
                            if not DGASAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if address(WETHAddress) == address(WETHAddress):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require ext_call.return_data[50 len 14]
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                                    return 0 / ext_call.return_data[50 len 14] >= 0
                                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            require ext_call.return_data[50 len 14]
                            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    else:
                        if not DGASAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if address(WETHAddress) == DGASAddress:
                            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                        if address(WETHAddress) < DGASAddress:
                            if not address(WETHAddress):
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        else:
                            if not DGASAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if DGASAddress == address(WETHAddress):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require ext_call.return_data[50 len 14]
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                                    return 0 / ext_call.return_data[50 len 14] >= 0
                                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            require ext_call.return_data[50 len 14]
                            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if not Mask(112, 0, ext_call.return_data[0]):
                        require ext_call.return_data[18 len 14]
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]):
                            return 0 / ext_call.return_data[18 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[18 len 14]
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]):
                        return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
            else:
                if not arg1:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == arg1:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
                if address(WETHAddress) < arg1:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not arg1:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg1 == address(WETHAddress):
                    if address(WETHAddress) == DGASAddress:
                        revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                    if address(WETHAddress) < DGASAddress:
                        if not address(WETHAddress):
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if address(WETHAddress) == DGASAddress:
                            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                        if address(WETHAddress) < DGASAddress:
                            if not address(WETHAddress):
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        else:
                            if not DGASAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if address(WETHAddress) == address(WETHAddress):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require ext_call.return_data[50 len 14]
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                                    return 0 / ext_call.return_data[50 len 14] >= 0
                                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            require ext_call.return_data[50 len 14]
                            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    else:
                        if not DGASAddress:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        if address(WETHAddress) == DGASAddress:
                            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                        if address(WETHAddress) < DGASAddress:
                            if not address(WETHAddress):
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        else:
                            if not DGASAddress:
                                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                            require ext_code.size(FACTORYAddress)
                            staticcall FACTORYAddress.contractCodeHash() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if DGASAddress == address(WETHAddress):
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require ext_call.return_data[50 len 14]
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                                    return 0 / ext_call.return_data[50 len 14] >= 0
                                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            require ext_call.return_data[50 len 14]
                            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if not Mask(112, 0, ext_call.return_data[0]):
                        require ext_call.return_data[18 len 14]
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]):
                            return 0 / ext_call.return_data[18 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[18 len 14]
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]):
                        return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
            if address(WETHAddress) == DGASAddress:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
            if address(WETHAddress) < DGASAddress:
                if not address(WETHAddress):
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == DGASAddress:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                if address(WETHAddress) < DGASAddress:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(WETHAddress) == address(WETHAddress):
                    if not Mask(112, 0, ext_call.return_data[0]):
                        require ext_call.return_data[50 len 14]
                        if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]):
                            return 0 / ext_call.return_data[50 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[50 len 14]
                    if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                        return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            else:
                if not DGASAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == DGASAddress:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                if address(WETHAddress) < DGASAddress:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if DGASAddress == address(WETHAddress):
                    if not Mask(112, 0, ext_call.return_data[0]):
                        require ext_call.return_data[50 len 14]
                        if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]):
                            return 0 / ext_call.return_data[50 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[50 len 14]
                    if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]):
                        return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            if not Mask(112, 0, ext_call.return_data[0]):
                require ext_call.return_data[18 len 14]
                if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]):
                    return 0 / ext_call.return_data[18 len 14] >= 0
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
            if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            require ext_call.return_data[18 len 14]
            if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]):
                return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= 0
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
    if address(WETHAddress) == arg1:
        revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
    if address(WETHAddress) < arg1:
        if not address(WETHAddress):
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if address(WETHAddress) == arg1:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
        if address(WETHAddress) < arg1:
            if not address(WETHAddress):
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if address(WETHAddress) == address(WETHAddress):
            if address(WETHAddress) == DGASAddress:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
            if address(WETHAddress) < DGASAddress:
                if not address(WETHAddress):
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == DGASAddress:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                if address(WETHAddress) < DGASAddress:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(WETHAddress) == address(WETHAddress):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require ext_call.return_data[50 len 14]
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                            return 0 / ext_call.return_data[50 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[50 len 14]
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]):
                        return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            else:
                if not DGASAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == DGASAddress:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                if address(WETHAddress) < DGASAddress:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if DGASAddress == address(WETHAddress):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require ext_call.return_data[50 len 14]
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                            return 0 / ext_call.return_data[50 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[50 len 14]
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]):
                        return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_call.return_data[18 len 14]
                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]):
                    return 0 / ext_call.return_data[18 len 14] >= 0
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
            if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            require ext_call.return_data[18 len 14]
            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]):
                return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] >= 0
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
    else:
        if not arg1:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if address(WETHAddress) == arg1:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
        if address(WETHAddress) < arg1:
            if not address(WETHAddress):
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == address(WETHAddress):
            if address(WETHAddress) == DGASAddress:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
            if address(WETHAddress) < DGASAddress:
                if not address(WETHAddress):
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == DGASAddress:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                if address(WETHAddress) < DGASAddress:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(WETHAddress) == address(WETHAddress):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require ext_call.return_data[50 len 14]
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                            return 0 / ext_call.return_data[50 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[50 len 14]
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]):
                        return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            else:
                if not DGASAddress:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if address(WETHAddress) == DGASAddress:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
                if address(WETHAddress) < DGASAddress:
                    if not address(WETHAddress):
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                else:
                    if not DGASAddress:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if DGASAddress == address(WETHAddress):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require ext_call.return_data[50 len 14]
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]):
                            return 0 / ext_call.return_data[50 len 14] >= 0
                        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                        return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    require ext_call.return_data[50 len 14]
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]):
                        return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= 0
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                    return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_call.return_data[18 len 14]
                if Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]):
                    return 0 / ext_call.return_data[18 len 14] >= 0
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
            if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            require ext_call.return_data[18 len 14]
            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]):
                return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] >= 0
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
    if address(WETHAddress) == DGASAddress:
        revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
    if address(WETHAddress) < DGASAddress:
        if not address(WETHAddress):
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if address(WETHAddress) == DGASAddress:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
        if address(WETHAddress) < DGASAddress:
            if not address(WETHAddress):
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not DGASAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if address(WETHAddress) == address(WETHAddress):
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_call.return_data[50 len 14]
                if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]):
                    return 0 / ext_call.return_data[50 len 14] >= 0
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            require ext_call.return_data[50 len 14]
            if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]):
                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= 0
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
    else:
        if not DGASAddress:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if address(WETHAddress) == DGASAddress:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[579 len 27]
        if address(WETHAddress) < DGASAddress:
            if not address(WETHAddress):
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), DGASAddress), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not DGASAddress:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(FACTORYAddress)
            staticcall FACTORYAddress.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])))
            staticcall address(sha3(0, FACTORYAddress, sha3(DGASAddress, address(WETHAddress)), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if DGASAddress == address(WETHAddress):
            if not Mask(112, 0, ext_call.return_data[32]):
                require ext_call.return_data[50 len 14]
                if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) < 0 / ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]):
                    return 0 / ext_call.return_data[50 len 14] >= 0
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
                return 0 / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            require ext_call.return_data[50 len 14]
            if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) < ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]):
                return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= 0
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14]) != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
            return ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * ext_call.return_data[0]) / 10000
    if not Mask(112, 0, ext_call.return_data[32]):
        require ext_call.return_data[18 len 14]
        if Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]) < 0 / ext_call.return_data[18 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        if not Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]):
            return 0 / ext_call.return_data[18 len 14] >= 0
        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (0 / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
        return 0 / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (0 / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
    if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
    require ext_call.return_data[18 len 14]
    if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]) < ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]:
        revert with 0, 'SafeMath: addition overflow'
    if not Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]):
        return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] >= 0
    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14]) != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[764 len 31]
    return ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] >= (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * ext_call.return_data[0]) / 10000
}

function getAmountsIn(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 132] = 0x535741505f4645455f50455243454e5400000000000000000000000000000000
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x535741505f4645455f50455243454e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require arg2.length - 1 < arg2.length
        mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
        idx = mem[96] - 1
        while idx:
            require idx - 1 < mem[96]
            _2483 = mem[(32 * idx - 1) + 128]
            require idx < mem[96]
            _2489 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _2594 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_2489)
                    _2595 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2597 = sha3(mem[_2595 + 32 len mem[_2595]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_2594 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2594 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_2594 + 125] = _2597
                    mem[_2594 + 157] = ext_call.return_data[0]
                    mem[_2594 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _2597, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _2597, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2594 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_2483) == address(_2483):
                        _2978 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_2594 + 301 len 20]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2594 + 297 len 24]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2594 + 297 len 24]
                        if not ext_call.return_data[18 len 14]:
                            mem[_2594 + 189] = 30
                            mem[_2594 + 221] = 'SafeMath: subtraction overflow'
                            if _2978 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_2594 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2594 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2594 + 321] = mem[idx + _2594 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2594 + 321] = mem[_2594 + 323 len 30]
                                revert with 0, 32, 30, mem[_2594 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _2978
                            if (0 / Mask(112, 0, ext_call.return_data[32]) - _2978) + 1 < 0 / Mask(112, 0, ext_call.return_data[32]) - _2978:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2594 + 317
                            mem[_2594 + 253] = 30
                            mem[_2594 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2594 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2594 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2594 + 385] = mem[idx + _2594 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2594 + 385] = mem[_2594 + 387 len 30]
                                revert with 0, 32, 30, mem[_2594 + 385]
                            if not (0 / Mask(112, 0, ext_call.return_data[32]) - _2978) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2978) + 10000 / (0 / Mask(112, 0, ext_call.return_data[32]) - _2978) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2594 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2978) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2978) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2978) + 10000 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2594 + 290 len 31]
                            mem[_2594 + 189] = 30
                            mem[_2594 + 221] = 'SafeMath: subtraction overflow'
                            if _2978 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_2594 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2594 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2594 + 321] = mem[idx + _2594 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2594 + 321] = mem[_2594 + 323 len 30]
                                revert with 0, 32, 30, mem[_2594 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _2978
                            if (_2978 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2978) + 1 < _2978 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2978:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2594 + 317
                            mem[_2594 + 253] = 30
                            mem[_2594 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2594 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2594 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2594 + 385] = mem[idx + _2594 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2594 + 385] = mem[_2594 + 387 len 30]
                                revert with 0, 32, 30, mem[_2594 + 385]
                            if not (_2978 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2978) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * _2978 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2978) + 10000 / (_2978 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2978) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2594 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * _2978 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2978) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _2978 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2978) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _2978 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2978) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        _2979 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_2594 + 301 len 20]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2594 + 297 len 24]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2594 + 297 len 24]
                        if not ext_call.return_data[50 len 14]:
                            mem[_2594 + 189] = 30
                            mem[_2594 + 221] = 'SafeMath: subtraction overflow'
                            if _2979 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_2594 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2594 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2594 + 321] = mem[idx + _2594 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2594 + 321] = mem[_2594 + 323 len 30]
                                revert with 0, 32, 30, mem[_2594 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _2979
                            if (0 / Mask(112, 0, ext_call.return_data[0]) - _2979) + 1 < 0 / Mask(112, 0, ext_call.return_data[0]) - _2979:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2594 + 317
                            mem[_2594 + 253] = 30
                            mem[_2594 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2594 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2594 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2594 + 385] = mem[idx + _2594 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2594 + 385] = mem[_2594 + 387 len 30]
                                revert with 0, 32, 30, mem[_2594 + 385]
                            if not (0 / Mask(112, 0, ext_call.return_data[0]) - _2979) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2979) + 10000 / (0 / Mask(112, 0, ext_call.return_data[0]) - _2979) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2594 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2979) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2979) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2979) + 10000 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2594 + 290 len 31]
                            mem[_2594 + 189] = 30
                            mem[_2594 + 221] = 'SafeMath: subtraction overflow'
                            if _2979 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_2594 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2594 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2594 + 321] = mem[idx + _2594 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2594 + 321] = mem[_2594 + 323 len 30]
                                revert with 0, 32, 30, mem[_2594 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _2979
                            if (_2979 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2979) + 1 < _2979 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2979:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2594 + 317
                            mem[_2594 + 253] = 30
                            mem[_2594 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2594 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2594 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2594 + 385] = mem[idx + _2594 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2594 + 385] = mem[_2594 + 387 len 30]
                                revert with 0, 32, 30, mem[_2594 + 385]
                            if not (_2979 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2979) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * _2979 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2979) + 10000 / (_2979 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2979) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2594 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * _2979 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2979) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _2979 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2979) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _2979 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2979) + 10000 / -ext_call.return_data[0] + 10000) + 1
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _2600 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _2601 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2603 = sha3(mem[_2601 + 32 len mem[_2601]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_2600 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2600 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_2600 + 125] = _2603
                    mem[_2600 + 157] = ext_call.return_data[0]
                    mem[_2600 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _2603, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _2603, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2600 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_2483) == address(_2483):
                        _2980 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_2600 + 301 len 20]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2600 + 297 len 24]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2600 + 297 len 24]
                        if not ext_call.return_data[18 len 14]:
                            mem[_2600 + 189] = 30
                            mem[_2600 + 221] = 'SafeMath: subtraction overflow'
                            if _2980 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_2600 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2600 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2600 + 321] = mem[idx + _2600 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2600 + 321] = mem[_2600 + 323 len 30]
                                revert with 0, 32, 30, mem[_2600 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _2980
                            if (0 / Mask(112, 0, ext_call.return_data[32]) - _2980) + 1 < 0 / Mask(112, 0, ext_call.return_data[32]) - _2980:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2600 + 317
                            mem[_2600 + 253] = 30
                            mem[_2600 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2600 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2600 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2600 + 385] = mem[idx + _2600 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2600 + 385] = mem[_2600 + 387 len 30]
                                revert with 0, 32, 30, mem[_2600 + 385]
                            if not (0 / Mask(112, 0, ext_call.return_data[32]) - _2980) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2980) + 10000 / (0 / Mask(112, 0, ext_call.return_data[32]) - _2980) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2600 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2980) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2980) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2980) + 10000 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2600 + 290 len 31]
                            mem[_2600 + 189] = 30
                            mem[_2600 + 221] = 'SafeMath: subtraction overflow'
                            if _2980 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_2600 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2600 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2600 + 321] = mem[idx + _2600 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2600 + 321] = mem[_2600 + 323 len 30]
                                revert with 0, 32, 30, mem[_2600 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _2980
                            if (_2980 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2980) + 1 < _2980 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2980:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2600 + 317
                            mem[_2600 + 253] = 30
                            mem[_2600 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2600 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2600 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2600 + 385] = mem[idx + _2600 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2600 + 385] = mem[_2600 + 387 len 30]
                                revert with 0, 32, 30, mem[_2600 + 385]
                            if not (_2980 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2980) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * _2980 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2980) + 10000 / (_2980 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2980) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2600 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * _2980 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2980) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _2980 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2980) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _2980 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2980) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        _2981 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_2600 + 301 len 20]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2600 + 297 len 24]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2600 + 297 len 24]
                        if not ext_call.return_data[50 len 14]:
                            mem[_2600 + 189] = 30
                            mem[_2600 + 221] = 'SafeMath: subtraction overflow'
                            if _2981 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_2600 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2600 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2600 + 321] = mem[idx + _2600 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2600 + 321] = mem[_2600 + 323 len 30]
                                revert with 0, 32, 30, mem[_2600 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _2981
                            if (0 / Mask(112, 0, ext_call.return_data[0]) - _2981) + 1 < 0 / Mask(112, 0, ext_call.return_data[0]) - _2981:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2600 + 317
                            mem[_2600 + 253] = 30
                            mem[_2600 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2600 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2600 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2600 + 385] = mem[idx + _2600 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2600 + 385] = mem[_2600 + 387 len 30]
                                revert with 0, 32, 30, mem[_2600 + 385]
                            if not (0 / Mask(112, 0, ext_call.return_data[0]) - _2981) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2981) + 10000 / (0 / Mask(112, 0, ext_call.return_data[0]) - _2981) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2600 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2981) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2981) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2981) + 10000 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2600 + 290 len 31]
                            mem[_2600 + 189] = 30
                            mem[_2600 + 221] = 'SafeMath: subtraction overflow'
                            if _2981 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_2600 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2600 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2600 + 321] = mem[idx + _2600 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2600 + 321] = mem[_2600 + 323 len 30]
                                revert with 0, 32, 30, mem[_2600 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _2981
                            if (_2981 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2981) + 1 < _2981 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2981:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2600 + 317
                            mem[_2600 + 253] = 30
                            mem[_2600 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2600 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2600 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2600 + 385] = mem[idx + _2600 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2600 + 385] = mem[_2600 + 387 len 30]
                                revert with 0, 32, 30, mem[_2600 + 385]
                            if not (_2981 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2981) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * _2981 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2981) + 10000 / (_2981 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2981) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2600 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * _2981 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2981) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _2981 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2981) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _2981 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2981) + 10000 / -ext_call.return_data[0] + 10000) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _2606 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_2489)
                    _2607 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2609 = sha3(mem[_2607 + 32 len mem[_2607]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_2606 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2606 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_2606 + 125] = _2609
                    mem[_2606 + 157] = ext_call.return_data[0]
                    mem[_2606 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _2609, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _2609, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2606 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_2489) == address(_2483):
                        _2982 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_2606 + 301 len 20]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2606 + 297 len 24]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2606 + 297 len 24]
                        if not ext_call.return_data[18 len 14]:
                            mem[_2606 + 189] = 30
                            mem[_2606 + 221] = 'SafeMath: subtraction overflow'
                            if _2982 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_2606 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2606 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2606 + 321] = mem[idx + _2606 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2606 + 321] = mem[_2606 + 323 len 30]
                                revert with 0, 32, 30, mem[_2606 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _2982
                            if (0 / Mask(112, 0, ext_call.return_data[32]) - _2982) + 1 < 0 / Mask(112, 0, ext_call.return_data[32]) - _2982:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2606 + 317
                            mem[_2606 + 253] = 30
                            mem[_2606 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2606 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2606 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2606 + 385] = mem[idx + _2606 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2606 + 385] = mem[_2606 + 387 len 30]
                                revert with 0, 32, 30, mem[_2606 + 385]
                            if not (0 / Mask(112, 0, ext_call.return_data[32]) - _2982) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2982) + 10000 / (0 / Mask(112, 0, ext_call.return_data[32]) - _2982) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2606 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2982) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2982) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2982) + 10000 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2606 + 290 len 31]
                            mem[_2606 + 189] = 30
                            mem[_2606 + 221] = 'SafeMath: subtraction overflow'
                            if _2982 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_2606 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2606 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2606 + 321] = mem[idx + _2606 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2606 + 321] = mem[_2606 + 323 len 30]
                                revert with 0, 32, 30, mem[_2606 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _2982
                            if (_2982 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2982) + 1 < _2982 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2982:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2606 + 317
                            mem[_2606 + 253] = 30
                            mem[_2606 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2606 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2606 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2606 + 385] = mem[idx + _2606 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2606 + 385] = mem[_2606 + 387 len 30]
                                revert with 0, 32, 30, mem[_2606 + 385]
                            if not (_2982 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2982) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * _2982 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2982) + 10000 / (_2982 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2982) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2606 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * _2982 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2982) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _2982 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2982) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _2982 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2982) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        _2983 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_2606 + 301 len 20]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2606 + 297 len 24]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2606 + 297 len 24]
                        if not ext_call.return_data[50 len 14]:
                            mem[_2606 + 189] = 30
                            mem[_2606 + 221] = 'SafeMath: subtraction overflow'
                            if _2983 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_2606 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2606 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2606 + 321] = mem[idx + _2606 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2606 + 321] = mem[_2606 + 323 len 30]
                                revert with 0, 32, 30, mem[_2606 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _2983
                            if (0 / Mask(112, 0, ext_call.return_data[0]) - _2983) + 1 < 0 / Mask(112, 0, ext_call.return_data[0]) - _2983:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2606 + 317
                            mem[_2606 + 253] = 30
                            mem[_2606 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2606 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2606 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2606 + 385] = mem[idx + _2606 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2606 + 385] = mem[_2606 + 387 len 30]
                                revert with 0, 32, 30, mem[_2606 + 385]
                            if not (0 / Mask(112, 0, ext_call.return_data[0]) - _2983) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2983) + 10000 / (0 / Mask(112, 0, ext_call.return_data[0]) - _2983) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2606 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2983) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2983) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2983) + 10000 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2606 + 290 len 31]
                            mem[_2606 + 189] = 30
                            mem[_2606 + 221] = 'SafeMath: subtraction overflow'
                            if _2983 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_2606 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2606 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2606 + 321] = mem[idx + _2606 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2606 + 321] = mem[_2606 + 323 len 30]
                                revert with 0, 32, 30, mem[_2606 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _2983
                            if (_2983 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2983) + 1 < _2983 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2983:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2606 + 317
                            mem[_2606 + 253] = 30
                            mem[_2606 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2606 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2606 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2606 + 385] = mem[idx + _2606 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2606 + 385] = mem[_2606 + 387 len 30]
                                revert with 0, 32, 30, mem[_2606 + 385]
                            if not (_2983 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2983) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * _2983 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2983) + 10000 / (_2983 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2983) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2606 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * _2983 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2983) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _2983 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2983) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _2983 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2983) + 10000 / -ext_call.return_data[0] + 10000) + 1
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _2612 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _2613 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2615 = sha3(mem[_2613 + 32 len mem[_2613]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_2612 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2612 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_2612 + 125] = _2615
                    mem[_2612 + 157] = ext_call.return_data[0]
                    mem[_2612 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _2615, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _2615, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_2612 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + 128]
                    if address(_2489) == address(_2483):
                        _2984 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_2612 + 301 len 20]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2612 + 297 len 24]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2612 + 297 len 24]
                        if not ext_call.return_data[18 len 14]:
                            mem[_2612 + 189] = 30
                            mem[_2612 + 221] = 'SafeMath: subtraction overflow'
                            if _2984 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_2612 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2612 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2612 + 321] = mem[idx + _2612 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2612 + 321] = mem[_2612 + 323 len 30]
                                revert with 0, 32, 30, mem[_2612 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _2984
                            if (0 / Mask(112, 0, ext_call.return_data[32]) - _2984) + 1 < 0 / Mask(112, 0, ext_call.return_data[32]) - _2984:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2612 + 317
                            mem[_2612 + 253] = 30
                            mem[_2612 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2612 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2612 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2612 + 385] = mem[idx + _2612 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2612 + 385] = mem[_2612 + 387 len 30]
                                revert with 0, 32, 30, mem[_2612 + 385]
                            if not (0 / Mask(112, 0, ext_call.return_data[32]) - _2984) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2984) + 10000 / (0 / Mask(112, 0, ext_call.return_data[32]) - _2984) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2612 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2984) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2984) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _2984) + 10000 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2612 + 290 len 31]
                            mem[_2612 + 189] = 30
                            mem[_2612 + 221] = 'SafeMath: subtraction overflow'
                            if _2984 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_2612 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2612 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2612 + 321] = mem[idx + _2612 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2612 + 321] = mem[_2612 + 323 len 30]
                                revert with 0, 32, 30, mem[_2612 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _2984
                            if (_2984 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2984) + 1 < _2984 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2984:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2612 + 317
                            mem[_2612 + 253] = 30
                            mem[_2612 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2612 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2612 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2612 + 385] = mem[idx + _2612 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2612 + 385] = mem[_2612 + 387 len 30]
                                revert with 0, 32, 30, mem[_2612 + 385]
                            if not (_2984 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2984) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * _2984 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2984) + 10000 / (_2984 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2984) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2612 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * _2984 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2984) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _2984 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2984) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _2984 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _2984) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        _2985 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_2612 + 301 len 20]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2612 + 297 len 24]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2612 + 297 len 24]
                        if not ext_call.return_data[50 len 14]:
                            mem[_2612 + 189] = 30
                            mem[_2612 + 221] = 'SafeMath: subtraction overflow'
                            if _2985 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_2612 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2612 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2612 + 321] = mem[idx + _2612 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2612 + 321] = mem[_2612 + 323 len 30]
                                revert with 0, 32, 30, mem[_2612 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _2985
                            if (0 / Mask(112, 0, ext_call.return_data[0]) - _2985) + 1 < 0 / Mask(112, 0, ext_call.return_data[0]) - _2985:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2612 + 317
                            mem[_2612 + 253] = 30
                            mem[_2612 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2612 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2612 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2612 + 385] = mem[idx + _2612 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2612 + 385] = mem[_2612 + 387 len 30]
                                revert with 0, 32, 30, mem[_2612 + 385]
                            if not (0 / Mask(112, 0, ext_call.return_data[0]) - _2985) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2985) + 10000 / (0 / Mask(112, 0, ext_call.return_data[0]) - _2985) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2612 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2985) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2985) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _2985) + 10000 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2612 + 290 len 31]
                            mem[_2612 + 189] = 30
                            mem[_2612 + 221] = 'SafeMath: subtraction overflow'
                            if _2985 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_2612 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2612 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2612 + 321] = mem[idx + _2612 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_2612 + 321] = mem[_2612 + 323 len 30]
                                revert with 0, 32, 30, mem[_2612 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _2985
                            if (_2985 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2985) + 1 < _2985 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2985:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _2612 + 317
                            mem[_2612 + 253] = 30
                            mem[_2612 + 285] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_2612 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2612 + 321] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2612 + 385] = mem[idx + _2612 + 285]
                                    idx = idx + 32
                                    continue 
                                mem[_2612 + 385] = mem[_2612 + 387 len 30]
                                revert with 0, 32, 30, mem[_2612 + 385]
                            if not (_2985 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2985) + 1:
                                require -ext_call.return_data[0] + 10000
                                if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                            else:
                                if (10000 * _2985 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2985) + 10000 / (_2985 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2985) + 1 != 10000:
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2612 + 418 len 31]
                                require -ext_call.return_data[0] + 10000
                                if ((10000 * _2985 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2985) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _2985 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2985) + 10000 / -ext_call.return_data[0] + 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg2.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _2985 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _2985) + 10000 / -ext_call.return_data[0] + 10000) + 1
            idx = idx - 1
            continue 
        require 0 < mem[(32 * arg2.length) + 128]
        _2482 = mem[(32 * arg2.length) + 160]
        _2488 = mem[96]
        require mem[96] <= test266151307()
        _2492 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _2488) + 32
        if not _2488:
            require 0 < mem[_2492]
            mem[_2492 + 32] = _2482
            _4942 = mem[96]
            s = 0
            while s < _4942 - 1:
                require s < mem[96]
                _5014 = mem[(32 * s) + 128]
                require s + 1 < mem[96]
                _5150 = mem[(32 * s + 1) + 128]
                if mem[(32 * s) + 140 len 20] == mem[(32 * s + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * s) + 140 len 20] < mem[(32 * s + 1) + 140 len 20]:
                    if not mem[(32 * s) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if mem[(32 * s) + 140 len 20] == mem[(32 * s + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * s) + 140 len 20] < mem[(32 * s + 1) + 140 len 20]:
                        if not mem[(32 * s) + 140 len 20]:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        _5310 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                        mem[mem[64] + 52] = address(_5150)
                        _5311 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _5313 = sha3(mem[_5311 + 32 len mem[_5311]])
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_5310 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_5310 + 105] = Mask(160, 96, FACTORYAddress)
                        mem[_5310 + 125] = _5313
                        mem[_5310 + 157] = ext_call.return_data[0]
                        mem[_5310 + 72] = 85
                        mem[64] = _5310 + 189
                        require ext_code.size(address(sha3(0, FACTORYAddress, _5313, ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, _5313, ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                        mem[_5310 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_2492]
                        if address(_5014) == address(_5014):
                            _5614 = mem[(32 * s) + _2492 + 32]
                            mem[64] = _5310 + 253
                            mem[_5310 + 189] = 30
                            mem[_5310 + 221] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_5310 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5310 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5310 + 321] = mem[idx + _5310 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_5310 + 321] = mem[_5310 + 323 len 30]
                                revert with 0, 32, 30, mem[_5310 + 321]
                            if not _5614:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5310 + 364 len 21]
                            if (10000 * _5614) - (ext_call.return_data[0] * _5614) / _5614 != -ext_call.return_data[0] + 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5310 + 354 len 31]
                            if (10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000 <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5310 + 364 len 21]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5310 + 361 len 24]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5310 + 361 len 24]
                            if not (10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000:
                                if ((10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000) + Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = 0 / ((10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000 / (10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5310 + 354 len 31]
                                if ((10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000) + Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000 / ((10000 * _5614) - (ext_call.return_data[0] * _5614) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            _5615 = mem[(32 * s) + _2492 + 32]
                            mem[64] = _5310 + 253
                            mem[_5310 + 189] = 30
                            mem[_5310 + 221] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_5310 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5310 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5310 + 321] = mem[idx + _5310 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_5310 + 321] = mem[_5310 + 323 len 30]
                                revert with 0, 32, 30, mem[_5310 + 321]
                            if not _5615:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5310 + 364 len 21]
                            if (10000 * _5615) - (ext_call.return_data[0] * _5615) / _5615 != -ext_call.return_data[0] + 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5310 + 354 len 31]
                            if (10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000 <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5310 + 364 len 21]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5310 + 361 len 24]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5310 + 361 len 24]
                            if not (10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000:
                                if ((10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000) + Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = 0 / ((10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000 / (10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5310 + 354 len 31]
                                if ((10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000) + Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000 / ((10000 * _5615) - (ext_call.return_data[0] * _5615) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not mem[(32 * s + 1) + 140 len 20]:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        _5316 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * s + 1) + 128])
                        mem[mem[64] + 52] = address(_5014)
                        _5317 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _5319 = sha3(mem[_5317 + 32 len mem[_5317]])
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_5316 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_5316 + 105] = Mask(160, 96, FACTORYAddress)
                        mem[_5316 + 125] = _5319
                        mem[_5316 + 157] = ext_call.return_data[0]
                        mem[_5316 + 72] = 85
                        mem[64] = _5316 + 189
                        require ext_code.size(address(sha3(0, FACTORYAddress, _5319, ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, _5319, ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                        mem[_5316 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_2492]
                        if address(_5014) == address(_5014):
                            _5616 = mem[(32 * s) + _2492 + 32]
                            mem[64] = _5316 + 253
                            mem[_5316 + 189] = 30
                            mem[_5316 + 221] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_5316 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5316 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5316 + 321] = mem[idx + _5316 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_5316 + 321] = mem[_5316 + 323 len 30]
                                revert with 0, 32, 30, mem[_5316 + 321]
                            if not _5616:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5316 + 364 len 21]
                            if (10000 * _5616) - (ext_call.return_data[0] * _5616) / _5616 != -ext_call.return_data[0] + 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5316 + 354 len 31]
                            if (10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000 <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5316 + 364 len 21]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5316 + 361 len 24]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5316 + 361 len 24]
                            if not (10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000:
                                if ((10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000) + Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = 0 / ((10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000 / (10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5316 + 354 len 31]
                                if ((10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000) + Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000 / ((10000 * _5616) - (ext_call.return_data[0] * _5616) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            _5617 = mem[(32 * s) + _2492 + 32]
                            mem[64] = _5316 + 253
                            mem[_5316 + 189] = 30
                            mem[_5316 + 221] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_5316 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5316 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5316 + 321] = mem[idx + _5316 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_5316 + 321] = mem[_5316 + 323 len 30]
                                revert with 0, 32, 30, mem[_5316 + 321]
                            if not _5617:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5316 + 364 len 21]
                            if (10000 * _5617) - (ext_call.return_data[0] * _5617) / _5617 != -ext_call.return_data[0] + 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5316 + 354 len 31]
                            if (10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000 <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5316 + 364 len 21]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5316 + 361 len 24]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5316 + 361 len 24]
                            if not (10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000:
                                if ((10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000) + Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = 0 / ((10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000 / (10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5316 + 354 len 31]
                                if ((10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000) + Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000 / ((10000 * _5617) - (ext_call.return_data[0] * _5617) / 10000) + Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * s + 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    if mem[(32 * s) + 140 len 20] == mem[(32 * s + 1) + 140 len 20]:
                        revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * s) + 140 len 20] < mem[(32 * s + 1) + 140 len 20]:
                        if not mem[(32 * s) + 140 len 20]:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        _5322 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                        mem[mem[64] + 52] = address(_5150)
                        _5323 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _5325 = sha3(mem[_5323 + 32 len mem[_5323]])
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_5322 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_5322 + 105] = Mask(160, 96, FACTORYAddress)
                        mem[_5322 + 125] = _5325
                        mem[_5322 + 157] = ext_call.return_data[0]
                        mem[_5322 + 72] = 85
                        mem[64] = _5322 + 189
                        require ext_code.size(address(sha3(0, FACTORYAddress, _5325, ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, _5325, ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                        mem[_5322 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_2492]
                        if address(_5150) == address(_5014):
                            _5618 = mem[(32 * s) + _2492 + 32]
                            mem[64] = _5322 + 253
                            mem[_5322 + 189] = 30
                            mem[_5322 + 221] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_5322 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5322 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5322 + 321] = mem[idx + _5322 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_5322 + 321] = mem[_5322 + 323 len 30]
                                revert with 0, 32, 30, mem[_5322 + 321]
                            if not _5618:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5322 + 364 len 21]
                            if (10000 * _5618) - (ext_call.return_data[0] * _5618) / _5618 != -ext_call.return_data[0] + 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5322 + 354 len 31]
                            if (10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000 <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5322 + 364 len 21]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5322 + 361 len 24]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5322 + 361 len 24]
                            if not (10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000:
                                if ((10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000) + Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = 0 / ((10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000 / (10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5322 + 354 len 31]
                                if ((10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000) + Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000 / ((10000 * _5618) - (ext_call.return_data[0] * _5618) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            _5619 = mem[(32 * s) + _2492 + 32]
                            mem[64] = _5322 + 253
                            mem[_5322 + 189] = 30
                            mem[_5322 + 221] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_5322 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5322 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5322 + 321] = mem[idx + _5322 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_5322 + 321] = mem[_5322 + 323 len 30]
                                revert with 0, 32, 30, mem[_5322 + 321]
                            if not _5619:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5322 + 364 len 21]
                            if (10000 * _5619) - (ext_call.return_data[0] * _5619) / _5619 != -ext_call.return_data[0] + 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5322 + 354 len 31]
                            if (10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000 <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5322 + 364 len 21]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5322 + 361 len 24]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5322 + 361 len 24]
                            if not (10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000:
                                if ((10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000) + Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = 0 / ((10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000 / (10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5322 + 354 len 31]
                                if ((10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000) + Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000 / ((10000 * _5619) - (ext_call.return_data[0] * _5619) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not mem[(32 * s + 1) + 140 len 20]:
                            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                        _5328 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * s + 1) + 128])
                        mem[mem[64] + 52] = address(_5014)
                        _5329 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _5331 = sha3(mem[_5329 + 32 len mem[_5329]])
                        require ext_code.size(FACTORYAddress)
                        staticcall FACTORYAddress.contractCodeHash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_5328 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_5328 + 105] = Mask(160, 96, FACTORYAddress)
                        mem[_5328 + 125] = _5331
                        mem[_5328 + 157] = ext_call.return_data[0]
                        mem[_5328 + 72] = 85
                        mem[64] = _5328 + 189
                        require ext_code.size(address(sha3(0, FACTORYAddress, _5331, ext_call.return_data[0])))
                        staticcall address(sha3(0, FACTORYAddress, _5331, ext_call.return_data[0])).getReserves() with:
                                gas gas_remaining wei
                        mem[_5328 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require s < mem[_2492]
                        if address(_5150) == address(_5014):
                            _5620 = mem[(32 * s) + _2492 + 32]
                            mem[64] = _5328 + 253
                            mem[_5328 + 189] = 30
                            mem[_5328 + 221] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_5328 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5328 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5328 + 321] = mem[idx + _5328 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_5328 + 321] = mem[_5328 + 323 len 30]
                                revert with 0, 32, 30, mem[_5328 + 321]
                            if not _5620:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5328 + 364 len 21]
                            if (10000 * _5620) - (ext_call.return_data[0] * _5620) / _5620 != -ext_call.return_data[0] + 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5328 + 354 len 31]
                            if (10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000 <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5328 + 364 len 21]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5328 + 361 len 24]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5328 + 361 len 24]
                            if not (10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000:
                                if ((10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000) + Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = 0 / ((10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000 / (10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5328 + 354 len 31]
                                if ((10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000) + Mask(112, 0, ext_call.return_data[0])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000 / ((10000 * _5620) - (ext_call.return_data[0] * _5620) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            _5621 = mem[(32 * s) + _2492 + 32]
                            mem[64] = _5328 + 253
                            mem[_5328 + 189] = 30
                            mem[_5328 + 221] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 10000:
                                mem[_5328 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5328 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5328 + 321] = mem[idx + _5328 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_5328 + 321] = mem[_5328 + 323 len 30]
                                revert with 0, 32, 30, mem[_5328 + 321]
                            if not _5621:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5328 + 364 len 21]
                            if (10000 * _5621) - (ext_call.return_data[0] * _5621) / _5621 != -ext_call.return_data[0] + 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5328 + 354 len 31]
                            if (10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000 <= 0:
                                revert with 0, 
                                            32,
                                            43,
                                            0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[_5328 + 364 len 21]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5328 + 361 len 24]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5328 + 361 len 24]
                            if not (10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000:
                                if ((10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000) + Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = 0 / ((10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000 / (10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5328 + 354 len 31]
                                if ((10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require ((10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000) + Mask(112, 0, ext_call.return_data[32])
                                require s + 1 < mem[_2492]
                                mem[(32 * s + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000 / ((10000 * _5621) - (ext_call.return_data[0] * _5621) / 10000) + Mask(112, 0, ext_call.return_data[32])
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_2492]
            _5220 = mem[_2492]
            mem[mem[64] + 64 len floor32(mem[_2492])] = mem[_2492 + 32 len floor32(mem[_2492])]
            return 32, mem[mem[64] + 32 len (32 * _5220) + 32]
        mem[_2492 + 32 len 32 * _2488] = call.data[calldata.size len 32 * _2488]
        require 0 < mem[_2492]
        mem[_2492 + 32] = _2482
        _4943 = mem[96]
        idx = 0
        while idx < _4943 - 1:
            require idx < mem[96]
            _5016 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _5151 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _5334 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_5151)
                    _5335 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _5337 = sha3(mem[_5335 + 32 len mem[_5335]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_5334 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_5334 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_5334 + 125] = _5337
                    mem[_5334 + 157] = ext_call.return_data[0]
                    mem[_5334 + 72] = 85
                    mem[64] = _5334 + 189
                    require ext_code.size(address(sha3(0, FACTORYAddress, _5337, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _5337, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_5334 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_2492]
                    if address(_5016) == address(_5016):
                        _5622 = mem[(32 * idx) + _2492 + 32]
                        mem[64] = _5334 + 253
                        mem[_5334 + 189] = 30
                        mem[_5334 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5334 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5334 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5334 + 321] = mem[idx + _5334 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5334 + 321] = mem[_5334 + 323 len 30]
                            revert with 0, 32, 30, mem[_5334 + 321]
                        if not _5622:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5334 + 364 len 21]
                        if (10000 * _5622) - (ext_call.return_data[0] * _5622) / _5622 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5334 + 354 len 31]
                        if (10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5334 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5334 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5334 + 361 len 24]
                        if not (10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000:
                            if ((10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = 0 / ((10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000 / (10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5334 + 354 len 31]
                            if ((10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000 / ((10000 * _5622) - (ext_call.return_data[0] * _5622) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _5623 = mem[(32 * idx) + _2492 + 32]
                        mem[64] = _5334 + 253
                        mem[_5334 + 189] = 30
                        mem[_5334 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5334 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5334 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5334 + 321] = mem[idx + _5334 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5334 + 321] = mem[_5334 + 323 len 30]
                            revert with 0, 32, 30, mem[_5334 + 321]
                        if not _5623:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5334 + 364 len 21]
                        if (10000 * _5623) - (ext_call.return_data[0] * _5623) / _5623 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5334 + 354 len 31]
                        if (10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5334 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5334 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5334 + 361 len 24]
                        if not (10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000:
                            if ((10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = 0 / ((10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000 / (10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5334 + 354 len 31]
                            if ((10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000 / ((10000 * _5623) - (ext_call.return_data[0] * _5623) / 10000) + Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _5340 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_5016)
                    _5341 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _5343 = sha3(mem[_5341 + 32 len mem[_5341]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_5340 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_5340 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_5340 + 125] = _5343
                    mem[_5340 + 157] = ext_call.return_data[0]
                    mem[_5340 + 72] = 85
                    mem[64] = _5340 + 189
                    require ext_code.size(address(sha3(0, FACTORYAddress, _5343, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _5343, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_5340 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_2492]
                    if address(_5016) == address(_5016):
                        _5624 = mem[(32 * idx) + _2492 + 32]
                        mem[64] = _5340 + 253
                        mem[_5340 + 189] = 30
                        mem[_5340 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5340 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5340 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5340 + 321] = mem[idx + _5340 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5340 + 321] = mem[_5340 + 323 len 30]
                            revert with 0, 32, 30, mem[_5340 + 321]
                        if not _5624:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5340 + 364 len 21]
                        if (10000 * _5624) - (ext_call.return_data[0] * _5624) / _5624 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5340 + 354 len 31]
                        if (10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5340 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5340 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5340 + 361 len 24]
                        if not (10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000:
                            if ((10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = 0 / ((10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000 / (10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5340 + 354 len 31]
                            if ((10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000 / ((10000 * _5624) - (ext_call.return_data[0] * _5624) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _5625 = mem[(32 * idx) + _2492 + 32]
                        mem[64] = _5340 + 253
                        mem[_5340 + 189] = 30
                        mem[_5340 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5340 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5340 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5340 + 321] = mem[idx + _5340 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5340 + 321] = mem[_5340 + 323 len 30]
                            revert with 0, 32, 30, mem[_5340 + 321]
                        if not _5625:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5340 + 364 len 21]
                        if (10000 * _5625) - (ext_call.return_data[0] * _5625) / _5625 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5340 + 354 len 31]
                        if (10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5340 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5340 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5340 + 361 len 24]
                        if not (10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000:
                            if ((10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = 0 / ((10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000 / (10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5340 + 354 len 31]
                            if ((10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000 / ((10000 * _5625) - (ext_call.return_data[0] * _5625) / 10000) + Mask(112, 0, ext_call.return_data[32])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _5346 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_5151)
                    _5347 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _5349 = sha3(mem[_5347 + 32 len mem[_5347]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_5346 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_5346 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_5346 + 125] = _5349
                    mem[_5346 + 157] = ext_call.return_data[0]
                    mem[_5346 + 72] = 85
                    mem[64] = _5346 + 189
                    require ext_code.size(address(sha3(0, FACTORYAddress, _5349, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _5349, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_5346 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_2492]
                    if address(_5151) == address(_5016):
                        _5626 = mem[(32 * idx) + _2492 + 32]
                        mem[64] = _5346 + 253
                        mem[_5346 + 189] = 30
                        mem[_5346 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5346 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5346 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5346 + 321] = mem[idx + _5346 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5346 + 321] = mem[_5346 + 323 len 30]
                            revert with 0, 32, 30, mem[_5346 + 321]
                        if not _5626:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5346 + 364 len 21]
                        if (10000 * _5626) - (ext_call.return_data[0] * _5626) / _5626 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5346 + 354 len 31]
                        if (10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5346 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5346 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5346 + 361 len 24]
                        if not (10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000:
                            if ((10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = 0 / ((10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000 / (10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5346 + 354 len 31]
                            if ((10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000 / ((10000 * _5626) - (ext_call.return_data[0] * _5626) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _5627 = mem[(32 * idx) + _2492 + 32]
                        mem[64] = _5346 + 253
                        mem[_5346 + 189] = 30
                        mem[_5346 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5346 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5346 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5346 + 321] = mem[idx + _5346 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5346 + 321] = mem[_5346 + 323 len 30]
                            revert with 0, 32, 30, mem[_5346 + 321]
                        if not _5627:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5346 + 364 len 21]
                        if (10000 * _5627) - (ext_call.return_data[0] * _5627) / _5627 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5346 + 354 len 31]
                        if (10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5346 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5346 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5346 + 361 len 24]
                        if not (10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000:
                            if ((10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = 0 / ((10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000 / (10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5346 + 354 len 31]
                            if ((10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000 / ((10000 * _5627) - (ext_call.return_data[0] * _5627) / 10000) + Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _5352 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_5016)
                    _5353 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _5355 = sha3(mem[_5353 + 32 len mem[_5353]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_5352 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_5352 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_5352 + 125] = _5355
                    mem[_5352 + 157] = ext_call.return_data[0]
                    mem[_5352 + 72] = 85
                    mem[64] = _5352 + 189
                    require ext_code.size(address(sha3(0, FACTORYAddress, _5355, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _5355, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_5352 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_2492]
                    if address(_5151) == address(_5016):
                        _5628 = mem[(32 * idx) + _2492 + 32]
                        mem[64] = _5352 + 253
                        mem[_5352 + 189] = 30
                        mem[_5352 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5352 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5352 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5352 + 321] = mem[idx + _5352 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5352 + 321] = mem[_5352 + 323 len 30]
                            revert with 0, 32, 30, mem[_5352 + 321]
                        if not _5628:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5352 + 364 len 21]
                        if (10000 * _5628) - (ext_call.return_data[0] * _5628) / _5628 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5352 + 354 len 31]
                        if (10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5352 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5352 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5352 + 361 len 24]
                        if not (10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000:
                            if ((10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = 0 / ((10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000 / (10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5352 + 354 len 31]
                            if ((10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000 / ((10000 * _5628) - (ext_call.return_data[0] * _5628) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _5629 = mem[(32 * idx) + _2492 + 32]
                        mem[64] = _5352 + 253
                        mem[_5352 + 189] = 30
                        mem[_5352 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5352 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5352 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5352 + 321] = mem[idx + _5352 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5352 + 321] = mem[_5352 + 323 len 30]
                            revert with 0, 32, 30, mem[_5352 + 321]
                        if not _5629:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5352 + 364 len 21]
                        if (10000 * _5629) - (ext_call.return_data[0] * _5629) / _5629 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5352 + 354 len 31]
                        if (10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5352 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5352 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5352 + 361 len 24]
                        if not (10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000:
                            if ((10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = 0 / ((10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000 / (10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5352 + 354 len 31]
                            if ((10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[_2492]
                            mem[(32 * idx + 1) + _2492 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000 / ((10000 * _5629) - (ext_call.return_data[0] * _5629) / 10000) + Mask(112, 0, ext_call.return_data[32])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_2492]
        _5223 = mem[_2492]
        mem[mem[64] + 64 len floor32(mem[_2492])] = mem[_2492 + 32 len floor32(mem[_2492])]
        return 32, mem[mem[64] + 32 len (32 * _5223) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length - 1 < arg2.length
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
    idx = mem[96] - 1
    while idx:
        require idx - 1 < mem[96]
        require idx < mem[96]
        _2491 = mem[(32 * idx) + 128]
        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
            if not mem[(32 * idx - 1) + 140 len 20]:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _2622 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_2491)
                _2623 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2625 = sha3(mem[_2623 + 32 len mem[_2623]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2622 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2622 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_2622 + 125] = _2625
                mem[_2622 + 157] = ext_call.return_data[0]
                mem[_2622 + 72] = 85
                require ext_code.size(address(sha3(0, FACTORYAddress, _2625, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _2625, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_2622 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    _3014 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_2622 + 301 len 20]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2622 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2622 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        mem[_2622 + 189] = 30
                        mem[_2622 + 221] = 'SafeMath: subtraction overflow'
                        if _3014 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_2622 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 321] = mem[idx + _2622 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 321] = mem[_2622 + 323 len 30]
                            revert with 0, 32, 30, mem[_2622 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _3014
                        if (0 / Mask(112, 0, ext_call.return_data[32]) - _3014) + 1 < 0 / Mask(112, 0, ext_call.return_data[32]) - _3014:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2622 + 317
                        mem[_2622 + 253] = 30
                        mem[_2622 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2622 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 385] = mem[idx + _2622 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 385] = mem[_2622 + 387 len 30]
                            revert with 0, 32, 30, mem[_2622 + 385]
                        if not (0 / Mask(112, 0, ext_call.return_data[32]) - _3014) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3014) + 10000 / (0 / Mask(112, 0, ext_call.return_data[32]) - _3014) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2622 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3014) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3014) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3014) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2622 + 290 len 31]
                        mem[_2622 + 189] = 30
                        mem[_2622 + 221] = 'SafeMath: subtraction overflow'
                        if _3014 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_2622 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 321] = mem[idx + _2622 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 321] = mem[_2622 + 323 len 30]
                            revert with 0, 32, 30, mem[_2622 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _3014
                        if (_3014 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3014) + 1 < _3014 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3014:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2622 + 317
                        mem[_2622 + 253] = 30
                        mem[_2622 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2622 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 385] = mem[idx + _2622 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 385] = mem[_2622 + 387 len 30]
                            revert with 0, 32, 30, mem[_2622 + 385]
                        if not (_3014 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3014) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * _3014 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3014) + 10000 / (_3014 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3014) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2622 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * _3014 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3014) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _3014 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3014) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _3014 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3014) + 10000 / -ext_call.return_data[0] + 10000) + 1
                else:
                    _3015 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_2622 + 301 len 20]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2622 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2622 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        mem[_2622 + 189] = 30
                        mem[_2622 + 221] = 'SafeMath: subtraction overflow'
                        if _3015 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_2622 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 321] = mem[idx + _2622 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 321] = mem[_2622 + 323 len 30]
                            revert with 0, 32, 30, mem[_2622 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _3015
                        if (0 / Mask(112, 0, ext_call.return_data[0]) - _3015) + 1 < 0 / Mask(112, 0, ext_call.return_data[0]) - _3015:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2622 + 317
                        mem[_2622 + 253] = 30
                        mem[_2622 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2622 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 385] = mem[idx + _2622 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 385] = mem[_2622 + 387 len 30]
                            revert with 0, 32, 30, mem[_2622 + 385]
                        if not (0 / Mask(112, 0, ext_call.return_data[0]) - _3015) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3015) + 10000 / (0 / Mask(112, 0, ext_call.return_data[0]) - _3015) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2622 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3015) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3015) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3015) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2622 + 290 len 31]
                        mem[_2622 + 189] = 30
                        mem[_2622 + 221] = 'SafeMath: subtraction overflow'
                        if _3015 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_2622 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 321] = mem[idx + _2622 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 321] = mem[_2622 + 323 len 30]
                            revert with 0, 32, 30, mem[_2622 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _3015
                        if (_3015 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3015) + 1 < _3015 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3015:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2622 + 317
                        mem[_2622 + 253] = 30
                        mem[_2622 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2622 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2622 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 385] = mem[idx + _2622 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 385] = mem[_2622 + 387 len 30]
                            revert with 0, 32, 30, mem[_2622 + 385]
                        if not (_3015 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3015) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * _3015 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3015) + 10000 / (_3015 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3015) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2622 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * _3015 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3015) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _3015 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3015) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _3015 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3015) + 10000 / -ext_call.return_data[0] + 10000) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _2628 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _2629 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2631 = sha3(mem[_2629 + 32 len mem[_2629]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2628 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2628 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_2628 + 125] = _2631
                mem[_2628 + 157] = ext_call.return_data[0]
                mem[_2628 + 72] = 85
                require ext_code.size(address(sha3(0, FACTORYAddress, _2631, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _2631, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_2628 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    _3016 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_2628 + 301 len 20]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2628 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2628 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        mem[_2628 + 189] = 30
                        mem[_2628 + 221] = 'SafeMath: subtraction overflow'
                        if _3016 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_2628 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2628 + 321] = mem[idx + _2628 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 321] = mem[_2628 + 323 len 30]
                            revert with 0, 32, 30, mem[_2628 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _3016
                        if (0 / Mask(112, 0, ext_call.return_data[32]) - _3016) + 1 < 0 / Mask(112, 0, ext_call.return_data[32]) - _3016:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2628 + 317
                        mem[_2628 + 253] = 30
                        mem[_2628 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2628 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2628 + 385] = mem[idx + _2628 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 385] = mem[_2628 + 387 len 30]
                            revert with 0, 32, 30, mem[_2628 + 385]
                        if not (0 / Mask(112, 0, ext_call.return_data[32]) - _3016) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3016) + 10000 / (0 / Mask(112, 0, ext_call.return_data[32]) - _3016) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2628 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3016) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3016) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3016) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2628 + 290 len 31]
                        mem[_2628 + 189] = 30
                        mem[_2628 + 221] = 'SafeMath: subtraction overflow'
                        if _3016 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_2628 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2628 + 321] = mem[idx + _2628 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 321] = mem[_2628 + 323 len 30]
                            revert with 0, 32, 30, mem[_2628 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _3016
                        if (_3016 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3016) + 1 < _3016 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3016:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2628 + 317
                        mem[_2628 + 253] = 30
                        mem[_2628 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2628 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2628 + 385] = mem[idx + _2628 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 385] = mem[_2628 + 387 len 30]
                            revert with 0, 32, 30, mem[_2628 + 385]
                        if not (_3016 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3016) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * _3016 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3016) + 10000 / (_3016 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3016) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2628 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * _3016 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3016) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _3016 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3016) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _3016 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3016) + 10000 / -ext_call.return_data[0] + 10000) + 1
                else:
                    _3017 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_2628 + 301 len 20]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2628 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2628 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        mem[_2628 + 189] = 30
                        mem[_2628 + 221] = 'SafeMath: subtraction overflow'
                        if _3017 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_2628 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2628 + 321] = mem[idx + _2628 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 321] = mem[_2628 + 323 len 30]
                            revert with 0, 32, 30, mem[_2628 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _3017
                        if (0 / Mask(112, 0, ext_call.return_data[0]) - _3017) + 1 < 0 / Mask(112, 0, ext_call.return_data[0]) - _3017:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2628 + 317
                        mem[_2628 + 253] = 30
                        mem[_2628 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2628 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2628 + 385] = mem[idx + _2628 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 385] = mem[_2628 + 387 len 30]
                            revert with 0, 32, 30, mem[_2628 + 385]
                        if not (0 / Mask(112, 0, ext_call.return_data[0]) - _3017) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3017) + 10000 / (0 / Mask(112, 0, ext_call.return_data[0]) - _3017) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2628 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3017) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3017) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3017) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2628 + 290 len 31]
                        mem[_2628 + 189] = 30
                        mem[_2628 + 221] = 'SafeMath: subtraction overflow'
                        if _3017 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_2628 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2628 + 321] = mem[idx + _2628 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 321] = mem[_2628 + 323 len 30]
                            revert with 0, 32, 30, mem[_2628 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _3017
                        if (_3017 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3017) + 1 < _3017 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3017:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2628 + 317
                        mem[_2628 + 253] = 30
                        mem[_2628 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2628 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2628 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2628 + 385] = mem[idx + _2628 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 385] = mem[_2628 + 387 len 30]
                            revert with 0, 32, 30, mem[_2628 + 385]
                        if not (_3017 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3017) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * _3017 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3017) + 10000 / (_3017 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3017) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2628 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * _3017 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3017) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _3017 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3017) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _3017 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3017) + 10000 / -ext_call.return_data[0] + 10000) + 1
        else:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _2634 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_2491)
                _2635 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2637 = sha3(mem[_2635 + 32 len mem[_2635]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2634 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2634 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_2634 + 125] = _2637
                mem[_2634 + 157] = ext_call.return_data[0]
                mem[_2634 + 72] = 85
                require ext_code.size(address(sha3(0, FACTORYAddress, _2637, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _2637, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_2634 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if address(_2491) == mem[(32 * idx - 1) + 140 len 20]:
                    _3018 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_2634 + 301 len 20]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2634 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2634 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        mem[_2634 + 189] = 30
                        mem[_2634 + 221] = 'SafeMath: subtraction overflow'
                        if _3018 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_2634 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2634 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2634 + 321] = mem[idx + _2634 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2634 + 321] = mem[_2634 + 323 len 30]
                            revert with 0, 32, 30, mem[_2634 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _3018
                        if (0 / Mask(112, 0, ext_call.return_data[32]) - _3018) + 1 < 0 / Mask(112, 0, ext_call.return_data[32]) - _3018:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2634 + 317
                        mem[_2634 + 253] = 30
                        mem[_2634 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2634 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2634 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2634 + 385] = mem[idx + _2634 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2634 + 385] = mem[_2634 + 387 len 30]
                            revert with 0, 32, 30, mem[_2634 + 385]
                        if not (0 / Mask(112, 0, ext_call.return_data[32]) - _3018) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3018) + 10000 / (0 / Mask(112, 0, ext_call.return_data[32]) - _3018) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2634 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3018) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3018) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3018) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2634 + 290 len 31]
                        mem[_2634 + 189] = 30
                        mem[_2634 + 221] = 'SafeMath: subtraction overflow'
                        if _3018 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_2634 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2634 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2634 + 321] = mem[idx + _2634 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2634 + 321] = mem[_2634 + 323 len 30]
                            revert with 0, 32, 30, mem[_2634 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _3018
                        if (_3018 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3018) + 1 < _3018 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3018:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2634 + 317
                        mem[_2634 + 253] = 30
                        mem[_2634 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2634 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2634 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2634 + 385] = mem[idx + _2634 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2634 + 385] = mem[_2634 + 387 len 30]
                            revert with 0, 32, 30, mem[_2634 + 385]
                        if not (_3018 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3018) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * _3018 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3018) + 10000 / (_3018 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3018) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2634 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * _3018 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3018) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _3018 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3018) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _3018 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3018) + 10000 / -ext_call.return_data[0] + 10000) + 1
                else:
                    _3019 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_2634 + 301 len 20]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2634 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2634 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        mem[_2634 + 189] = 30
                        mem[_2634 + 221] = 'SafeMath: subtraction overflow'
                        if _3019 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_2634 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2634 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2634 + 321] = mem[idx + _2634 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2634 + 321] = mem[_2634 + 323 len 30]
                            revert with 0, 32, 30, mem[_2634 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _3019
                        if (0 / Mask(112, 0, ext_call.return_data[0]) - _3019) + 1 < 0 / Mask(112, 0, ext_call.return_data[0]) - _3019:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2634 + 317
                        mem[_2634 + 253] = 30
                        mem[_2634 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2634 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2634 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2634 + 385] = mem[idx + _2634 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2634 + 385] = mem[_2634 + 387 len 30]
                            revert with 0, 32, 30, mem[_2634 + 385]
                        if not (0 / Mask(112, 0, ext_call.return_data[0]) - _3019) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3019) + 10000 / (0 / Mask(112, 0, ext_call.return_data[0]) - _3019) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2634 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3019) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3019) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3019) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2634 + 290 len 31]
                        mem[_2634 + 189] = 30
                        mem[_2634 + 221] = 'SafeMath: subtraction overflow'
                        if _3019 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_2634 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2634 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2634 + 321] = mem[idx + _2634 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2634 + 321] = mem[_2634 + 323 len 30]
                            revert with 0, 32, 30, mem[_2634 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _3019
                        if (_3019 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3019) + 1 < _3019 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3019:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2634 + 317
                        mem[_2634 + 253] = 30
                        mem[_2634 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2634 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2634 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2634 + 385] = mem[idx + _2634 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2634 + 385] = mem[_2634 + 387 len 30]
                            revert with 0, 32, 30, mem[_2634 + 385]
                        if not (_3019 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3019) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * _3019 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3019) + 10000 / (_3019 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3019) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2634 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * _3019 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3019) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _3019 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3019) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _3019 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3019) + 10000 / -ext_call.return_data[0] + 10000) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _2640 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _2641 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2643 = sha3(mem[_2641 + 32 len mem[_2641]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_2640 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2640 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_2640 + 125] = _2643
                mem[_2640 + 157] = ext_call.return_data[0]
                mem[_2640 + 72] = 85
                require ext_code.size(address(sha3(0, FACTORYAddress, _2643, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _2643, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_2640 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg2.length) + 128]
                if address(_2491) == mem[(32 * idx - 1) + 140 len 20]:
                    _3020 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_2640 + 301 len 20]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2640 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2640 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        mem[_2640 + 189] = 30
                        mem[_2640 + 221] = 'SafeMath: subtraction overflow'
                        if _3020 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_2640 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2640 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2640 + 321] = mem[idx + _2640 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2640 + 321] = mem[_2640 + 323 len 30]
                            revert with 0, 32, 30, mem[_2640 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _3020
                        if (0 / Mask(112, 0, ext_call.return_data[32]) - _3020) + 1 < 0 / Mask(112, 0, ext_call.return_data[32]) - _3020:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2640 + 317
                        mem[_2640 + 253] = 30
                        mem[_2640 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2640 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2640 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2640 + 385] = mem[idx + _2640 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2640 + 385] = mem[_2640 + 387 len 30]
                            revert with 0, 32, 30, mem[_2640 + 385]
                        if not (0 / Mask(112, 0, ext_call.return_data[32]) - _3020) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3020) + 10000 / (0 / Mask(112, 0, ext_call.return_data[32]) - _3020) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2640 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3020) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3020) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[32]) - _3020) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2640 + 290 len 31]
                        mem[_2640 + 189] = 30
                        mem[_2640 + 221] = 'SafeMath: subtraction overflow'
                        if _3020 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_2640 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2640 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2640 + 321] = mem[idx + _2640 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2640 + 321] = mem[_2640 + 323 len 30]
                            revert with 0, 32, 30, mem[_2640 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _3020
                        if (_3020 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3020) + 1 < _3020 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3020:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2640 + 317
                        mem[_2640 + 253] = 30
                        mem[_2640 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2640 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2640 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2640 + 385] = mem[idx + _2640 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2640 + 385] = mem[_2640 + 387 len 30]
                            revert with 0, 32, 30, mem[_2640 + 385]
                        if not (_3020 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3020) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * _3020 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3020) + 10000 / (_3020 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3020) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2640 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * _3020 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3020) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _3020 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3020) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _3020 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) - _3020) + 10000 / -ext_call.return_data[0] + 10000) + 1
                else:
                    _3021 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x5944656d6178537761704c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_2640 + 301 len 20]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2640 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_2640 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        mem[_2640 + 189] = 30
                        mem[_2640 + 221] = 'SafeMath: subtraction overflow'
                        if _3021 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_2640 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2640 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2640 + 321] = mem[idx + _2640 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2640 + 321] = mem[_2640 + 323 len 30]
                            revert with 0, 32, 30, mem[_2640 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _3021
                        if (0 / Mask(112, 0, ext_call.return_data[0]) - _3021) + 1 < 0 / Mask(112, 0, ext_call.return_data[0]) - _3021:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2640 + 317
                        mem[_2640 + 253] = 30
                        mem[_2640 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2640 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2640 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2640 + 385] = mem[idx + _2640 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2640 + 385] = mem[_2640 + 387 len 30]
                            revert with 0, 32, 30, mem[_2640 + 385]
                        if not (0 / Mask(112, 0, ext_call.return_data[0]) - _3021) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3021) + 10000 / (0 / Mask(112, 0, ext_call.return_data[0]) - _3021) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2640 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3021) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3021) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * 0 / Mask(112, 0, ext_call.return_data[0]) - _3021) + 10000 / -ext_call.return_data[0] + 10000) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2640 + 290 len 31]
                        mem[_2640 + 189] = 30
                        mem[_2640 + 221] = 'SafeMath: subtraction overflow'
                        if _3021 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_2640 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2640 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2640 + 321] = mem[idx + _2640 + 221]
                                idx = idx + 32
                                continue 
                            mem[_2640 + 321] = mem[_2640 + 323 len 30]
                            revert with 0, 32, 30, mem[_2640 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _3021
                        if (_3021 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3021) + 1 < _3021 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3021:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _2640 + 317
                        mem[_2640 + 253] = 30
                        mem[_2640 + 285] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_2640 + 317] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2640 + 321] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _2640 + 385] = mem[idx + _2640 + 285]
                                idx = idx + 32
                                continue 
                            mem[_2640 + 385] = mem[_2640 + 387 len 30]
                            revert with 0, 32, 30, mem[_2640 + 385]
                        if not (_3021 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3021) + 1:
                            require -ext_call.return_data[0] + 10000
                            if (0 / -ext_call.return_data[0] + 10000) + 1 < 0 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / -ext_call.return_data[0] + 10000) + 1
                        else:
                            if (10000 * _3021 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3021) + 10000 / (_3021 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3021) + 1 != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2640 + 418 len 31]
                            require -ext_call.return_data[0] + 10000
                            if ((10000 * _3021 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3021) + 10000 / -ext_call.return_data[0] + 10000) + 1 < (10000 * _3021 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3021) + 10000 / -ext_call.return_data[0] + 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg2.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg2.length) + 160] = ((10000 * _3021 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) - _3021) + 10000 / -ext_call.return_data[0] + 10000) + 1
        idx = idx - 1
        continue 
    require 0 < mem[(32 * arg2.length) + 128]
    _2485 = mem[(32 * arg2.length) + 160]
    _2490 = mem[96]
    require mem[96] <= test266151307()
    _2493 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _2490) + 32
    if not _2490:
        require 0 < mem[_2493]
        mem[_2493 + 32] = _2485
        _4944 = mem[96]
        s = 0
        while s < _4944 - 1:
            require s < mem[96]
            _5082 = mem[(32 * s) + 128]
            require s + 1 < mem[96]
            _5184 = mem[(32 * s + 1) + 128]
            if mem[(32 * s) + 140 len 20] == mem[(32 * s + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * s) + 140 len 20] < mem[(32 * s + 1) + 140 len 20]:
                if not mem[(32 * s) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if mem[(32 * s) + 140 len 20] == mem[(32 * s + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * s) + 140 len 20] < mem[(32 * s + 1) + 140 len 20]:
                    if not mem[(32 * s) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _5358 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                    mem[mem[64] + 52] = address(_5184)
                    _5359 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _5361 = sha3(mem[_5359 + 32 len mem[_5359]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_5358 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_5358 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_5358 + 125] = _5361
                    mem[_5358 + 157] = ext_call.return_data[0]
                    mem[_5358 + 72] = 85
                    mem[64] = _5358 + 189
                    require ext_code.size(address(sha3(0, FACTORYAddress, _5361, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _5361, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_5358 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require s < mem[_2493]
                    if address(_5082) == address(_5082):
                        _5630 = mem[(32 * s) + _2493 + 32]
                        mem[64] = _5358 + 253
                        mem[_5358 + 189] = 30
                        mem[_5358 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5358 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5358 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5358 + 321] = mem[idx + _5358 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5358 + 321] = mem[_5358 + 323 len 30]
                            revert with 0, 32, 30, mem[_5358 + 321]
                        if not _5630:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5358 + 364 len 21]
                        if (10000 * _5630) - (ext_call.return_data[0] * _5630) / _5630 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5358 + 354 len 31]
                        if (10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5358 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5358 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5358 + 361 len 24]
                        if not (10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000:
                            if ((10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = 0 / ((10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000 / (10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5358 + 354 len 31]
                            if ((10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000 / ((10000 * _5630) - (ext_call.return_data[0] * _5630) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _5631 = mem[(32 * s) + _2493 + 32]
                        mem[64] = _5358 + 253
                        mem[_5358 + 189] = 30
                        mem[_5358 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5358 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5358 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5358 + 321] = mem[idx + _5358 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5358 + 321] = mem[_5358 + 323 len 30]
                            revert with 0, 32, 30, mem[_5358 + 321]
                        if not _5631:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5358 + 364 len 21]
                        if (10000 * _5631) - (ext_call.return_data[0] * _5631) / _5631 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5358 + 354 len 31]
                        if (10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5358 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5358 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5358 + 361 len 24]
                        if not (10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000:
                            if ((10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = 0 / ((10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000 / (10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5358 + 354 len 31]
                            if ((10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000 / ((10000 * _5631) - (ext_call.return_data[0] * _5631) / 10000) + Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * s + 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _5364 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + 128])
                    mem[mem[64] + 52] = address(_5082)
                    _5365 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _5367 = sha3(mem[_5365 + 32 len mem[_5365]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_5364 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_5364 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_5364 + 125] = _5367
                    mem[_5364 + 157] = ext_call.return_data[0]
                    mem[_5364 + 72] = 85
                    mem[64] = _5364 + 189
                    require ext_code.size(address(sha3(0, FACTORYAddress, _5367, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _5367, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_5364 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require s < mem[_2493]
                    if address(_5082) == address(_5082):
                        _5632 = mem[(32 * s) + _2493 + 32]
                        mem[64] = _5364 + 253
                        mem[_5364 + 189] = 30
                        mem[_5364 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5364 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5364 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5364 + 321] = mem[idx + _5364 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5364 + 321] = mem[_5364 + 323 len 30]
                            revert with 0, 32, 30, mem[_5364 + 321]
                        if not _5632:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5364 + 364 len 21]
                        if (10000 * _5632) - (ext_call.return_data[0] * _5632) / _5632 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5364 + 354 len 31]
                        if (10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5364 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5364 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5364 + 361 len 24]
                        if not (10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000:
                            if ((10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = 0 / ((10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000 / (10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5364 + 354 len 31]
                            if ((10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000 / ((10000 * _5632) - (ext_call.return_data[0] * _5632) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _5633 = mem[(32 * s) + _2493 + 32]
                        mem[64] = _5364 + 253
                        mem[_5364 + 189] = 30
                        mem[_5364 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5364 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5364 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5364 + 321] = mem[idx + _5364 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5364 + 321] = mem[_5364 + 323 len 30]
                            revert with 0, 32, 30, mem[_5364 + 321]
                        if not _5633:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5364 + 364 len 21]
                        if (10000 * _5633) - (ext_call.return_data[0] * _5633) / _5633 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5364 + 354 len 31]
                        if (10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5364 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5364 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5364 + 361 len 24]
                        if not (10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000:
                            if ((10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = 0 / ((10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000 / (10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5364 + 354 len 31]
                            if ((10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000 / ((10000 * _5633) - (ext_call.return_data[0] * _5633) / 10000) + Mask(112, 0, ext_call.return_data[32])
            else:
                if not mem[(32 * s + 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                if mem[(32 * s) + 140 len 20] == mem[(32 * s + 1) + 140 len 20]:
                    revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * s) + 140 len 20] < mem[(32 * s + 1) + 140 len 20]:
                    if not mem[(32 * s) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _5370 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * s) + 128])
                    mem[mem[64] + 52] = address(_5184)
                    _5371 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _5373 = sha3(mem[_5371 + 32 len mem[_5371]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_5370 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_5370 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_5370 + 125] = _5373
                    mem[_5370 + 157] = ext_call.return_data[0]
                    mem[_5370 + 72] = 85
                    mem[64] = _5370 + 189
                    require ext_code.size(address(sha3(0, FACTORYAddress, _5373, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _5373, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_5370 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require s < mem[_2493]
                    if address(_5184) == address(_5082):
                        _5634 = mem[(32 * s) + _2493 + 32]
                        mem[64] = _5370 + 253
                        mem[_5370 + 189] = 30
                        mem[_5370 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5370 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5370 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5370 + 321] = mem[idx + _5370 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5370 + 321] = mem[_5370 + 323 len 30]
                            revert with 0, 32, 30, mem[_5370 + 321]
                        if not _5634:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5370 + 364 len 21]
                        if (10000 * _5634) - (ext_call.return_data[0] * _5634) / _5634 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5370 + 354 len 31]
                        if (10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5370 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5370 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5370 + 361 len 24]
                        if not (10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000:
                            if ((10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = 0 / ((10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000 / (10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5370 + 354 len 31]
                            if ((10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000 / ((10000 * _5634) - (ext_call.return_data[0] * _5634) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _5635 = mem[(32 * s) + _2493 + 32]
                        mem[64] = _5370 + 253
                        mem[_5370 + 189] = 30
                        mem[_5370 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5370 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5370 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5370 + 321] = mem[idx + _5370 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5370 + 321] = mem[_5370 + 323 len 30]
                            revert with 0, 32, 30, mem[_5370 + 321]
                        if not _5635:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5370 + 364 len 21]
                        if (10000 * _5635) - (ext_call.return_data[0] * _5635) / _5635 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5370 + 354 len 31]
                        if (10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5370 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5370 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5370 + 361 len 24]
                        if not (10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000:
                            if ((10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = 0 / ((10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000 / (10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5370 + 354 len 31]
                            if ((10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000 / ((10000 * _5635) - (ext_call.return_data[0] * _5635) / 10000) + Mask(112, 0, ext_call.return_data[32])
                else:
                    if not mem[(32 * s + 1) + 140 len 20]:
                        revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                    _5376 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + 128])
                    mem[mem[64] + 52] = address(_5082)
                    _5377 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _5379 = sha3(mem[_5377 + 32 len mem[_5377]])
                    require ext_code.size(FACTORYAddress)
                    staticcall FACTORYAddress.contractCodeHash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_5376 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_5376 + 105] = Mask(160, 96, FACTORYAddress)
                    mem[_5376 + 125] = _5379
                    mem[_5376 + 157] = ext_call.return_data[0]
                    mem[_5376 + 72] = 85
                    mem[64] = _5376 + 189
                    require ext_code.size(address(sha3(0, FACTORYAddress, _5379, ext_call.return_data[0])))
                    staticcall address(sha3(0, FACTORYAddress, _5379, ext_call.return_data[0])).getReserves() with:
                            gas gas_remaining wei
                    mem[_5376 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require s < mem[_2493]
                    if address(_5184) == address(_5082):
                        _5636 = mem[(32 * s) + _2493 + 32]
                        mem[64] = _5376 + 253
                        mem[_5376 + 189] = 30
                        mem[_5376 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5376 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5376 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5376 + 321] = mem[idx + _5376 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5376 + 321] = mem[_5376 + 323 len 30]
                            revert with 0, 32, 30, mem[_5376 + 321]
                        if not _5636:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5376 + 364 len 21]
                        if (10000 * _5636) - (ext_call.return_data[0] * _5636) / _5636 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5376 + 354 len 31]
                        if (10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5376 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5376 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5376 + 361 len 24]
                        if not (10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000:
                            if ((10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = 0 / ((10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000 / (10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5376 + 354 len 31]
                            if ((10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000) + Mask(112, 0, ext_call.return_data[0])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000 / ((10000 * _5636) - (ext_call.return_data[0] * _5636) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        _5637 = mem[(32 * s) + _2493 + 32]
                        mem[64] = _5376 + 253
                        mem[_5376 + 189] = 30
                        mem[_5376 + 221] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > 10000:
                            mem[_5376 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5376 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _5376 + 321] = mem[idx + _5376 + 221]
                                idx = idx + 32
                                continue 
                            mem[_5376 + 321] = mem[_5376 + 323 len 30]
                            revert with 0, 32, 30, mem[_5376 + 321]
                        if not _5637:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5376 + 364 len 21]
                        if (10000 * _5637) - (ext_call.return_data[0] * _5637) / _5637 != -ext_call.return_data[0] + 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5376 + 354 len 31]
                        if (10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000 <= 0:
                            revert with 0, 
                                        32,
                                        43,
                                        0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_5376 + 364 len 21]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5376 + 361 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5376 + 361 len 24]
                        if not (10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000:
                            if ((10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = 0 / ((10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000 / (10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5376 + 354 len 31]
                            if ((10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            require ((10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000) + Mask(112, 0, ext_call.return_data[32])
                            require s + 1 < mem[_2493]
                            mem[(32 * s + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000 / ((10000 * _5637) - (ext_call.return_data[0] * _5637) / 10000) + Mask(112, 0, ext_call.return_data[32])
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_2493]
        _5226 = mem[_2493]
        mem[mem[64] + 64 len floor32(mem[_2493])] = mem[_2493 + 32 len floor32(mem[_2493])]
        return 32, mem[mem[64] + 32 len (32 * _5226) + 32]
    mem[_2493 + 32 len 32 * _2490] = call.data[calldata.size len 32 * _2490]
    require 0 < mem[_2493]
    mem[_2493 + 32] = _2485
    _4945 = mem[96]
    idx = 0
    while idx < _4945 - 1:
        require idx < mem[96]
        _5084 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _5185 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _5382 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_5185)
                _5383 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _5385 = sha3(mem[_5383 + 32 len mem[_5383]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5382 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_5382 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_5382 + 125] = _5385
                mem[_5382 + 157] = ext_call.return_data[0]
                mem[_5382 + 72] = 85
                mem[64] = _5382 + 189
                require ext_code.size(address(sha3(0, FACTORYAddress, _5385, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _5385, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_5382 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_2493]
                if address(_5084) == address(_5084):
                    _5638 = mem[(32 * idx) + _2493 + 32]
                    mem[64] = _5382 + 253
                    mem[_5382 + 189] = 30
                    mem[_5382 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_5382 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5382 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _5382 + 321] = mem[idx + _5382 + 221]
                            idx = idx + 32
                            continue 
                        mem[_5382 + 321] = mem[_5382 + 323 len 30]
                        revert with 0, 32, 30, mem[_5382 + 321]
                    if not _5638:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5382 + 364 len 21]
                    if (10000 * _5638) - (ext_call.return_data[0] * _5638) / _5638 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5382 + 354 len 31]
                    if (10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5382 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5382 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5382 + 361 len 24]
                    if not (10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000:
                        if ((10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = 0 / ((10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000 / (10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5382 + 354 len 31]
                        if ((10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000 / ((10000 * _5638) - (ext_call.return_data[0] * _5638) / 10000) + Mask(112, 0, ext_call.return_data[0])
                else:
                    _5639 = mem[(32 * idx) + _2493 + 32]
                    mem[64] = _5382 + 253
                    mem[_5382 + 189] = 30
                    mem[_5382 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_5382 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5382 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _5382 + 321] = mem[idx + _5382 + 221]
                            idx = idx + 32
                            continue 
                        mem[_5382 + 321] = mem[_5382 + 323 len 30]
                        revert with 0, 32, 30, mem[_5382 + 321]
                    if not _5639:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5382 + 364 len 21]
                    if (10000 * _5639) - (ext_call.return_data[0] * _5639) / _5639 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5382 + 354 len 31]
                    if (10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5382 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5382 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5382 + 361 len 24]
                    if not (10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000:
                        if ((10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = 0 / ((10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000 / (10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5382 + 354 len 31]
                        if ((10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000 / ((10000 * _5639) - (ext_call.return_data[0] * _5639) / 10000) + Mask(112, 0, ext_call.return_data[32])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _5388 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_5084)
                _5389 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _5391 = sha3(mem[_5389 + 32 len mem[_5389]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5388 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_5388 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_5388 + 125] = _5391
                mem[_5388 + 157] = ext_call.return_data[0]
                mem[_5388 + 72] = 85
                mem[64] = _5388 + 189
                require ext_code.size(address(sha3(0, FACTORYAddress, _5391, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _5391, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_5388 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_2493]
                if address(_5084) == address(_5084):
                    _5640 = mem[(32 * idx) + _2493 + 32]
                    mem[64] = _5388 + 253
                    mem[_5388 + 189] = 30
                    mem[_5388 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_5388 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5388 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _5388 + 321] = mem[idx + _5388 + 221]
                            idx = idx + 32
                            continue 
                        mem[_5388 + 321] = mem[_5388 + 323 len 30]
                        revert with 0, 32, 30, mem[_5388 + 321]
                    if not _5640:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5388 + 364 len 21]
                    if (10000 * _5640) - (ext_call.return_data[0] * _5640) / _5640 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5388 + 354 len 31]
                    if (10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5388 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5388 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5388 + 361 len 24]
                    if not (10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000:
                        if ((10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = 0 / ((10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000 / (10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5388 + 354 len 31]
                        if ((10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000 / ((10000 * _5640) - (ext_call.return_data[0] * _5640) / 10000) + Mask(112, 0, ext_call.return_data[0])
                else:
                    _5641 = mem[(32 * idx) + _2493 + 32]
                    mem[64] = _5388 + 253
                    mem[_5388 + 189] = 30
                    mem[_5388 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_5388 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5388 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _5388 + 321] = mem[idx + _5388 + 221]
                            idx = idx + 32
                            continue 
                        mem[_5388 + 321] = mem[_5388 + 323 len 30]
                        revert with 0, 32, 30, mem[_5388 + 321]
                    if not _5641:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5388 + 364 len 21]
                    if (10000 * _5641) - (ext_call.return_data[0] * _5641) / _5641 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5388 + 354 len 31]
                    if (10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5388 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5388 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5388 + 361 len 24]
                    if not (10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000:
                        if ((10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = 0 / ((10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000 / (10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5388 + 354 len 31]
                        if ((10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000 / ((10000 * _5641) - (ext_call.return_data[0] * _5641) / 10000) + Mask(112, 0, ext_call.return_data[32])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _5394 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_5185)
                _5395 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _5397 = sha3(mem[_5395 + 32 len mem[_5395]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5394 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_5394 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_5394 + 125] = _5397
                mem[_5394 + 157] = ext_call.return_data[0]
                mem[_5394 + 72] = 85
                mem[64] = _5394 + 189
                require ext_code.size(address(sha3(0, FACTORYAddress, _5397, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _5397, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_5394 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_2493]
                if address(_5185) == address(_5084):
                    _5642 = mem[(32 * idx) + _2493 + 32]
                    mem[64] = _5394 + 253
                    mem[_5394 + 189] = 30
                    mem[_5394 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_5394 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5394 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _5394 + 321] = mem[idx + _5394 + 221]
                            idx = idx + 32
                            continue 
                        mem[_5394 + 321] = mem[_5394 + 323 len 30]
                        revert with 0, 32, 30, mem[_5394 + 321]
                    if not _5642:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5394 + 364 len 21]
                    if (10000 * _5642) - (ext_call.return_data[0] * _5642) / _5642 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5394 + 354 len 31]
                    if (10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5394 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5394 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5394 + 361 len 24]
                    if not (10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000:
                        if ((10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = 0 / ((10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000 / (10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5394 + 354 len 31]
                        if ((10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000 / ((10000 * _5642) - (ext_call.return_data[0] * _5642) / 10000) + Mask(112, 0, ext_call.return_data[0])
                else:
                    _5643 = mem[(32 * idx) + _2493 + 32]
                    mem[64] = _5394 + 253
                    mem[_5394 + 189] = 30
                    mem[_5394 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_5394 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5394 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _5394 + 321] = mem[idx + _5394 + 221]
                            idx = idx + 32
                            continue 
                        mem[_5394 + 321] = mem[_5394 + 323 len 30]
                        revert with 0, 32, 30, mem[_5394 + 321]
                    if not _5643:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5394 + 364 len 21]
                    if (10000 * _5643) - (ext_call.return_data[0] * _5643) / _5643 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5394 + 354 len 31]
                    if (10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5394 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5394 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5394 + 361 len 24]
                    if not (10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000:
                        if ((10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = 0 / ((10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000 / (10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5394 + 354 len 31]
                        if ((10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000 / ((10000 * _5643) - (ext_call.return_data[0] * _5643) / 10000) + Mask(112, 0, ext_call.return_data[32])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
                _5400 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_5084)
                _5401 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _5403 = sha3(mem[_5401 + 32 len mem[_5401]])
                require ext_code.size(FACTORYAddress)
                staticcall FACTORYAddress.contractCodeHash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5400 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_5400 + 105] = Mask(160, 96, FACTORYAddress)
                mem[_5400 + 125] = _5403
                mem[_5400 + 157] = ext_call.return_data[0]
                mem[_5400 + 72] = 85
                mem[64] = _5400 + 189
                require ext_code.size(address(sha3(0, FACTORYAddress, _5403, ext_call.return_data[0])))
                staticcall address(sha3(0, FACTORYAddress, _5403, ext_call.return_data[0])).getReserves() with:
                        gas gas_remaining wei
                mem[_5400 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_2493]
                if address(_5185) == address(_5084):
                    _5644 = mem[(32 * idx) + _2493 + 32]
                    mem[64] = _5400 + 253
                    mem[_5400 + 189] = 30
                    mem[_5400 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_5400 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5400 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _5400 + 321] = mem[idx + _5400 + 221]
                            idx = idx + 32
                            continue 
                        mem[_5400 + 321] = mem[_5400 + 323 len 30]
                        revert with 0, 32, 30, mem[_5400 + 321]
                    if not _5644:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5400 + 364 len 21]
                    if (10000 * _5644) - (ext_call.return_data[0] * _5644) / _5644 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5400 + 354 len 31]
                    if (10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5400 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5400 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5400 + 361 len 24]
                    if not (10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000:
                        if ((10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = 0 / ((10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000) + Mask(112, 0, ext_call.return_data[0])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * (10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000 / (10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5400 + 354 len 31]
                        if ((10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000) + Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000) + Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[32]) * (10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000 / ((10000 * _5644) - (ext_call.return_data[0] * _5644) / 10000) + Mask(112, 0, ext_call.return_data[0])
                else:
                    _5645 = mem[(32 * idx) + _2493 + 32]
                    mem[64] = _5400 + 253
                    mem[_5400 + 189] = 30
                    mem[_5400 + 221] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > 10000:
                        mem[_5400 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5400 + 257] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _5400 + 321] = mem[idx + _5400 + 221]
                            idx = idx + 32
                            continue 
                        mem[_5400 + 321] = mem[_5400 + 323 len 30]
                        revert with 0, 32, 30, mem[_5400 + 321]
                    if not _5645:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5400 + 364 len 21]
                    if (10000 * _5645) - (ext_call.return_data[0] * _5645) / _5645 != -ext_call.return_data[0] + 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5400 + 354 len 31]
                    if (10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000 <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_5400 + 364 len 21]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5400 + 361 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 40, 0x4c44656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_5400 + 361 len 24]
                    if not (10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000:
                        if ((10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = 0 / ((10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000) + Mask(112, 0, ext_call.return_data[32])
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * (10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000 / (10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5400 + 354 len 31]
                        if ((10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000) + Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require ((10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000) + Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[_2493]
                        mem[(32 * idx + 1) + _2493 + 32] = Mask(112, 0, ext_call.return_data[0]) * (10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000 / ((10000 * _5645) - (ext_call.return_data[0] * _5645) / 10000) + Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_2493]
    _5229 = mem[_2493]
    mem[mem[64] + 64 len floor32(mem[_2493])] = mem[_2493 + 32 len floor32(mem[_2493])]
    return 32, mem[mem[64] + 32 len (32 * _5229) + 32]
}



}
