contract main {




// =====================  Runtime code  =====================


const MAX_DEL_PER_TIME = 50


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address adminAddress; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address candidateAddress;
address stor50;
uint256 stor50;
address stor51;
uint256 stor51;
mapping of struct userDebtState;
mapping of uint256 lastDebtFactors;
uint256 debtCurrentIndex;
uint256 lastCloseAt;
uint256 lastDeletTo;

function lastCloseAt() payable {
    return lastCloseAt
}

function lastDeletTo() payable {
    return lastDeletTo
}

function userDebtState(address arg1) payable {
    require calldata.size - 4 >= 32
    return userDebtState[arg1].field_0, userDebtState[arg1].field_256
}

function candidate() payable {
    return candidateAddress
}

function GetUserDebtData(address arg1) payable {
    require calldata.size - 4 >= 32
    return userDebtState[address(arg1)].field_0, userDebtState[address(arg1)].field_256
}

function admin() payable {
    return adminAddress
}

function debtCurrentIndex() payable {
    return debtCurrentIndex
}

function lastDebtFactors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lastDebtFactors[arg1]
}

function _fallback() payable {
    revert
}

function LastSystemDebtFactor() payable {
    if debtCurrentIndex != 0:
        return lastDebtFactors[stor54 - 1]
    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function setCandidate(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x734c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    candidateAddress = arg1
    emit CandidateChanged(candidateAddress, arg1);
}

function becomeAdmin() payable {
    if candidateAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe4c6e41646d696e5570677261646561626c653a206f6e6c792063616e6469646174652063616e206265636f6d652061646d69,
                    mem[215 len 13]
    Mask(240, 0, stor0.field_16) = candidateAddress
    emit AdminChanged(address rg1, address rg2):
                      address(stor0.field_0),
                      0,
                      candidateAddress,
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

function SetLastCloseFeePeriodAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor50))
    staticcall address(stor50).DEBT_SYSTEM() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor50))
    staticcall address(stor50).hasRole(bytes32 rg1, address rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Need debt system access role'
    if arg1 < lastCloseAt:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77436c6f736520696e6465782063616e206e6f742072657475726e20746f20706173,
                    mem[198 len 30]
    if arg1 > debtCurrentIndex:
        revert with 0, 'Can not close at future index'
    lastCloseAt = arg1
}

function updateAddressCache(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x734c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    require ext_code.size(arg1)
    staticcall arg1.0x768911da with:
            gas gas_remaining wei
           args 0, uint32('LnAccessControl'), 64, 33, 0x644c6e416363657373436f6e74726f6c2061646472657373206e6f742076616c69, mem[229 len 31]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor50) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor50))
    require ext_code.size(arg1)
    staticcall arg1.0x768911da with:
            gas gas_remaining wei
           args 0, uint32('LnAssetSystem'), 64, 31, 'LnAssetSystem address not valid'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor51) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor51))
    emit CachedAddressUpdated('LnAccessControl', address(stor50));
    emit CachedAddressUpdated('LnAssetSystem', address(stor51));
}

function __LnDebtSystem_init(address arg1) payable {
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
        uint8(stor0.field_8) = 0
}

function UpdateUserDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor50))
    staticcall address(stor50).DEBT_SYSTEM() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor50))
    staticcall address(stor50).hasRole(bytes32 rg1, address rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Need debt system access role'
    userDebtState[address(arg1)].field_0 = arg2
    if debtCurrentIndex != 0:
        userDebtState[address(arg1)].field_256 = lastDebtFactors[stor54 - 1]
        emit 0xe96553ac: address(arg1), arg2, lastDebtFactors[stor54 - 1], block.timestamp
    else:
        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
             gas gas_remaining wei
            args 
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userDebtState[address(arg1)].field_256 = delegate.return_data[0]
        emit 0xe96553ac: address(arg1), arg2, delegate.return_data[0], block.timestamp
}

