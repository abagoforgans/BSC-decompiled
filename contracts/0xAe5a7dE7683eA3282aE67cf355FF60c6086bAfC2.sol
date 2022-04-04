contract main {




// =====================  Runtime code  =====================


#
#  - RedeemMax(bytes32 arg1)
#
const Currency_ETH = 'ETH'

const Currency_LINA = 'LINA'


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address adminAddress; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address candidateAddress;
uint8 stor100;
address priceGetterAddress;
uint256 stor150;
address debtSystemAddress;
uint256 stor151;
address mConfigAddress;
uint256 stor152;
address mRewardLockerAddress;
uint256 stor153;
uint256 uniqueId;
mapping of struct tokenInfos;
array of uint256 tokenSymbol;
mapping of uint256 userCollateralData;

function tokenSymbol(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenSymbol.length
    return tokenSymbol[arg1]
}

function mConfig() payable {
    return address(mConfigAddress)
}

function debtSystem() payable {
    return address(debtSystemAddress)
}

function paused() payable {
    return bool(stor100)
}

function uniqueId() payable {
    return uniqueId
}

function candidate() payable {
    return candidateAddress
}

function tokenInfos(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenInfos[arg1].field_0, tokenInfos[arg1].field_256, tokenInfos[arg1].field_512, bool(tokenInfos[arg1].field_768)
}

function mRewardLocker() payable {
    return address(mRewardLockerAddress)
}

function userCollateralData(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return userCollateralData[arg1][arg2]
}

function priceGetter() payable {
    return address(priceGetterAddress)
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
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

function UpdateTokenInfo(bytes32 arg1, address arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6c4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    revert with 0, 'symbol cannot empty'
}

function becomeAdmin() payable {
    if candidateAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x744c6e41646d696e5570677261646561626c653a206f6e6c792063616e6469646174652063616e206265636f6d652061646d69,
                    mem[215 len 13]
    Mask(240, 0, stor0.field_16) = candidateAddress
    emit AdminChanged(address rg1, address rg2):
                      address(stor0.field_0),
                      0,
                      candidateAddress,
}

function GetUserCollateral(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != 'LINA':
        return userCollateralData[address(arg1)][arg2]
    require ext_code.size(address(mRewardLockerAddress))
    staticcall address(mRewardLockerAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userCollateralData[address(arg1)][arg2] + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (userCollateralData[address(arg1)][arg2] + ext_call.return_data[0])
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

function __LnCollateralSystem_init(address arg1) payable {
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

function UpdateTokenInfos(bytes32[] arg1, address[] arg2, uint256[] arg3, bool[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6c4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if arg2.length != arg1.length:
        revert with 0, 'length of array not eq'
    if arg3.length != arg1.length:
        revert with 0, 'length of array not eq'
    if arg4.length != arg1.length:
        revert with 0, 'length of array not eq'
    if 0 >= arg1.length:
        return 1
    require 0 < arg2.length
    require 0 < arg3.length
    require 0 < arg4.length
    revert with 0, 'symbol cannot empty'
}

function Collateral(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor100:
        revert with 0, 'Pausable: paused'
    if not ext_code.size(tokenInfos[arg1].field_0):
        revert with 0, 'Invalid token symbol'
    if arg2 <= tokenInfos[arg1].field_256:
        revert with 0, 'Collateral amount too small'
    if tokenInfos[arg1].field_768:
        revert with 0, 'This token is closed'
    require ext_code.size(tokenInfos[arg1].field_0)
    staticcall tokenInfos[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'insufficient balance'
    require ext_code.size(tokenInfos[arg1].field_0)
    staticcall tokenInfos[arg1].field_0.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe696e73756666696369656e7420616c6c6f77616e63652c206e65656420617070726f7665206d6f726520616d6f756e,
                    mem[212 len 16]
    require ext_code.size(tokenInfos[arg1].field_0)
    call tokenInfos[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + userCollateralData[address(msg.sender)][arg1] < userCollateralData[address(msg.sender)][arg1]:
        revert with 0, 'SafeMath: addition overflow'
    userCollateralData[address(msg.sender)][arg1] += arg2
    if arg2 + tokenInfos[arg1].field_512 < tokenInfos[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    tokenInfos[arg1].field_512 += arg2
    emit CollateralLog(address(msg.sender), arg1, arg2, userCollateralData[address(msg.sender)][arg1]);
    return 1
}

function GetUserCollaterals(address arg1) payable {
    require calldata.size - 4 >= 32
    require tokenSymbol.length + 1 <= test266151307()
    if tokenSymbol.length + 1:
        mem[128 len 32 * tokenSymbol.length + 1] = call.data[calldata.size len 32 * tokenSymbol.length + 1]
    require tokenSymbol.length + 1 <= test266151307()
    mem[(32 * tokenSymbol.length + 1) + 128] = tokenSymbol.length + 1
    if tokenSymbol.length + 1:
        mem[(32 * tokenSymbol.length + 1) + 160 len 32 * tokenSymbol.length + 1] = call.data[calldata.size len 32 * tokenSymbol.length + 1]
    idx = 0
    s = 0
    while idx < tokenSymbol.length:
        mem[0] = tokenSymbol[idx]
        mem[32] = sha3(address(arg1), 157)
        if not userCollateralData[address(arg1)][stor156[idx]]:
            idx = idx + 1
            s = s
            continue 
        require s < tokenSymbol.length + 1
        mem[(32 * s) + 128] = tokenSymbol[idx]
        mem[0] = tokenSymbol[idx]
        mem[32] = sha3(address(arg1), 157)
        require s < mem[(32 * tokenSymbol.length + 1) + 128]
        mem[(32 * s) + (32 * tokenSymbol.length + 1) + 160] = userCollateralData[address(arg1)][stor156[idx]]
        idx = idx + 1
        s = s + 1
        continue 
    if userCollateralData[address(arg1)]['ETH']:
        require s < tokenSymbol.length + 1
        mem[(32 * s) + 128] = 'ETH'
        require s < mem[(32 * tokenSymbol.length + 1) + 128]
        mem[(32 * s) + (32 * tokenSymbol.length + 1) + 160] = userCollateralData[address(arg1)]['ETH']
    mem[(64 * tokenSymbol.length + 1) + 160] = 64
    mem[(64 * tokenSymbol.length + 1) + 224] = tokenSymbol.length + 1
    mem[(64 * tokenSymbol.length + 1) + 256 len floor32(tokenSymbol.length + 1)] = mem[128 len floor32(tokenSymbol.length + 1)]
    mem[(64 * tokenSymbol.length + 1) + 192] = (32 * tokenSymbol.length + 1) + 96
    mem[(98 * tokenSymbol.length) + 354] = mem[(32 * tokenSymbol.length + 1) + 128]
    mem[(98 * tokenSymbol.length) + 386 len floor32(mem[(32 * tokenSymbol.length + 1) + 128])] = mem[(32 * tokenSymbol.length + 1) + 160 len floor32(mem[(32 * tokenSymbol.length + 1) + 128])]
    return memory
      from (64 * tokenSymbol.length + 1) + 160
       len (32 * mem[(32 * tokenSymbol.length + 1) + 128]) + (161 * tokenSymbol.length) + 289
}

function migrateCollateral(bytes32 arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6c4c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if not ext_code.size(tokenInfos[arg1].field_0):
        revert with 0, 'Invalid token symbol'
    if tokenInfos[arg1].field_768:
        revert with 0, 'This token is closed'
    if arg3.length != arg2.length:
        revert with 0, 'Length mismatch'
    idx = 0
    while idx < arg3.length:
        require idx < arg2.length
        require idx < arg3.length
        if cd[((32 * idx) + arg3 + 36)] + userCollateralData[address(cd[((32 * idx) + arg2 + 36)])][arg1] < userCollateralData[address(cd[((32 * idx) + arg2 + 36)])][arg1]:
            revert with 0, 'SafeMath: addition overflow'
        userCollateralData[address(cd[((32 * idx) + arg2 + 36)])][arg1] += cd[((32 * idx) + arg3 + 36)]
        if cd[((32 * idx) + arg3 + 36)] + tokenInfos[arg1].field_512 < tokenInfos[arg1].field_512:
            revert with 0, 'SafeMath: addition overflow'
        tokenInfos[arg1].field_512 += cd[((32 * idx) + arg3 + 36)]
        mem[0] = arg1
        mem[32] = sha3(address(cd[((32 * idx) + arg2 + 36)]), 157)
        mem[mem[64]] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = cd[((32 * idx) + arg3 + 36)]
        mem[mem[64] + 96] = userCollateralData[address(cd[((32 * idx) + arg2 + 36)])][arg1]
        emit CollateralLog(address(cd[((32 * idx) + arg2 + 36)]), arg1, cd[((32 * idx) + arg3 + 36)], userCollateralData[address(cd[((32 * idx) + arg2 + 36)])][arg1]);
        idx = idx + 1
        continue 
    return 0
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
    uint256(stor150) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor150))
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
           args 0, uint32('LnConfig'), 64, 26, 'LnConfig address not valid'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor152) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor152))
    require ext_code.size(arg1)
    staticcall arg1.0x768911da with:
            gas gas_remaining wei
           args 0, uint32('LnRewardLocker'), 64, 32, 'LnRewardLocker address not valid'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor153) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor153))
    emit CachedAddressUpdated('LnPrices', address(priceGetterAddress));
    emit CachedAddressUpdated('LnDebtSystem', address(debtSystemAddress));
    emit CachedAddressUpdated('LnConfig', address(mConfigAddress));
    emit CachedAddressUpdated('LnRewardLocker', address(mRewardLockerAddress));
}

function GetSystemTotalCollateralInUsd() payable {
    idx = 0
    while idx < tokenSymbol.length:
        mem[0] = tokenSymbol[idx]
        mem[32] = 155
        if tokenSymbol[idx] != 'LINA':
            if tokenInfos[stor156[idx]].field_512:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if tokenInfos[stor156[idx]].field_512:
                    if ext_call.return_data[0] * tokenInfos[stor156[idx]].field_512 / tokenInfos[stor156[idx]].field_512 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[0] * tokenInfos[stor156[idx]].field_512 / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        else:
            require ext_code.size(address(mRewardLockerAddress))
            staticcall address(mRewardLockerAddress).totalNeedToReward() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + tokenInfos[stor156[idx]].field_512 < tokenInfos[stor156[idx]].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + tokenInfos[stor156[idx]].field_512:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + tokenInfos[stor156[idx]].field_512:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (tokenInfos[stor156[idx]].field_512 * ext_call.return_data[0]) / ext_call.return_data[0] + tokenInfos[stor156[idx]].field_512 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (tokenInfos[stor156[idx]].field_512 * ext_call.return_data[0]) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if not eth.balance(this.address):
        return 0
    require ext_code.size(address(priceGetterAddress))
    staticcall address(priceGetterAddress).0x31d98b3f with:
            gas gas_remaining wei
           args 'ETH'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not eth.balance(this.address):
        return 0
    if ext_call.return_data[0] * eth.balance(this.address) / eth.balance(this.address) != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if ext_call.return_data[0] * eth.balance(this.address) / 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] * eth.balance(this.address) / 10^18)
}

