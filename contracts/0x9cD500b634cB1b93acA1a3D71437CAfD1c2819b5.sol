contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address adminAddress; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address candidateAddress;
uint8 stor100;
address stor150;
address stor151;
uint256 stor151;
address stor152;
uint256 stor152;
address stor153;
uint256 stor153;
address stor154;
uint256 stor154;

function paused() payable {
    return bool(stor100)
}

function candidate() payable {
    return candidateAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function SetLusdTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6c4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    emit 0x1d874926: stor150, arg1
    stor150 = arg1
}

function setCandidate(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6c4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    candidateAddress = arg1
    emit CandidateChanged(candidateAddress, arg1);
}

function becomeAdmin() payable {
    if candidateAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x644c6e41646d696e5570677261646561626c653a206f6e6c792063616e6469646174652063616e206265636f6d652061646d69,
                    mem[215 len 13]
    Mask(240, 0, stor0.field_16) = candidateAddress
    emit AdminChanged(address rg1, address rg2):
                      address(stor0.field_0),
                      0,
                      candidateAddress,
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6c4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if not arg1:
        if not stor100:
            revert with 0, 'Pausable: not paused'
        stor100 = 0
        emit Unpaused(msg.sender);
    else:
        if stor100:
            revert with 0, 'Pausable: paused'
        stor100 = 1
        emit Paused(msg.sender);
}

function __LnAdminUpgradeable_init(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0, 'LnAdminUpgradeable: zero address'
    adminAddress = arg1
    emit AdminChanged(0, arg1);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_a2b690a9(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0, 'LnAdminUpgradeable: zero address'
    adminAddress = arg1
    emit AdminChanged(0, arg1);
    if uint8(stor0.field_8):
        stor150 = arg2
    else:
        uint8(stor0.field_8) = 0
        stor150 = arg2
        uint8(stor0.field_8) = 0
}

function MaxCanBuildAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor154))
    staticcall address(stor154).BUILD_RATIO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor154))
    staticcall address(stor154).getUint(bytes32 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor153))
    staticcall address(stor153).MaxRedeemableInUsd(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not delegate.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / delegate.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not delegate.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0])
}

function updateAddressCache(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6c4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    require ext_code.size(arg1)
    staticcall arg1.0x768911da with:
            gas gas_remaining wei
           args 0, uint32('LnPrices'), 64, 26, 'LnPrices address not valid'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor152) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor152))
    require ext_code.size(arg1)
    staticcall arg1.0x768911da with:
            gas gas_remaining wei
           args 0, uint32('LnDebtSystem'), 64, 30, 'LnDebtSystem address not valid'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor151) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor151))
    require ext_code.size(arg1)
    staticcall arg1.0x768911da with:
            gas gas_remaining wei
           args 0, uint32('LnCollateralSystem'), 64, 36, 0xfe4c6e436f6c6c61746572616c53797374656d2061646472657373206e6f742076616c69, mem[232 len 28]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor153) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor153))
    require ext_code.size(arg1)
    staticcall arg1.0x768911da with:
            gas gas_remaining wei
           args 0, uint32('LnConfig'), 64, 26, 'LnConfig address not valid'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor154) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor154))
    emit CachedAddressUpdated('LnPrices', address(stor152));
    emit CachedAddressUpdated('LnDebtSystem', address(stor151));
    emit CachedAddressUpdated('LnCollateralSystem', address(stor153));
    emit CachedAddressUpdated('LnConfig', address(stor154));
}