function sub_29dbf38a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x734c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Length mismatch'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'Length mismatch'
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0, 'Length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        mem[0] = idx + debtCurrentIndex
        mem[32] = 53
        lastDebtFactors[idx + stor54] = cd[((32 * idx) + cd[68] + 36)]
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19] = cd[((32 * idx) + cd[36] + 36)]
        mem[_19 + 32] = cd[((32 * idx) + cd[68] + 36)]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 52
        userDebtState[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = cd[((32 * idx) + cd[36] + 36)]
        userDebtState[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = cd[((32 * idx) + cd[68] + 36)]
        emit 0x1345e5da: idx + debtCurrentIndex, cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)]
        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 96] = cd[((32 * idx) + cd[100] + 36)]
        emit 0xe96553ac: address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)]
        idx = idx + 1
        continue 
    debtCurrentIndex += ('cd', 4).length
}

function PushDebtFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor50))
    staticcall address(stor50).DEBT_SYSTEM() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor50))
    staticcall address(stor50).hasRole(bytes32 rg1, address rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Need debt system access role'
    if not debtCurrentIndex:
        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
             gas gas_remaining wei
            args 
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        lastDebtFactors[stor54] = delegate.return_data[0]
    else:
        if lastDebtFactors[stor54 - 1]:
            if not lastDebtFactors[stor54 - 1]:
                lastDebtFactors[stor54] = 0
            else:
                if arg1 * lastDebtFactors[stor54 - 1] / lastDebtFactors[stor54 - 1] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg1 * lastDebtFactors[stor54 - 1] / 100000000 * 10^18 % 10 < 5:
                    lastDebtFactors[stor54] = arg1 * lastDebtFactors[stor54 - 1] / 100000000 * 10^18 / 10
                else:
                    lastDebtFactors[stor54] = (arg1 * lastDebtFactors[stor54 - 1] / 100000000 * 10^18) + 10 / 10
        else:
            require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
            delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            lastDebtFactors[stor54] = delegate.return_data[0]
    emit 0x1345e5da: debtCurrentIndex, lastDebtFactors[stor54], block.timestamp
    if debtCurrentIndex + 1 < debtCurrentIndex:
        revert with 0, 'SafeMath: addition overflow'
    debtCurrentIndex++
    if lastDeletTo < lastCloseAt:
        if lastCloseAt - lastDeletTo > 50:
            idx = lastDeletTo
            while idx < 50:
                mem[0] = idx
                mem[32] = 53
                lastDebtFactors[idx] = 0
                idx = idx + 1
                continue 
            if lastDeletTo + 50 < lastDeletTo:
                revert with 0, 'SafeMath: addition overflow'
            lastDeletTo += 50
        else:
            idx = lastDeletTo
            while idx < lastCloseAt - lastDeletTo:
                mem[0] = idx
                mem[32] = 53
                lastDebtFactors[idx] = 0
                idx = idx + 1
                continue 
            if lastCloseAt < lastDeletTo:
                revert with 0, 'SafeMath: addition overflow'
            lastDeletTo = lastCloseAt
}