function GetUserTotalCollateralInUsd(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < tokenSymbol.length:
        mem[0] = tokenSymbol[idx]
        mem[32] = sha3(address(arg1), 157)
        if tokenSymbol[idx] != 'LINA':
            if userCollateralData[address(arg1)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userCollateralData[address(arg1)][stor156[idx]]:
                    if ext_call.return_data[0] * userCollateralData[address(arg1)][stor156[idx]] / userCollateralData[address(arg1)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[0] * userCollateralData[address(arg1)][stor156[idx]] / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        else:
            mem[100] = arg1
            require ext_code.size(address(mRewardLockerAddress))
            staticcall address(mRewardLockerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]] < userCollateralData[address(arg1)][stor156[idx]]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(arg1)][stor156[idx]] * ext_call.return_data[0]) / ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(arg1)][stor156[idx]] * ext_call.return_data[0]) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if not userCollateralData[address(arg1)]['ETH']:
        return 0
    require ext_code.size(address(priceGetterAddress))
    staticcall address(priceGetterAddress).0x31d98b3f with:
            gas gas_remaining wei
           args 'ETH'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userCollateralData[address(arg1)]['ETH']:
        return 0
    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / userCollateralData[address(arg1)]['ETH'] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18)
}

function IsSatisfyTargetRatio(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(debtSystemAddress))
    staticcall address(debtSystemAddress).0x1882d090 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return 1
    require ext_code.size(address(mConfigAddress))
    staticcall address(mConfigAddress).0x4d6daf04 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(mConfigAddress))
    staticcall address(mConfigAddress).0xbd02d0f5 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < tokenSymbol.length:
        mem[0] = tokenSymbol[idx]
        mem[32] = sha3(address(arg1), 157)
        if tokenSymbol[idx] != 'LINA':
            if userCollateralData[address(arg1)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userCollateralData[address(arg1)][stor156[idx]]:
                    if ext_call.return_data[0] * userCollateralData[address(arg1)][stor156[idx]] / userCollateralData[address(arg1)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[0] * userCollateralData[address(arg1)][stor156[idx]] / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        else:
            mem[100] = arg1
            require ext_code.size(address(mRewardLockerAddress))
            staticcall address(mRewardLockerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]] < userCollateralData[address(arg1)][stor156[idx]]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(arg1)][stor156[idx]] * ext_call.return_data[0]) / ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(arg1)][stor156[idx]] * ext_call.return_data[0]) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if not userCollateralData[address(arg1)]['ETH']:
        return 0
    require ext_code.size(address(priceGetterAddress))
    staticcall address(priceGetterAddress).0x31d98b3f with:
            gas gas_remaining wei
           args 'ETH'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userCollateralData[address(arg1)]['ETH']:
        return 0
    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / userCollateralData[address(arg1)]['ETH'] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18:
        return 0
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18:
            revert with 0, 'SafeMath: division by zero'
        return 0 / ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 <= ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if not ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18:
        revert with 0, 'SafeMath: division by zero'
    return 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 <= ext_call.return_data[0]
}