function BuildAsset(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor100:
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(stor154))
    staticcall address(stor154).BUILD_RATIO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor154))
    staticcall address(stor154).getUint(bytes32 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor153))
    staticcall address(stor153).MaxRedeemableInUsd(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg1 > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x774275696c6420616d6f756e7420746f6f206269672c20796f75206e656564206d6f726520636f6c6c6174657261,
                        mem[210 len 18]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x774275696c6420616d6f756e7420746f6f206269672c20796f75206e656564206d6f726520636f6c6c6174657261,
                        mem[210 len 18]
    require ext_code.size(address(stor151))
    staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg1 + ext_call.return_data[32] < ext_call.return_data[32]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if not arg1 + ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
             gas gas_remaining wei
            args 
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / arg1 + ext_call.return_data[32] % 10 < 5:
            if 0 / arg1 + ext_call.return_data[32] / 10 > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(address(stor151))
                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / arg1 + ext_call.return_data[32] / 10)
            else:
                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1 + ext_call.return_data[0]:
                    if not arg1 + ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if 0 / arg1 + ext_call.return_data[32] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / arg1 + ext_call.return_data[32] / 10)
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (0 / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (0 / arg1 + ext_call.return_data[32] / 10)
                else:
                    if (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[0] != 10000000000 * 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not arg1 + ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / arg1 + ext_call.return_data[32] / 10)
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, ((10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (0 / arg1 + ext_call.return_data[32] / 10)
        else:
            if (0 / arg1 + ext_call.return_data[32]) + 10 / 10 > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(address(stor151))
                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, (0 / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / arg1 + ext_call.return_data[32]) + 10 / 10)
            else:
                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1 + ext_call.return_data[0]:
                    if not arg1 + ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if 0 / arg1 + ext_call.return_data[32] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - ((0 / arg1 + ext_call.return_data[32]) + 10 / 10)
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (0 / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / arg1 + ext_call.return_data[32]) + 10 / 10)
                else:
                    if (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[0] != 10000000000 * 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not arg1 + ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - ((0 / arg1 + ext_call.return_data[32]) + 10 / 10)
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, ((10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / arg1 + ext_call.return_data[32]) + 10 / 10)
    else:
        if 10000000000 * 10^18 * arg1 / arg1 != 10000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1 + ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
             gas gas_remaining wei
            args 
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32] % 10 < 5:
            if 10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32] / 10 > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(address(stor151))
                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, 10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32] / 10)
            else:
                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1 + ext_call.return_data[0]:
                    if not arg1 + ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if 0 / arg1 + ext_call.return_data[32] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32] / 10)
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (0 / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32] / 10)
                else:
                    if (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[0] != 10000000000 * 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not arg1 + ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32] / 10)
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, ((10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32] / 10)
        else:
            if (10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32]) + 10 / 10 > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(address(stor151))
                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, (10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32]) + 10 / 10)
            else:
                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1 + ext_call.return_data[0]:
                    if not arg1 + ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if 0 / arg1 + ext_call.return_data[32] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - ((10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32]) + 10 / 10)
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (0 / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32]) + 10 / 10)
                else:
                    if (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[0] != 10000000000 * 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not arg1 + ext_call.return_data[32]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32] / 10, delegate.return_data[0] - ((10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32]) + 10 / 10)
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, ((10000000000 * 10^18 * arg1) + (10000000000 * 10^18 * ext_call.return_data[0]) / arg1 + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * arg1 / arg1 + ext_call.return_data[32]) + 10 / 10)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor150)
    call stor150.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function BurnAsset(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor100:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0, 'amount need > 0'
    require ext_code.size(address(stor151))
    staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'no debt, no burn'
    require ext_code.size(stor150)
    if ext_call.return_data[0] < arg1:
        call stor150.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[32] - ext_call.return_data[0]:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(stor151))
            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, 0, 0
        else:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[32] - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                     gas gas_remaining wei
                    args 
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                    if (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                else:
                    if ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
            else:
                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not ext_call.return_data[32] - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                     gas gas_remaining wei
                    args 
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                    if (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                else:
                    if ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
    else:
        call stor150.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[32] - arg1:
            if ext_call.return_data[0] <= arg1:
                require ext_code.size(address(stor151))
                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, 0, 0
            else:
                if arg1 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - arg1:
                    if not ext_call.return_data[32] - arg1:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if 0 / ext_call.return_data[32] - arg1 % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[32] - arg1 / 10, 0
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (0 / ext_call.return_data[32] - arg1) + 10 / 10, 0
                else:
                    if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[0] - arg1 != 10000000000 * 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[32] - arg1:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 / 10, 0
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1) + 10 / 10, 0
        else:
            if not arg1:
                if not ext_call.return_data[32] - arg1:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                     gas gas_remaining wei
                    args 
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[32] - arg1 % 10 < 5:
                    if (0 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= arg1:
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, (0 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                    else:
                        if arg1 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - arg1:
                            if not ext_call.return_data[32] - arg1:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - arg1 % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - arg1 / 10, (0 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - arg1) + 10 / 10, (0 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                        else:
                            if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[0] - arg1 != 10000000000 * 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[32] - arg1:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 / 10, (0 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1) + 10 / 10, (0 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                else:
                    if ((0 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= arg1:
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, ((0 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
                    else:
                        if arg1 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - arg1:
                            if not ext_call.return_data[32] - arg1:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - arg1 % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - arg1 / 10, ((0 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - arg1) + 10 / 10, ((0 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
                        else:
                            if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[0] - arg1 != 10000000000 * 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[32] - arg1:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 / 10, ((0 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1) + 10 / 10, ((0 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
            else:
                if 10000000000 * 10^18 * arg1 / arg1 != 10000000000 * 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not ext_call.return_data[32] - arg1:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                     gas gas_remaining wei
                    args 
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1 % 10 < 5:
                    if (10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= arg1:
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, (10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                    else:
                        if arg1 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - arg1:
                            if not ext_call.return_data[32] - arg1:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - arg1 % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - arg1 / 10, (10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - arg1) + 10 / 10, (10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                        else:
                            if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[0] - arg1 != 10000000000 * 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[32] - arg1:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 / 10, (10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1) + 10 / 10, (10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1 / 10) + delegate.return_data[0]
                else:
                    if ((10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= arg1:
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, ((10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
                    else:
                        if arg1 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - arg1:
                            if not ext_call.return_data[32] - arg1:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - arg1 % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - arg1 / 10, ((10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - arg1) + 10 / 10, ((10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
                        else:
                            if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[0] - arg1 != 10000000000 * 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[32] - arg1:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1 / 10, ((10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * arg1) / ext_call.return_data[32] - arg1) + 10 / 10, ((10000000000 * 10^18 * arg1 / ext_call.return_data[32] - arg1) + 10 / 10) + delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function BuildMaxAsset() payable {
    if stor100:
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(stor154))
    staticcall address(stor154).BUILD_RATIO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor154))
    staticcall address(stor154).getUint(bytes32 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor153))
    staticcall address(stor153).MaxRedeemableInUsd(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not delegate.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if stor100:
            revert with 0, 'Pausable: paused'
        require ext_code.size(address(stor154))
        staticcall address(stor154).BUILD_RATIO() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor154))
        staticcall address(stor154).getUint(bytes32 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor153))
        staticcall address(stor153).MaxRedeemableInUsd(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / delegate.return_data[0] > 0:
                revert with 0, 
                            32,
                            46,
                            0x774275696c6420616d6f756e7420746f6f206269672c20796f75206e656564206d6f726520636f6c6c6174657261,
                            mem[274 len 18]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 / delegate.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 
                            32,
                            46,
                            0x774275696c6420616d6f756e7420746f6f206269672c20796f75206e656564206d6f726520636f6c6c6174657261,
                            mem[274 len 18]
        require ext_code.size(address(stor151))
        staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if (0 / delegate.return_data[0]) + ext_call.return_data[32] < ext_call.return_data[32]:
            revert with 0, 'SafeMath: addition overflow'
        if not 0 / delegate.return_data[0]:
            if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
            delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                if 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10 > delegate.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                else:
                    if (0 / delegate.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (0 / delegate.return_data[0]) + ext_call.return_data[0]:
                        if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                    else:
                        if (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
            else:
                if (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10 > delegate.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                else:
                    if (0 / delegate.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (0 / delegate.return_data[0]) + ext_call.return_data[0]:
                        if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - ((0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                    else:
                        if (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - ((0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
        else:
            if 10000000000 * 10^18 * 0 / delegate.return_data[0] / 0 / delegate.return_data[0] != 10000000000 * 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
            delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                if 10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10 > delegate.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                else:
                    if (0 / delegate.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (0 / delegate.return_data[0]) + ext_call.return_data[0]:
                        if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                    else:
                        if (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10)
            else:
                if (10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10 > delegate.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, (10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                else:
                    if (0 / delegate.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (0 / delegate.return_data[0]) + ext_call.return_data[0]:
                        if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - ((10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                    else:
                        if (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (0 / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - ((10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10000000000 * 10^18 * 0 / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * 0 / delegate.return_data[0] / (0 / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor150)
        call stor150.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / delegate.return_data[0]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not delegate.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if stor100:
            revert with 0, 'Pausable: paused'
        require ext_code.size(address(stor154))
        staticcall address(stor154).BUILD_RATIO() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor154))
        staticcall address(stor154).getUint(bytes32 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor153))
        staticcall address(stor153).MaxRedeemableInUsd(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] > 0:
                revert with 0, 
                            32,
                            46,
                            0x774275696c6420616d6f756e7420746f6f206269672c20796f75206e656564206d6f726520636f6c6c6174657261,
                            mem[274 len 18]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 
                            32,
                            46,
                            0x774275696c6420616d6f756e7420746f6f206269672c20796f75206e656564206d6f726520636f6c6c6174657261,
                            mem[274 len 18]
        require ext_code.size(address(stor151))
        staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] < ext_call.return_data[32]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]:
            if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
            delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                if 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10 > delegate.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                    else:
                        if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
            else:
                if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10 > delegate.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - ((0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                    else:
                        if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - ((0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
        else:
            if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] != 10000000000 * 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
            delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10 > delegate.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                    else:
                        if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10)
            else:
                if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10 > delegate.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                    else:
                        if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32] / 10, delegate.return_data[0] - ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + (10000000000 * 10^18 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10, delegate.return_data[0] - ((10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]) + ext_call.return_data[32]) + 10 / 10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor150)
        call stor150.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * ext_call.return_data[0] / delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function BurnAssetToTarget() payable {
    if stor100:
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(stor154))
    staticcall address(stor154).BUILD_RATIO() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor154))
    staticcall address(stor154).getUint(bytes32 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor153))
    staticcall address(stor153).GetUserTotalCollateralInUsd(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(stor151))
        staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] <= 0:
            revert with 0, 'You maybe want build to target'
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor150)
        staticcall stor150.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'amount need > 0'
        require ext_code.size(address(stor151))
        staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            revert with 0, 'no debt, no burn'
        require ext_code.size(stor150)
        call stor150.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if not ext_call.return_data[32] - ext_call.return_data[0]:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(stor151))
                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, 0, 0
            else:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[32] - ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                         gas gas_remaining wei
                        args 
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                        if (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                    else:
                        if ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                else:
                    if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[32] - ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                         gas gas_remaining wei
                        args 
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                        if (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                    else:
                        if ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
        else:
            if not ext_call.return_data[32] - ext_call.return_data[0]:
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, 0
                else:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[32] - ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor151))
                    if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, 0
                    else:
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, 0
            else:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[32] - ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                         gas gas_remaining wei
                        args 
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                        if (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_call.return_data[32] - ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                    else:
                        if ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_call.return_data[32] - ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                else:
                    if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[32] - ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                         gas gas_remaining wei
                        args 
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                        if (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_call.return_data[32] - ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                    else:
                        if ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ext_call.return_data[32] - ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(address(stor151))
        staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'You maybe want build to target'
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor150)
        staticcall stor150.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'amount need > 0'
            require ext_code.size(address(stor151))
            staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                revert with 0, 'no debt, no burn'
            require ext_code.size(stor150)
            call stor150.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] > ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if not ext_call.return_data[32] - ext_call.return_data[0]:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, 0
                else:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[32] - ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                             gas gas_remaining wei
                            args 
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                            if (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                        else:
                            if ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                    else:
                        if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[32] - ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                             gas gas_remaining wei
                            args 
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                            if (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                        else:
                            if ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
            else:
                if not ext_call.return_data[32] - ext_call.return_data[0]:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 0
                    else:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[32] - ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor151))
                        if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, 0
                        else:
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, 0
                else:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[32] - ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                             gas gas_remaining wei
                            args 
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                            if (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                require ext_code.size(address(stor151))
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                            else:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[32] - ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(address(stor151))
                                if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                                else:
                                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                        else:
                            if ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                require ext_code.size(address(stor151))
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                            else:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[32] - ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(address(stor151))
                                if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                                else:
                                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                    else:
                        if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[32] - ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                             gas gas_remaining wei
                            args 
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                            if (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                require ext_code.size(address(stor151))
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                            else:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[32] - ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(address(stor151))
                                if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                                else:
                                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                        else:
                            if ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                require ext_code.size(address(stor151))
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                            else:
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[32] - ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(address(stor151))
                                if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] / 10, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                                else:
                                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
        else:
            if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) <= 0:
                revert with 0, 'amount need > 0'
            require ext_code.size(address(stor151))
            staticcall address(stor151).GetUserDebtBalanceInUsd(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                revert with 0, 'no debt, no burn'
            require ext_code.size(stor150)
            if ext_call.return_data[0] < ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                call stor150.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[32] - ext_call.return_data[0]:
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor151))
                    call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, 0
                else:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[32] - ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                             gas gas_remaining wei
                            args 
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                            if (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, (0 / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                        else:
                            if ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, ((0 / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
                    else:
                        if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[32] - ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                             gas gas_remaining wei
                            args 
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] % 10 < 5:
                            if (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0] / 10) + delegate.return_data[0]
                        else:
                            if ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(address(stor151))
                            call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, ((10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32] - ext_call.return_data[0]) + 10 / 10) + delegate.return_data[0]
            else:
                call stor150.0x9dc29fac with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    if ext_call.return_data[0] <= ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        require ext_code.size(address(stor151))
                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 0
                    else:
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                            if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, 0
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, 0
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10000000000 * 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(address(stor151))
                            if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, 0
                            else:
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, 0
                else:
                    if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                             gas gas_remaining wei
                            args 
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                            if (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                require ext_code.size(address(stor151))
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                            else:
                                if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(address(stor151))
                                    if 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                                    else:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                                else:
                                    if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10000000000 * 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(address(stor151))
                                    if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                                    else:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                        else:
                            if ((0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                require ext_code.size(address(stor151))
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, ((0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                            else:
                                if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(address(stor151))
                                    if 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, ((0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                                    else:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, ((0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                                else:
                                    if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10000000000 * 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(address(stor151))
                                    if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, ((0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                                    else:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, ((0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                    else:
                        if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) != 10000000000 * 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
                        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                             gas gas_remaining wei
                            args 
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                            if ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                require ext_code.size(address(stor151))
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                            else:
                                if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(address(stor151))
                                    if 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                                    else:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                                else:
                                    if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10000000000 * 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(address(stor151))
                                    if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                                    else:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, ((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10) + delegate.return_data[0]
                        else:
                            if (((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0] < delegate.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                require ext_code.size(address(stor151))
                                call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, (((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                            else:
                                if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                                    if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(address(stor151))
                                    if 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, (((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                                    else:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, (((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                                else:
                                    if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10000000000 * 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(address(stor151))
                                    if 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) % 10 < 5:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10, (((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
                                    else:
                                        call address(stor151).UpdateDebt(address rg1, uint256 rg2, uint256 rg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10, (((10000000000 * 10^18 * ext_call.return_data[0]) - (10000000000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[32] - ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)) + 10 / 10) + delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
