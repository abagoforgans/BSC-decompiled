contract main {




// =====================  Runtime code  =====================


#
#  - swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - getAmountsIn(uint256 arg1, address[] arg2)
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

function _fallback() payable {
    revert
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

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    DGASAddress = arg1
    CONFIGAddress = arg2
    FACTORYAddress = arg3
    address(WETHAddress) = arg4
    GOVERNANCEAddress = arg5
    TRANSFER_LISTENERAddress = arg6
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
    staticcall CONFIGAddress.0xc199de32 with:
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
    staticcall CONFIGAddress.0xc199de32 with:
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
        call address(sha3(0, FACTORYAddress, sha3(arg1, arg2), ext_call.return_data[0])).burn(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg6), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
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
        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])))
        call address(sha3(0, FACTORYAddress, sha3(arg2, arg1), ext_call.return_data[0])).burn(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg6), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
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
        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])))
        call address(sha3(0, FACTORYAddress, sha3(arg1, address(WETHAddress)), ext_call.return_data[0])).burn(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if arg1 == address(WETHAddress):
            revert with 0, 32, 37, 0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345, mem[390 len 27]
        if arg1 < address(WETHAddress):
            if not arg1:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if arg1 == arg1:
                require ext_code.size(TRANSFER_LISTENERAddress)
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
                else:
                    mem[417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
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
                            emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
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
                        emit RemoveLiquidity(address rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                             ext_call.return_data[0],
                                             ext_call.return_data[32],
                                             mem[(2 * ceil32(return_data.size)) + 483 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                                             arg1,
                                             address(WETHAddress),
                        return ext_call.return_data[0], 
                               ext_call.return_data[32],
                               mem[(2 * ceil32(return_data.size)) + 483 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
                return ext_call.return_data[0], ext_call.return_data[32]
        else:
            if not address(WETHAddress):
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            if arg1 == address(WETHAddress):
                require ext_code.size(TRANSFER_LISTENERAddress)
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
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
                return ext_call.return_data[0], ext_call.return_data[32]
        require ext_code.size(TRANSFER_LISTENERAddress)
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
        require ext_code.size(address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])))
        call address(sha3(0, FACTORYAddress, sha3(address(WETHAddress), arg1), ext_call.return_data[0])).burn(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
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
                   funct ext_call.return_data[32 len 4]
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
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
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
                   funct ext_call.return_data[32 len 4]
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
                emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1, address(WETHAddress));
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
    emit RemoveLiquidity(ext_call.return_data[32], ext_call.return_data[0], msg.sender, arg1, address(WETHAddress));
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
    staticcall CONFIGAddress.0xc199de32 with:
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
    staticcall CONFIGAddress.0xc199de32 with:
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
    staticcall CONFIGAddress.0xa9ece1b7 with:
            gas gas_remaining wei
           args DGASAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.0xa9ece1b7 with:
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



}