function MaxRedeemableInUsd(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < tokenSymbol.length:
        mem[0] = tokenSymbol[idx]
        mem[32] = sha3(address(arg1), 157)
        if tokenSymbol[idx] != 'LINA':
            if userCollateralData[address(arg1)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userCollateralData[address(arg1)][stor156[idx]]:
                    if ext_call.return_data[0] * userCollateralData[address(arg1)][stor156[idx]] / userCollateralData[address(arg1)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[0] * userCollateralData[address(arg1)][stor156[idx]] / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        else:
            mem[100] = arg1
            require ext_code.size(address(mRewardLockerAddress))
            staticcall address(mRewardLockerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]] < userCollateralData[address(arg1)][stor156[idx]]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(arg1)][stor156[idx]] * ext_call.return_data[0]) / ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(arg1)][stor156[idx]] * ext_call.return_data[0]) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if not userCollateralData[address(arg1)]['ETH']:
        require ext_code.size(address(debtSystemAddress))
        staticcall address(debtSystemAddress).0x1882d090 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(address(mConfigAddress))
        staticcall address(mConfigAddress).0x4d6daf04 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(mConfigAddress))
        staticcall address(mConfigAddress).0xbd02d0f5 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 < 0 / ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -(0 / ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -(10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(address(priceGetterAddress))
    staticcall address(priceGetterAddress).0x31d98b3f with:
            gas gas_remaining wei
           args 'ETH'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userCollateralData[address(arg1)]['ETH']:
        require ext_code.size(address(debtSystemAddress))
        staticcall address(debtSystemAddress).0x1882d090 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(address(mConfigAddress))
        staticcall address(mConfigAddress).0x4d6daf04 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(mConfigAddress))
        staticcall address(mConfigAddress).0xbd02d0f5 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 < 0 / ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -(0 / ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            return 0
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -(10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / userCollateralData[address(arg1)]['ETH'] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(debtSystemAddress))
    staticcall address(debtSystemAddress).0x1882d090 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return (ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18)
    require ext_code.size(address(mConfigAddress))
    staticcall address(mConfigAddress).0x4d6daf04 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(mConfigAddress))
    staticcall address(mConfigAddress).0xbd02d0f5 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 < 0 / ext_call.return_data[0]:
            return 0
        if 0 / ext_call.return_data[0] > ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (0 / ext_call.return_data[0]))
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        return 0
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
}