function UpdateDebt(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(stor50))
    staticcall address(stor50).DEBT_SYSTEM() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor50))
    staticcall address(stor50).hasRole(bytes32 rg1, address rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Need debt system access role'
    if not debtCurrentIndex:
        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
             gas gas_remaining wei
            args 
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        lastDebtFactors[stor54] = delegate.return_data[0]
    else:
        if lastDebtFactors[stor54 - 1]:
            if not lastDebtFactors[stor54 - 1]:
                lastDebtFactors[stor54] = 0
            else:
                if arg3 * lastDebtFactors[stor54 - 1] / lastDebtFactors[stor54 - 1] != arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 * lastDebtFactors[stor54 - 1] / 100000000 * 10^18 % 10 < 5:
                    lastDebtFactors[stor54] = arg3 * lastDebtFactors[stor54 - 1] / 100000000 * 10^18 / 10
                else:
                    lastDebtFactors[stor54] = (arg3 * lastDebtFactors[stor54 - 1] / 100000000 * 10^18) + 10 / 10
        else:
            require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
            delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            lastDebtFactors[stor54] = delegate.return_data[0]
    emit 0x1345e5da: debtCurrentIndex, lastDebtFactors[stor54], block.timestamp
    if debtCurrentIndex + 1 < debtCurrentIndex:
        revert with 0, 'SafeMath: addition overflow'
    debtCurrentIndex++
    if lastDeletTo < lastCloseAt:
        if lastCloseAt - lastDeletTo > 50:
            idx = lastDeletTo
            while idx < 50:
                mem[0] = idx
                mem[32] = 53
                lastDebtFactors[idx] = 0
                idx = idx + 1
                continue 
            if lastDeletTo + 50 < lastDeletTo:
                revert with 0, 'SafeMath: addition overflow'
            lastDeletTo += 50
        else:
            idx = lastDeletTo
            while idx < lastCloseAt - lastDeletTo:
                mem[0] = idx
                mem[32] = 53
                lastDebtFactors[idx] = 0
                idx = idx + 1
                continue 
            if lastCloseAt < lastDeletTo:
                revert with 0, 'SafeMath: addition overflow'
            lastDeletTo = lastCloseAt
    userDebtState[address(arg1)].field_0 = arg2
    if debtCurrentIndex != 0:
        userDebtState[address(arg1)].field_256 = lastDebtFactors[stor54 - 1]
        emit 0xe96553ac: address(arg1), arg2, lastDebtFactors[stor54 - 1], block.timestamp
    else:
        require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
        delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
             gas gas_remaining wei
            args 
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userDebtState[address(arg1)].field_256 = delegate.return_data[0]
        emit 0xe96553ac: address(arg1), arg2, delegate.return_data[0], block.timestamp
}

