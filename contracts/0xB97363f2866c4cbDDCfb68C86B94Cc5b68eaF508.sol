contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address adminAddress; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address candidateAddress;
mapping of address mAddrs;
array of address mAssetList;
mapping of uint256 m;
address stor2663;
array of address stor17385872270140913825666367956517731270094621555228275961425792378517567244498;

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return mAddrs[arg1]
}

function mAddress2Names(address arg1) payable {
    require calldata.size - 4 >= 32
    return m[arg1]
}

function candidate() payable {
    return candidateAddress
}

function mAssetList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < mAssetList.length
    return mAssetList[arg1]
}

function getAddressWithRequire(bytes32 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if mAddrs[arg1]:
        return mAddrs[arg1]
    mem[164 len arg2.length] = arg2[all]
    mem[arg2.length + 164] = 0
    revert with 0, 32, arg2.length, arg2[all], mem[arg2.length + 164 len ceil32(arg2.length) - arg2.length]
}

function assetNumber() payable {
    return mAssetList.length
}

function mAddrs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return mAddrs[arg1]
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
                    0x774c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
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

function update(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x774c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if not arg1:
        revert with 0, 'name can not be empty'
    if not arg2:
        revert with 0, 'address cannot be 0'
    mAddrs[arg1] = arg2
    emit StorageAddressUpdated(arg1, arg2);
}

function getAssetAddresses() payable {
    require mAssetList.length <= test266151307()
    if mAssetList.length:
        mem[128 len 32 * mAssetList.length] = call.data[calldata.size len 32 * mAssetList.length]
    idx = 0
    while idx < mAssetList.length:
        mem[0] = 100
        require idx < mAssetList.length
        mem[(32 * idx) + 128] = mAssetList[idx]
        idx = idx + 1
        continue 
    mem[(32 * mAssetList.length) + 192 len floor32(mAssetList.length)] = mem[128 len floor32(mAssetList.length)]
    return Array(len=mAssetList.length, data=mem[128 len floor32(mAssetList.length)], mem[(32 * mAssetList.length) + floor32(mAssetList.length) + 192 len (32 * mAssetList.length) - floor32(mAssetList.length)]), 
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

function addAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x774c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    require ext_code.size(arg1)
    staticcall arg1.keyName() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mAddrs[ext_call.return_data[0]]:
        revert with 0, 'Asset already exists'
    if m[address(arg1)]:
        revert with 0, 'Asset address already exists'
    mAssetList.length++
    stor2670[stor100.length] = arg1
    mAddrs[ext_call.return_data[0]] = arg1
    m[address(arg1)] = ext_call.return_data[0]
    emit AssetAdded(ext_call.return_data[0], arg1);
}

function removeAsset(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x774c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if not mAddrs[arg1]:
        revert with 0, 'asset does not exist'
    idx = 0
    while idx < mAssetList.length:
        mem[0] = 100
        if mAssetList[idx] != mAddrs[arg1]:
            idx = idx + 1
            continue 
        require idx < mAssetList.length
        mAssetList[idx] = 0
        require mAssetList.length - 1 < mAssetList.length
        require idx < mAssetList.length
        mAssetList[idx] = mAssetList[mAssetList.length]
        require mAssetList.length
        mAssetList[mAssetList.length] = 0
        mAssetList.length--
        m[stor50[arg1]] = 0
        mAddrs[arg1] = 0
        emit AssetRemoved(arg1, mAddrs[arg1]);
    m[stor50[arg1]] = 0
    mAddrs[arg1] = 0
    emit AssetRemoved(arg1, mAddrs[arg1]);
}

function updateAll(bytes32[] arg1, address[] arg2) payable {
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
                    67,
                    0x774c6e41646d696e5570677261646561626c653a206f6e6c792074686520636f6e74726163742061646d696e2063616e20706572666f726d207468697320616374696f,
                    mem[231 len 29]
    if arg2.length != arg1.length:
        revert with 0, 'Input lengths must match'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 50
        mAddrs[cd[((32 * idx) + arg1 + 36)]] = address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg2.length
        mem[96] = cd[((32 * idx) + arg1 + 36)]
        mem[128] = address(cd[((32 * idx) + arg2 + 36)])
        emit StorageAddressUpdated(cd[((32 * idx) + arg1 + 36)], address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}

function sub_677eab13(?) payable {
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

function totalAssetsInUsd() payable {
    if not stor2663:
        revert with 0, 'LnPrices address cannot access'
    idx = 0
    while idx < mAssetList.length:
        require ext_code.size(mAssetList[idx])
        staticcall mAssetList[idx].keyName() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = ext_call.return_data[0]
        require ext_code.size(stor2663)
        staticcall stor2663.getPrice(bytes32 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mAssetList.length
        mem[0] = 100
        require ext_code.size(mAssetList[idx])
        staticcall mAssetList[idx].0x18160ddd with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function sub_9011a11a(?) payable {
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
        uint8(stor0.field_8) = 0
}



}