function Redeem(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor100:
        revert with 0, 'Pausable: paused'
    if arg2 > userCollateralData[address(msg.sender)][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6f43616e206e6f742072656465656d206d6f7265207468616e20636f6c6c6174657261,
                    mem[199 len 29]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7752656465656d20616d6f756e74206e656564206c6172676572207468616e207a6572,
                    mem[199 len 29]
    idx = 0
    while idx < tokenSymbol.length:
        mem[0] = tokenSymbol[idx]
        mem[32] = sha3(address(msg.sender), 157)
        if tokenSymbol[idx] != 'LINA':
            if userCollateralData[address(msg.sender)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userCollateralData[address(msg.sender)][stor156[idx]]:
                    if ext_call.return_data[0] * userCollateralData[address(msg.sender)][stor156[idx]] / userCollateralData[address(msg.sender)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[0] * userCollateralData[address(msg.sender)][stor156[idx]] / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        else:
            mem[100] = msg.sender
            require ext_code.size(address(mRewardLockerAddress))
            staticcall address(mRewardLockerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + userCollateralData[address(msg.sender)][stor156[idx]] < userCollateralData[address(msg.sender)][stor156[idx]]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + userCollateralData[address(msg.sender)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + userCollateralData[address(msg.sender)][stor156[idx]]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(msg.sender)][stor156[idx]] * ext_call.return_data[0]) / ext_call.return_data[0] + userCollateralData[address(msg.sender)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(msg.sender)][stor156[idx]] * ext_call.return_data[0]) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if not userCollateralData[address(msg.sender)]['ETH']:
        require ext_code.size(address(debtSystemAddress))
        staticcall address(debtSystemAddress).0x1882d090 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            require ext_code.size(address(priceGetterAddress))
            staticcall address(priceGetterAddress).0x31d98b3f with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if arg2 > 0 / ext_call.return_data[0]:
                revert with 0, 
                            32,
                            55,
                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                            mem[283 len 9]
        else:
            require ext_code.size(address(mConfigAddress))
            staticcall address(mConfigAddress).0x4d6daf04 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(mConfigAddress))
            staticcall address(mConfigAddress).0xbd02d0f5 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 < 0 / ext_call.return_data[0]:
                    require ext_code.size(address(priceGetterAddress))
                    staticcall address(priceGetterAddress).0x31d98b3f with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2 > 0 / ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                    mem[347 len 9]
                else:
                    if 0 / ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(priceGetterAddress))
                    staticcall address(priceGetterAddress).0x31d98b3f with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not -0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 > 0 / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                        mem[411 len 9]
                    else:
                        if -1 * 10^18 * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 > -1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                        mem[411 len 9]
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    require ext_code.size(address(priceGetterAddress))
                    staticcall address(priceGetterAddress).0x31d98b3f with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2 > 0 / ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                    mem[347 len 9]
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(priceGetterAddress))
                    staticcall address(priceGetterAddress).0x31d98b3f with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not -10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 > 0 / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                        mem[411 len 9]
                    else:
                        if -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / -10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 > -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                        mem[411 len 9]
    else:
        require ext_code.size(address(priceGetterAddress))
        staticcall address(priceGetterAddress).0x31d98b3f with:
                gas gas_remaining wei
               args 'ETH'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not userCollateralData[address(msg.sender)]['ETH']:
            require ext_code.size(address(debtSystemAddress))
            staticcall address(debtSystemAddress).0x1882d090 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if arg2 > 0 / ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                55,
                                0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                mem[283 len 9]
            else:
                require ext_code.size(address(mConfigAddress))
                staticcall address(mConfigAddress).0x4d6daf04 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(mConfigAddress))
                staticcall address(mConfigAddress).0xbd02d0f5 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 < 0 / ext_call.return_data[0]:
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 > 0 / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                        mem[347 len 9]
                    else:
                        if 0 / ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 > 0 / ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                            mem[411 len 9]
                        else:
                            if -1 * 10^18 * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 > -1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                            mem[411 len 9]
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 > 0 / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                        mem[347 len 9]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 > 0 / ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                            mem[411 len 9]
                        else:
                            if -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / -10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 > -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                            mem[411 len 9]
        else:
            if ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / userCollateralData[address(msg.sender)]['ETH'] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(address(debtSystemAddress))
            staticcall address(debtSystemAddress).0x1882d090 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2 > 0 / ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                    mem[283 len 9]
                else:
                    if 10^18 * ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18 / ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18 != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2 > 10^18 * ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18 / ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                    mem[283 len 9]
            else:
                require ext_code.size(address(mConfigAddress))
                staticcall address(mConfigAddress).0x4d6daf04 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(mConfigAddress))
                staticcall address(mConfigAddress).0xbd02d0f5 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18 < 0 / ext_call.return_data[0]:
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 > 0 / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                        mem[347 len 9]
                    else:
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18) - (0 / ext_call.return_data[0]):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 > 0 / ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                            mem[411 len 9]
                        else:
                            if (10^18 * ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18) - (10^18 * 0 / ext_call.return_data[0]) / (ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18) - (0 / ext_call.return_data[0]) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 > (10^18 * ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18) - (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                            mem[411 len 9]
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 > 0 / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                        mem[347 len 9]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 > 0 / ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                            mem[411 len 9]
                        else:
                            if (10^18 * ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if arg2 > (10^18 * ext_call.return_data[0] * userCollateralData[address(msg.sender)]['ETH'] / 10^18) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            55,
                                            0x6e42656361757365206c6f77657220636f6c6c61746572616c20726174696f2c2063616e206e6f742072656465656d20746f6f206d7563,
                                            mem[411 len 9]
    if arg2 > userCollateralData[address(msg.sender)][arg1]:
        revert with 0, 'SafeMath: subtraction overflow'
    userCollateralData[address(msg.sender)][arg1] -= arg2
    if arg2 > tokenInfos[arg1].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenInfos[arg1].field_512 -= arg2
    require ext_code.size(tokenInfos[arg1].field_0)
    call tokenInfos[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit RedeemCollateral(msg.sender, arg1, arg2, userCollateralData[address(msg.sender)][arg1]);
    return 1
}

function MaxRedeemable(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < tokenSymbol.length:
        mem[0] = tokenSymbol[idx]
        mem[32] = sha3(address(arg1), 157)
        if tokenSymbol[idx] != 'LINA':
            if userCollateralData[address(arg1)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userCollateralData[address(arg1)][stor156[idx]]:
                    if ext_call.return_data[0] * userCollateralData[address(arg1)][stor156[idx]] / userCollateralData[address(arg1)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if ext_call.return_data[0] * userCollateralData[address(arg1)][stor156[idx]] / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        else:
            mem[100] = arg1
            require ext_code.size(address(mRewardLockerAddress))
            staticcall address(mRewardLockerAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]] < userCollateralData[address(arg1)][stor156[idx]]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]]:
                mem[100] = tokenSymbol[idx]
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args tokenSymbol[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(arg1)][stor156[idx]] * ext_call.return_data[0]) / ext_call.return_data[0] + userCollateralData[address(arg1)][stor156[idx]] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (userCollateralData[address(arg1)][stor156[idx]] * ext_call.return_data[0]) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if not userCollateralData[address(arg1)]['ETH']:
        require ext_code.size(address(debtSystemAddress))
        staticcall address(debtSystemAddress).0x1882d090 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            require ext_code.size(address(priceGetterAddress))
            staticcall address(priceGetterAddress).0x31d98b3f with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                if arg2 != 'LINA':
                    return (0 / ext_call.return_data[0])
                require ext_code.size(address(mRewardLockerAddress))
                staticcall address(mRewardLockerAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                    return 0
                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
        else:
            require ext_code.size(address(mConfigAddress))
            staticcall address(mConfigAddress).0x4d6daf04 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(mConfigAddress))
            staticcall address(mConfigAddress).0xbd02d0f5 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 < 0 / ext_call.return_data[0]:
                    require ext_code.size(address(priceGetterAddress))
                    staticcall address(priceGetterAddress).0x31d98b3f with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                        if arg2 != 'LINA':
                            return (0 / ext_call.return_data[0])
                        require ext_code.size(address(mRewardLockerAddress))
                        staticcall address(mRewardLockerAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0
                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                else:
                    if 0 / ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(priceGetterAddress))
                    staticcall address(priceGetterAddress).0x31d98b3f with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not -0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                            if arg2 != 'LINA':
                                return (0 / ext_call.return_data[0])
                            require ext_code.size(address(mRewardLockerAddress))
                            staticcall address(mRewardLockerAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0
                            if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                    else:
                        if -1 * 10^18 * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if -1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                            if arg2 != 'LINA':
                                return (-1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0])
                            require ext_code.size(address(mRewardLockerAddress))
                            staticcall address(mRewardLockerAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if -1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0
                            if ext_call.return_data[0] > -1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ((-1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[0])
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    require ext_code.size(address(priceGetterAddress))
                    staticcall address(priceGetterAddress).0x31d98b3f with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                        if arg2 != 'LINA':
                            return (0 / ext_call.return_data[0])
                        require ext_code.size(address(mRewardLockerAddress))
                        staticcall address(mRewardLockerAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0
                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(priceGetterAddress))
                    staticcall address(priceGetterAddress).0x31d98b3f with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not -10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                            if arg2 != 'LINA':
                                return (0 / ext_call.return_data[0])
                            require ext_code.size(address(mRewardLockerAddress))
                            staticcall address(mRewardLockerAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0
                            if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                    else:
                        if -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / -10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                            if arg2 != 'LINA':
                                return (-1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0])
                            require ext_code.size(address(mRewardLockerAddress))
                            staticcall address(mRewardLockerAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0
                            if ext_call.return_data[0] > -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ((-1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[0])
    else:
        require ext_code.size(address(priceGetterAddress))
        staticcall address(priceGetterAddress).0x31d98b3f with:
                gas gas_remaining wei
               args 'ETH'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not userCollateralData[address(arg1)]['ETH']:
            require ext_code.size(address(debtSystemAddress))
            staticcall address(debtSystemAddress).0x1882d090 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                    if arg2 != 'LINA':
                        return (0 / ext_call.return_data[0])
                    require ext_code.size(address(mRewardLockerAddress))
                    staticcall address(mRewardLockerAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                        return 0
                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
            else:
                require ext_code.size(address(mConfigAddress))
                staticcall address(mConfigAddress).0x4d6daf04 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(mConfigAddress))
                staticcall address(mConfigAddress).0xbd02d0f5 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 < 0 / ext_call.return_data[0]:
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                            if arg2 != 'LINA':
                                return (0 / ext_call.return_data[0])
                            require ext_code.size(address(mRewardLockerAddress))
                            staticcall address(mRewardLockerAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0
                            if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                    else:
                        if 0 / ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                                if arg2 != 'LINA':
                                    return (0 / ext_call.return_data[0])
                                require ext_code.size(address(mRewardLockerAddress))
                                staticcall address(mRewardLockerAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0
                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                        else:
                            if -1 * 10^18 * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if -1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                                if arg2 != 'LINA':
                                    return (-1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0])
                                require ext_code.size(address(mRewardLockerAddress))
                                staticcall address(mRewardLockerAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if -1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0
                                if ext_call.return_data[0] > -1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return ((-1 * 10^18 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[0])
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                            if arg2 != 'LINA':
                                return (0 / ext_call.return_data[0])
                            require ext_code.size(address(mRewardLockerAddress))
                            staticcall address(mRewardLockerAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0
                            if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                                if arg2 != 'LINA':
                                    return (0 / ext_call.return_data[0])
                                require ext_code.size(address(mRewardLockerAddress))
                                staticcall address(mRewardLockerAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0
                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                        else:
                            if -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / -10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                                if arg2 != 'LINA':
                                    return (-1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0])
                                require ext_code.size(address(mRewardLockerAddress))
                                staticcall address(mRewardLockerAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0
                                if ext_call.return_data[0] > -1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return ((-1 * 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) - ext_call.return_data[0])
        else:
            if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / userCollateralData[address(arg1)]['ETH'] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(address(debtSystemAddress))
            staticcall address(debtSystemAddress).0x1882d090 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                require ext_code.size(address(priceGetterAddress))
                staticcall address(priceGetterAddress).0x31d98b3f with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                        if arg2 != 'LINA':
                            return (0 / ext_call.return_data[0])
                        require ext_code.size(address(mRewardLockerAddress))
                        staticcall address(mRewardLockerAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0
                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                else:
                    if 10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 / ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                        if arg2 != 'LINA':
                            return (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 / ext_call.return_data[0])
                        require ext_code.size(address(mRewardLockerAddress))
                        staticcall address(mRewardLockerAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 / ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0
                        if ext_call.return_data[0] > 10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 / ext_call.return_data[0]) - ext_call.return_data[0])
            else:
                require ext_code.size(address(mConfigAddress))
                staticcall address(mConfigAddress).0x4d6daf04 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(mConfigAddress))
                staticcall address(mConfigAddress).0xbd02d0f5 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 < 0 / ext_call.return_data[0]:
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                            if arg2 != 'LINA':
                                return (0 / ext_call.return_data[0])
                            require ext_code.size(address(mRewardLockerAddress))
                            staticcall address(mRewardLockerAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0
                            if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                    else:
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (0 / ext_call.return_data[0]):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                                if arg2 != 'LINA':
                                    return (0 / ext_call.return_data[0])
                                require ext_code.size(address(mRewardLockerAddress))
                                staticcall address(mRewardLockerAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0
                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                        else:
                            if (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 0 / ext_call.return_data[0]) / (ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (0 / ext_call.return_data[0]) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                                if arg2 != 'LINA':
                                    return ((10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0])
                                require ext_code.size(address(mRewardLockerAddress))
                                staticcall address(mRewardLockerAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0
                                if ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return (((10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 0 / ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0])
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18 < 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                            if arg2 != 'LINA':
                                return (0 / ext_call.return_data[0])
                            require ext_code.size(address(mRewardLockerAddress))
                            staticcall address(mRewardLockerAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0
                            if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(priceGetterAddress))
                        staticcall address(priceGetterAddress).0x31d98b3f with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                                if arg2 != 'LINA':
                                    return (0 / ext_call.return_data[0])
                                require ext_code.size(address(mRewardLockerAddress))
                                staticcall address(mRewardLockerAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 / ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0
                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return ((0 / ext_call.return_data[0]) - ext_call.return_data[0])
                        else:
                            if (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / (ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * ext_call.return_data[0] / ext_call.return_data[0]) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[0] <= userCollateralData[address(arg1)][arg2]:
                                if arg2 != 'LINA':
                                    return ((10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[0])
                                require ext_code.size(address(mRewardLockerAddress))
                                staticcall address(mRewardLockerAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0
                                if ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return (((10^18 * ext_call.return_data[0] * userCollateralData[address(arg1)]['ETH'] / 10^18) - (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0])
    if arg2 != 'LINA':
        return userCollateralData[address(arg1)][arg2]
    require ext_code.size(address(mRewardLockerAddress))
    staticcall address(mRewardLockerAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userCollateralData[address(arg1)][arg2] <= ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > userCollateralData[address(arg1)][arg2]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userCollateralData[address(arg1)][arg2] - ext_call.return_data[0])
}



}