function GetUserCurrentDebtProportion(address arg1) payable {
    require calldata.size - 4 >= 32
    if not userDebtState[address(arg1)].field_0:
        return 0
    if debtCurrentIndex != 0:
        if not lastDebtFactors[stor54 - 1]:
            if not userDebtState[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero'
            if 0 / userDebtState[address(arg1)].field_256 % 10 < 5:
                if not 0 / userDebtState[address(arg1)].field_256 / 10:
                    return 0
                if userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 0 / userDebtState[address(arg1)].field_256 / 10 != userDebtState[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 % 10 < 5:
                    return (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10)
                return ((userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10)
            if not (0 / userDebtState[address(arg1)].field_256) + 10 / 10:
                return 0
            if userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / (0 / userDebtState[address(arg1)].field_256) + 10 / 10 != userDebtState[address(arg1)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
                return (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10)
            return ((userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10)
        if 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / lastDebtFactors[stor54 - 1] != 10000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not userDebtState[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 % 10 < 5:
            if not 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10:
                return 0
            if userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 != userDebtState[address(arg1)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 % 10 < 5:
                return (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10)
            return ((userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10)
        if not (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10:
            return 0
        if userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 != userDebtState[address(arg1)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
            return (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10)
        return ((userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10)
    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        if not userDebtState[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if 0 / userDebtState[address(arg1)].field_256 % 10 < 5:
            if not 0 / userDebtState[address(arg1)].field_256 / 10:
                return 0
            if userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 0 / userDebtState[address(arg1)].field_256 / 10 != userDebtState[address(arg1)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 % 10 < 5:
                return (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10)
            return ((userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10)
        if not (0 / userDebtState[address(arg1)].field_256) + 10 / 10:
            return 0
        if userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / (0 / userDebtState[address(arg1)].field_256) + 10 / 10 != userDebtState[address(arg1)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
            return (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10)
        return ((userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10)
    if 10000000000 * 10^18 * delegate.return_data[0] / delegate.return_data[0] != 10000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not userDebtState[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero'
    if 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 % 10 < 5:
        if not 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10:
            return 0
        if userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 != userDebtState[address(arg1)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 % 10 < 5:
            return (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10)
        return ((userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10)
    if not (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10:
        return 0
    if userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 != userDebtState[address(arg1)].field_0:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
        return (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10)
    return ((userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10)
}

function GetUserDebtBalanceInUsd(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor51))
    staticcall address(stor51).0xf5d12989 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userDebtState[address(arg1)].field_0:
        return 0, ext_call.return_data[0]
    if debtCurrentIndex != 0:
        if not lastDebtFactors[stor54 - 1]:
            if not userDebtState[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero'
            if 0 / userDebtState[address(arg1)].field_256 % 10 < 5:
                if not 0 / userDebtState[address(arg1)].field_256 / 10:
                    if ext_call.return_data[0]:
                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 10^9 * ext_call.return_data[0]:
                            if 0 / 10^9 * ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    return 0, ext_call.return_data[0]
                if userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 0 / userDebtState[address(arg1)].field_256 / 10 != userDebtState[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not ext_call.return_data[0]:
                    return 0, ext_call.return_data[0]
                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not 10^9 * ext_call.return_data[0]:
                    return 0, ext_call.return_data[0]
                if userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                        if 10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                            return 10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                                   ext_call.return_data[0]
                        return (10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                               ext_call.return_data[0]
                    if (10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                        return (10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                               ext_call.return_data[0]
                    return ((10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                           ext_call.return_data[0]
                if 10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        return 10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                               ext_call.return_data[0]
                    return (10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                           ext_call.return_data[0]
                if (10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    return (10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return ((10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if not (0 / userDebtState[address(arg1)].field_256) + 10 / 10:
                if ext_call.return_data[0]:
                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 10^9 * ext_call.return_data[0]:
                        if 0 / 10^9 * ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                return 0, ext_call.return_data[0]
            if userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / (0 / userDebtState[address(arg1)].field_256) + 10 / 10 != userDebtState[address(arg1)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                return 0, ext_call.return_data[0]
            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 10^9 * ext_call.return_data[0]:
                return 0, ext_call.return_data[0]
            if userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
                if 10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        return 10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                               ext_call.return_data[0]
                    return (10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                           ext_call.return_data[0]
                if (10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    return (10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return ((10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if 10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                if 10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    return 10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return (10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if (10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                return (10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return ((10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / lastDebtFactors[stor54 - 1] != 10000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not userDebtState[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 % 10 < 5:
            if not 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10:
                if ext_call.return_data[0]:
                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 10^9 * ext_call.return_data[0]:
                        if 0 / 10^9 * ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                return 0, ext_call.return_data[0]
            if userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 != userDebtState[address(arg1)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                return 0, ext_call.return_data[0]
            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 10^9 * ext_call.return_data[0]:
                return 0, ext_call.return_data[0]
            if userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 % 10 < 5:
                if 10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        return 10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                               ext_call.return_data[0]
                    return (10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                           ext_call.return_data[0]
                if (10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    return (10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return ((10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if 10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                if 10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    return 10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return (10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if (10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                return (10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return ((10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if not (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10:
            if ext_call.return_data[0]:
                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 10^9 * ext_call.return_data[0]:
                    if 0 / 10^9 * ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return 0, ext_call.return_data[0]
        if userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 != userDebtState[address(arg1)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            return 0, ext_call.return_data[0]
        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 10^9 * ext_call.return_data[0]:
            return 0, ext_call.return_data[0]
        if userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
            if 10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                if 10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    return 10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return (10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if (10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                return (10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return ((10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if 10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
            if 10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                return 10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return (10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if (10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            return (10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                   ext_call.return_data[0]
        return ((10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * lastDebtFactors[stor54 - 1] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
               ext_call.return_data[0]
    require ext_code.size(0xc065a00fbf75366d8d228f856d470c3a7c4d928c)
    delegate 0xc065a00fbf75366d8d228f856d470c3a7c4d928c.preciseUnit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        if not userDebtState[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if 0 / userDebtState[address(arg1)].field_256 % 10 < 5:
            if not 0 / userDebtState[address(arg1)].field_256 / 10:
                if ext_call.return_data[0]:
                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 10^9 * ext_call.return_data[0]:
                        if 0 / 10^9 * ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                return 0, ext_call.return_data[0]
            if userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 0 / userDebtState[address(arg1)].field_256 / 10 != userDebtState[address(arg1)].field_0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                return 0, ext_call.return_data[0]
            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 10^9 * ext_call.return_data[0]:
                return 0, ext_call.return_data[0]
            if userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 % 10 < 5:
                if 10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        return 10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                               ext_call.return_data[0]
                    return (10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                           ext_call.return_data[0]
                if (10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    return (10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return ((10^9 * userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if 10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                if 10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    return 10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return (10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if (10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                return (10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return ((10^9 * (userDebtState[address(arg1)].field_0 * 0 / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if not (0 / userDebtState[address(arg1)].field_256) + 10 / 10:
            if ext_call.return_data[0]:
                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 10^9 * ext_call.return_data[0]:
                    if 0 / 10^9 * ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return 0, ext_call.return_data[0]
        if userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / (0 / userDebtState[address(arg1)].field_256) + 10 / 10 != userDebtState[address(arg1)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            return 0, ext_call.return_data[0]
        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 10^9 * ext_call.return_data[0]:
            return 0, ext_call.return_data[0]
        if userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
            if 10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                if 10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    return 10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return (10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if (10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                return (10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return ((10^9 * userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if 10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
            if 10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                return 10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return (10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if (10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            return (10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                   ext_call.return_data[0]
        return ((10^9 * (userDebtState[address(arg1)].field_0 * (0 / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
               ext_call.return_data[0]
    if 10000000000 * 10^18 * delegate.return_data[0] / delegate.return_data[0] != 10000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not userDebtState[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero'
    if 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 % 10 < 5:
        if not 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10:
            if ext_call.return_data[0]:
                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 10^9 * ext_call.return_data[0]:
                    if 0 / 10^9 * ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return 0, ext_call.return_data[0]
        if userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 != userDebtState[address(arg1)].field_0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            return 0, ext_call.return_data[0]
        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 10^9 * ext_call.return_data[0]:
            return 0, ext_call.return_data[0]
        if userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 % 10 < 5:
            if 10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
                if 10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    return 10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                           ext_call.return_data[0]
                return (10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                       ext_call.return_data[0]
            if (10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                return (10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return ((10^9 * userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if 10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
            if 10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                return 10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return (10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if (10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            return (10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                   ext_call.return_data[0]
        return ((10^9 * (userDebtState[address(arg1)].field_0 * 10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
               ext_call.return_data[0]
    if not (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10:
        if ext_call.return_data[0]:
            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10^9 * ext_call.return_data[0]:
                if 0 / 10^9 * ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return 0, ext_call.return_data[0]
    if userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 != userDebtState[address(arg1)].field_0:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        return 0, ext_call.return_data[0]
    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] != 10^9:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^9 * ext_call.return_data[0]:
        return 0, ext_call.return_data[0]
    if userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
        if 10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
            if 10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                return 10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                       ext_call.return_data[0]
            return (10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
                   ext_call.return_data[0]
        if (10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            return (10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
                   ext_call.return_data[0]
        return ((10^9 * userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
               ext_call.return_data[0]
    if 10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 10^9 * ext_call.return_data[0] != (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if 10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 % 10 < 5:
        if 10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
            return 10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6 / 10, 
                   ext_call.return_data[0]
        return (10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10, 
               ext_call.return_data[0]
    if (10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
        return (10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10, 
               ext_call.return_data[0]
    return ((10^9 * (userDebtState[address(arg1)].field_0 * (10000000000 * 10^18 * delegate.return_data[0] / userDebtState[address(arg1)].field_256) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * ext_call.return_data[0] / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10, 
           ext_call.return_data[0]
}



}
