contract main {




// =====================  Runtime code  =====================


#
#  - checkUpkeep(bytes arg1)
#  - sub_c7d8f89f(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of address sub_638efe6d;
mapping of struct vaultInfos;
address keeperAddress;
address moderatorAddress;
uint256 maxDelay;
uint256 sub_13995502;
uint256 slippageFactor;
uint8 stor108;
uint8 stor108; offset 8
uint16 sub_8eea3338;
array of address stor15927638074721741799981758929122041521994358813841674417891729675897504945916;
array of address stor115735116308211264584378798639139061516686732922554905406890050695344091519515;

function sub_13995502(?) payable {
    return sub_13995502
}

function moderator() payable {
    return moderatorAddress
}

function sub_638efe6d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_638efe6d[arg1])
    return address(sub_638efe6d[arg1][arg2])
}

function owner() payable {
    return owner
}

function sub_8eea3338(?) payable {
    return sub_8eea3338
}

function keeper() payable {
    return keeperAddress
}

function vaultInfos(address arg1) payable {
    require calldata.size - 4 >= 32
    require vaultInfos[arg1].field_0 <= 2
    return vaultInfos[arg1].field_0, vaultInfos[arg1].field_256, bool(vaultInfos[arg1].field_512)
}

function sub_ea137c6e(?) payable {
    return uint256(sub_638efe6d[1])
}

function sub_ea511905(?) payable {
    return uint256(sub_638efe6d[0])
}

function maxDelay() payable {
    return maxDelay
}

function sub_faf0a693(?) payable {
    return uint256(sub_638efe6d[2])
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_333ef253(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_13995502 = arg1
}

function sub_53ee6b68(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_8eea3338 = arg1
}

function setMaxDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxDelay = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    keeperAddress = arg1
}

function setModerator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    moderatorAddress = arg1
}

function setSlippageFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    slippageFactor = arg1
}

function sub_3ccce789(?) payable {
    require calldata.size - 4 >= 32
    if moderatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7253776565744b65657065723a3a6f6e6c794d6f64657261746f723a204e6f74206d6f64657261746f,
                    mem[205 len 23]
    vaultInfos[address(arg1)].field_512 = 0
}

function sub_936f4330(?) payable {
    require calldata.size - 4 >= 32
    if moderatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7253776565744b65657065723a3a6f6e6c794d6f64657261746f723a204e6f74206d6f64657261746f,
                    mem[205 len 23]
    vaultInfos[address(arg1)].field_512 = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8c1f682d(?) payable {
    require calldata.size - 4 >= 64
    if moderatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7253776565744b65657065723a3a6f6e6c794d6f64657261746f723a204e6f74206d6f64657261746f,
                    mem[205 len 23]
    if vaultInfos[address(arg2)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe53776565744b65657065723a3a6164645661756c743a205661756c7420616c7265616479206578697374,
                    mem[207 len 21]
    require arg1 <= 2
    require arg1 <= 2
    vaultInfos[address(arg2)].field_0 = arg1
    vaultInfos[address(arg2)].field_256 = block.timestamp
    vaultInfos[address(arg2)].field_512 = 1
    require arg1 <= 2
    uint256(sub_638efe6d[arg1 << 248])++
    address(sub_638efe6d[arg1 << 248][uint256(sub_638efe6d[arg1 << 248])]) = arg2
}

function compound(address arg1) payable {
    require calldata.size - 4 >= 32
    require vaultInfos[address(arg1)].field_0 <= 2
    if block.timestamp - (12 * 3600) <= vaultInfos[address(arg1)].field_256:
        revert with 0, 'SweetKeeper::compound: Too soon'
    require vaultInfos[address(arg1)].field_0 <= 2
    if not vaultInfos[address(arg1)].field_0:
        require ext_code.size(arg1)
        call arg1.earn() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        vaultInfos[address(arg1)].field_256 = block.timestamp
        emit Compound(block.timestamp, arg1);
    else:
        require vaultInfos[address(arg1)].field_0 <= 2
        if vaultInfos[address(arg1)].field_0 == 1:
            require ext_code.size(arg1)
            call arg1.earn(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            vaultInfos[address(arg1)].field_256 = block.timestamp
            emit Compound(block.timestamp, arg1);
        else:
            require vaultInfos[address(arg1)].field_0 <= 2
            if vaultInfos[address(arg1)].field_0 == 2:
                require ext_code.size(arg1)
                call arg1.earn(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                vaultInfos[address(arg1)].field_256 = block.timestamp
                emit Compound(block.timestamp, arg1);
}

function sub_1295c002(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if moderatorAddress != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0x7253776565744b65657065723a3a6f6e6c794d6f64657261746f723a204e6f74206d6f64657261746f,
                    mem[(32 * arg2.length) + 237 len 23]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _21 = mem[(32 * idx) + 128]
        if moderatorAddress != msg.sender:
            revert with 0, 
                        32,
                        41,
                        0x7253776565744b65657065723a3a6f6e6c794d6f64657261746f723a204e6f74206d6f64657261746f,
                        mem[mem[64] + 109 len 23]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 102
        if vaultInfos[mem[(32 * idx) + 140 len 20]].field_256:
            revert with 0, 
                        32,
                        43,
                        0xfe53776565744b65657065723a3a6164645661756c743a205661756c7420616c7265616479206578697374,
                        mem[mem[64] + 111 len 21]
        _25 = mem[64]
        mem[64] = mem[64] + 96
        require arg1 <= 2
        mem[_25] = arg1
        mem[_25 + 32] = block.timestamp
        mem[_25 + 64] = 1
        require arg1 <= 2
        vaultInfos[address(_21)].field_0 = arg1
        vaultInfos[address(_21)].field_256 = block.timestamp
        vaultInfos[address(_21)].field_512 = 1
        require arg1 <= 2
        mem[32] = 101
        uint256(sub_638efe6d[arg1 << 248])++
        mem[0] = sha3(arg1 << 248, 101)
        address(sub_638efe6d[arg1 << 248][uint256(sub_638efe6d[arg1 << 248])]) = address(_21)
        idx = idx + 1
        continue 
}

function sub_05ce4013(?) payable {
    require calldata.size - 4 >= 32
    require vaultInfos[address(arg1)].field_0 <= 2
    if not vaultInfos[address(arg1)].field_512:
        return 0
    require vaultInfos[address(arg1)].field_0 <= 2
    if vaultInfos[address(arg1)].field_0 == 1:
        require ext_code.size(arg1)
        staticcall arg1.totalStake() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
    else:
        require vaultInfos[address(arg1)].field_0 <= 2
        if vaultInfos[address(arg1)].field_0 == 2:
            require ext_code.size(arg1)
            staticcall arg1.totalStake() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
    require vaultInfos[address(arg1)].field_0 <= 2
    if not vaultInfos[address(arg1)].field_0:
        return block.timestamp >= vaultInfos[address(arg1)].field_256 + maxDelay, 0, 0, 0, 0
    require vaultInfos[address(arg1)].field_0 <= 2
    if vaultInfos[address(arg1)].field_0 == 1:
        require ext_code.size(arg1)
        staticcall arg1.getExpectedOutputs() with:
                gas gas_remaining wei
        if not ext_call.success:
            if 0 < sub_13995502:
                return block.timestamp >= vaultInfos[address(arg1)].field_256 + maxDelay, 0, 0, 0, 0
            return 1, 0, 0, 0, 0
        require return_data.size >= 128
        if ext_call.return_data[32] < sub_13995502:
            return block.timestamp >= vaultInfos[address(arg1)].field_256 + maxDelay, 
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96]
        return 1, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
    require vaultInfos[address(arg1)].field_0 <= 2
    if vaultInfos[address(arg1)].field_0 != 2:
        return block.timestamp >= vaultInfos[address(arg1)].field_256 + maxDelay, 0, 0, 0, 0
    require ext_code.size(arg1)
    staticcall arg1.getExpectedOutputs() with:
            gas gas_remaining wei
    if not ext_call.success:
        if 0 < sub_13995502:
            return block.timestamp >= vaultInfos[address(arg1)].field_256 + maxDelay, 0, 0, 0, 0
        return 1, 0, 0, 0, 0
    require return_data.size >= 64
    if ext_call.return_data[0] / 11 < sub_13995502:
        return block.timestamp >= vaultInfos[address(arg1)].field_256 + maxDelay, 
               ext_call.return_data[0],
               ext_call.return_data[0] / 11,
               0,
               ext_call.return_data[32]
    return 1, ext_call.return_data[0], ext_call.return_data[0] / 11, 0, ext_call.return_data[32]
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        keeperAddress = arg1
        moderatorAddress = arg2
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            keeperAddress = arg1
            moderatorAddress = arg2
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            keeperAddress = arg1
            moderatorAddress = arg2
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg3);
    owner = arg3
    maxDelay = 24 * 3600
    sub_13995502 = 10^16
    slippageFactor = 9500
    uint8(stor108.field_0) = 2
    uint8(stor108.field_8) = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function performUpkeep(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if keeperAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7253776565744b65657065723a3a6f6e6c794b65657065723a204e6f74206b65657065,
                    mem[199 len 29]
    require arg1.length >= 192
    require cd[(arg1 + 68)] <= 4294967296
    require cd[(arg1 + 68)] + 68 <= arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 68)] + 36)] <= 4294967296 and cd[(arg1 + 68)] + (32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 68 <= arg1.length + 36
    mem[128 len 32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]] = call.data[arg1 + cd[(arg1 + 68)] + 68 len 32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]]
    require cd[(arg1 + 100)] <= 4294967296
    require cd[(arg1 + 100)] + 68 <= arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 100)] + 36)] <= 4294967296 and cd[(arg1 + 100)] + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + 68 <= arg1.length + 36
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 128] = cd[(arg1 + cd[(arg1 + 100)] + 36)]
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 160 len 32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]] = call.data[arg1 + cd[(arg1 + 100)] + 68 len 32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]]
    require cd[(arg1 + 132)] <= 4294967296
    require cd[(arg1 + 132)] + 68 <= arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 132)] + 36)] <= 4294967296 and cd[(arg1 + 132)] + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + 68 <= arg1.length + 36
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + 160] = cd[(arg1 + cd[(arg1 + 132)] + 36)]
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + 192 len 32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]] = call.data[arg1 + cd[(arg1 + 132)] + 68 len 32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]]
    require cd[(arg1 + 164)] <= 4294967296
    require cd[(arg1 + 164)] + 68 <= arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 164)] + 36)] <= 4294967296 and cd[(arg1 + 164)] + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + 68 <= arg1.length + 36
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + 192] = cd[(arg1 + cd[(arg1 + 164)] + 36)]
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + 224 len 32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]] = call.data[arg1 + cd[(arg1 + 164)] + 68 len 32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]]
    require cd[(arg1 + 196)] <= 4294967296
    require cd[(arg1 + 196)] + 68 <= arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 196)] + 36)] <= 4294967296 and cd[(arg1 + 196)] + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 68 <= arg1.length + 36
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + 224] = cd[(arg1 + cd[(arg1 + 196)] + 36)]
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + 256 len 32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]] = call.data[arg1 + cd[(arg1 + 196)] + 68 len 32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]]
    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 256] = 0
    require uint8(cd[(arg1 + 36)]) <= 2
    if not uint8(cd[(arg1 + 36)]):
        idx = 0
        while idx < cd[(arg1 + cd[(arg1 + 68)] + 36)]:
            require idx < cd[(arg1 + cd[(arg1 + 68)] + 36)]
            _49 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].earn() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 102
            vaultInfos[address(mem[(32 * idx) + 128])].field_256 = block.timestamp
            mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 256] = block.timestamp
            emit Compound(block.timestamp, address(_49));
            idx = idx + 1
            continue 
    else:
        require uint8(cd[(arg1 + 36)]) <= 2
        if uint8(cd[(arg1 + 36)]) == 1:
            idx = 0
            while idx < cd[(arg1 + cd[(arg1 + 68)] + 36)]:
                require idx < cd[(arg1 + cd[(arg1 + 68)] + 36)]
                _47 = mem[(32 * idx) + 128]
                require idx < cd[(arg1 + cd[(arg1 + 100)] + 36)]
                require idx < cd[(arg1 + cd[(arg1 + 132)] + 36)]
                _57 = mem[(32 * idx) + (32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + 192]
                require idx < cd[(arg1 + cd[(arg1 + 164)] + 36)]
                _61 = mem[(32 * idx) + (32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + 224]
                require idx < cd[(arg1 + cd[(arg1 + 196)] + 36)]
                _66 = mem[(32 * idx) + (32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + 256]
                mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 160]
                mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 292] = _57
                mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 324] = _61
                mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 356] = _66
                require ext_code.size(address(_47))
                call address(_47).earn(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 260], _57, _61, _66
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_47)
                mem[32] = 102
                vaultInfos[address(_47)].field_256 = block.timestamp
                mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 256] = block.timestamp
                emit Compound(block.timestamp, address(_47));
                idx = idx + 1
                continue 
        else:
            require uint8(cd[(arg1 + 36)]) <= 2
            if uint8(cd[(arg1 + 36)]) == 2:
                idx = 0
                while idx < cd[(arg1 + cd[(arg1 + 68)] + 36)]:
                    require idx < cd[(arg1 + cd[(arg1 + 68)] + 36)]
                    _45 = mem[(32 * idx) + 128]
                    require idx < cd[(arg1 + cd[(arg1 + 100)] + 36)]
                    require idx < cd[(arg1 + cd[(arg1 + 196)] + 36)]
                    _56 = mem[(32 * idx) + (32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + 256]
                    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 260] = mem[(32 * idx) + (32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 160]
                    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 292] = _56
                    require ext_code.size(address(_45))
                    call address(_45).earn(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 260], _56
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = address(_45)
                    mem[32] = 102
                    vaultInfos[address(_45)].field_256 = block.timestamp
                    mem[(32 * cd[(arg1 + cd[(arg1 + 68)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 100)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 132)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 164)] + 36)]) + (32 * cd[(arg1 + cd[(arg1 + 196)] + 36)]) + 256] = block.timestamp
                    emit Compound(block.timestamp, address(_45));
                    idx = idx + 1
                    continue 
}

function sub_90294c5c(?) payable {
    mem[0] = 0
    mem[32] = 101
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 96
    mem[224] = 96
    mem[256] = 96
    mem[288] = 0
    require uint256(sub_638efe6d[0]) <= test266151307()
    mem[480] = uint256(sub_638efe6d[0])
    if not uint256(sub_638efe6d[0]):
        mem[320] = 480
        mem[(32 * uint256(sub_638efe6d[0])) + 512] = 0
        mem[352] = (32 * uint256(sub_638efe6d[0])) + 512
        mem[(32 * uint256(sub_638efe6d[0])) + 544] = 0
        mem[384] = (32 * uint256(sub_638efe6d[0])) + 544
        mem[(32 * uint256(sub_638efe6d[0])) + 576] = 0
        mem[416] = (32 * uint256(sub_638efe6d[0])) + 576
        mem[(32 * uint256(sub_638efe6d[0])) + 608] = 0
        mem[64] = (32 * uint256(sub_638efe6d[0])) + 640
        mem[448] = (32 * uint256(sub_638efe6d[0])) + 608
        idx = 0
        while uint16(idx) < uint256(sub_638efe6d[0]):
            if sub_8eea3338 != 0:
                mem[32] = 101
                require uint16(idx) < storFFDF.length
                mem[0] = 0xffdfc1249c027f9191656349feb0761381bb32c9f557e01f419fd08754bf5a1b
                _345 = mem[64]
                mem[64] = mem[64] + 96
                mem[_345] = 0
                mem[_345 + 32] = 0
                mem[_345 + 64] = 0
                mem[0] = storFFDF[uint16(idx)]
                mem[32] = 102
                _349 = mem[64]
                mem[64] = mem[64] + 96
                require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                mem[_349] = vaultInfos[storFFDF[uint16(idx)]].field_0
                mem[_349 + 32] = vaultInfos[storFFDF[uint16(idx)]].field_256
                mem[_349 + 64] = bool(vaultInfos[storFFDF[uint16(idx)]].field_512)
                if vaultInfos[storFFDF[uint16(idx)]].field_512:
                    require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                    if vaultInfos[storFFDF[uint16(idx)]].field_0 == 1:
                        require ext_code.size(storFFDF[uint16(idx)])
                        staticcall storFFDF[uint16(idx)].totalStake() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                            if not vaultInfos[storFFDF[uint16(idx)]].field_0:
                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                    require 0 < mem[mem[320]]
                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                            else:
                                require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                if vaultInfos[storFFDF[uint16(idx)]].field_0 == 1:
                                    require ext_code.size(storFFDF[uint16(idx)])
                                    staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if ext_call.success:
                                        require return_data.size >= 128
                                        if ext_call.return_data[32] >= sub_13995502:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        if return_data.size:
                                            _465 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_465] = return_data.size
                                            mem[_465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if 0 >= sub_13995502:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                else:
                                    require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                    if vaultInfos[storFFDF[uint16(idx)]].field_0 != 2:
                                        if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        require ext_code.size(storFFDF[uint16(idx)])
                                        staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if ext_call.success:
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] / 11 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if return_data.size:
                                                _503 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_503] = return_data.size
                                                mem[_503 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if 0 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                    else:
                        require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                        if vaultInfos[storFFDF[uint16(idx)]].field_0 != 2:
                            require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                            if not vaultInfos[storFFDF[uint16(idx)]].field_0:
                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                    require 0 < mem[mem[320]]
                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                            else:
                                require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                if vaultInfos[storFFDF[uint16(idx)]].field_0 == 1:
                                    require ext_code.size(storFFDF[uint16(idx)])
                                    staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if ext_call.success:
                                        require return_data.size >= 128
                                        if ext_call.return_data[32] >= sub_13995502:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        if return_data.size:
                                            _444 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_444] = return_data.size
                                            mem[_444 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if 0 >= sub_13995502:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                else:
                                    require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                    if vaultInfos[storFFDF[uint16(idx)]].field_0 != 2:
                                        if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        require ext_code.size(storFFDF[uint16(idx)])
                                        staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if ext_call.success:
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] / 11 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if return_data.size:
                                                _490 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_490] = return_data.size
                                                mem[_490 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if 0 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                        else:
                            require ext_code.size(storFFDF[uint16(idx)])
                            staticcall storFFDF[uint16(idx)].totalStake() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                if not vaultInfos[storFFDF[uint16(idx)]].field_0:
                                    if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                        require 0 < mem[mem[320]]
                                        mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                else:
                                    require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                    if vaultInfos[storFFDF[uint16(idx)]].field_0 == 1:
                                        require ext_code.size(storFFDF[uint16(idx)])
                                        staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                        if ext_call.success:
                                            require return_data.size >= 128
                                            if ext_call.return_data[32] >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if return_data.size:
                                                _493 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_493] = return_data.size
                                                mem[_493 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if 0 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[storFFDF[uint16(idx)]].field_0 != 2:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            require ext_code.size(storFFDF[uint16(idx)])
                                            staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                            if ext_call.success:
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] / 11 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                                else:
                                                    if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if return_data.size:
                                                    _517 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_517] = return_data.size
                                                    mem[_517 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                                else:
                                                    if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = storFFDF[uint16(idx)]
            idx = idx + 1
            continue 
    else:
        mem[512 len 32 * uint256(sub_638efe6d[0])] = call.data[calldata.size len 32 * uint256(sub_638efe6d[0])]
        mem[320] = 480
        mem[(32 * uint256(sub_638efe6d[0])) + 512] = 0
        mem[352] = (32 * uint256(sub_638efe6d[0])) + 512
        mem[(32 * uint256(sub_638efe6d[0])) + 544] = 0
        mem[384] = (32 * uint256(sub_638efe6d[0])) + 544
        mem[(32 * uint256(sub_638efe6d[0])) + 576] = 0
        mem[416] = (32 * uint256(sub_638efe6d[0])) + 576
        mem[(32 * uint256(sub_638efe6d[0])) + 608] = 0
        mem[64] = (32 * uint256(sub_638efe6d[0])) + 640
        mem[448] = (32 * uint256(sub_638efe6d[0])) + 608
        idx = 0
        while uint16(idx) < uint256(sub_638efe6d[0]):
            if sub_8eea3338 != 0:
                mem[32] = 101
                require uint16(idx) < storFFDF.length
                mem[0] = 0xffdfc1249c027f9191656349feb0761381bb32c9f557e01f419fd08754bf5a1b
                _346 = mem[64]
                mem[64] = mem[64] + 96
                mem[_346] = 0
                mem[_346 + 32] = 0
                mem[_346 + 64] = 0
                mem[0] = storFFDF[uint16(idx)]
                mem[32] = 102
                _352 = mem[64]
                mem[64] = mem[64] + 96
                require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                mem[_352] = vaultInfos[storFFDF[uint16(idx)]].field_0
                mem[_352 + 32] = vaultInfos[storFFDF[uint16(idx)]].field_256
                mem[_352 + 64] = bool(vaultInfos[storFFDF[uint16(idx)]].field_512)
                if vaultInfos[storFFDF[uint16(idx)]].field_512:
                    require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                    if vaultInfos[storFFDF[uint16(idx)]].field_0 == 1:
                        require ext_code.size(storFFDF[uint16(idx)])
                        staticcall storFFDF[uint16(idx)].totalStake() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                            if not vaultInfos[storFFDF[uint16(idx)]].field_0:
                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                    require 0 < mem[mem[320]]
                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                            else:
                                require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                if vaultInfos[storFFDF[uint16(idx)]].field_0 == 1:
                                    require ext_code.size(storFFDF[uint16(idx)])
                                    staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if ext_call.success:
                                        require return_data.size >= 128
                                        if ext_call.return_data[32] >= sub_13995502:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        if return_data.size:
                                            _472 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_472] = return_data.size
                                            mem[_472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if 0 >= sub_13995502:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                else:
                                    require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                    if vaultInfos[storFFDF[uint16(idx)]].field_0 != 2:
                                        if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        require ext_code.size(storFFDF[uint16(idx)])
                                        staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if ext_call.success:
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] / 11 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if return_data.size:
                                                _505 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_505] = return_data.size
                                                mem[_505 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if 0 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                    else:
                        require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                        if vaultInfos[storFFDF[uint16(idx)]].field_0 != 2:
                            require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                            if not vaultInfos[storFFDF[uint16(idx)]].field_0:
                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                    require 0 < mem[mem[320]]
                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                            else:
                                require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                if vaultInfos[storFFDF[uint16(idx)]].field_0 == 1:
                                    require ext_code.size(storFFDF[uint16(idx)])
                                    staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if ext_call.success:
                                        require return_data.size >= 128
                                        if ext_call.return_data[32] >= sub_13995502:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        if return_data.size:
                                            _452 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_452] = return_data.size
                                            mem[_452 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if 0 >= sub_13995502:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                else:
                                    require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                    if vaultInfos[storFFDF[uint16(idx)]].field_0 != 2:
                                        if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        require ext_code.size(storFFDF[uint16(idx)])
                                        staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if ext_call.success:
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] / 11 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if return_data.size:
                                                _495 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_495] = return_data.size
                                                mem[_495 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if 0 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                        else:
                            require ext_code.size(storFFDF[uint16(idx)])
                            staticcall storFFDF[uint16(idx)].totalStake() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                if not vaultInfos[storFFDF[uint16(idx)]].field_0:
                                    if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                        require 0 < mem[mem[320]]
                                        mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                else:
                                    require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                    if vaultInfos[storFFDF[uint16(idx)]].field_0 == 1:
                                        require ext_code.size(storFFDF[uint16(idx)])
                                        staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                        if ext_call.success:
                                            require return_data.size >= 128
                                            if ext_call.return_data[32] >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            if return_data.size:
                                                _498 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_498] = return_data.size
                                                mem[_498 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if 0 >= sub_13995502:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                    else:
                                        require vaultInfos[storFFDF[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[storFFDF[uint16(idx)]].field_0 != 2:
                                            if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                        else:
                                            require ext_code.size(storFFDF[uint16(idx)])
                                            staticcall storFFDF[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                            if ext_call.success:
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] / 11 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                                else:
                                                    if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                            else:
                                                if return_data.size:
                                                    _520 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_520] = return_data.size
                                                    mem[_520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = storFFDF[uint16(idx)]
                                                else:
                                                    if block.timestamp >= vaultInfos[storFFDF[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = storFFDF[uint16(idx)]
            idx = idx + 1
            continue 
    return 0, 64, 0
}

function sub_df1ab2a0(?) payable {
    mem[0] = 2
    mem[32] = 101
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 96
    mem[224] = 96
    mem[256] = 96
    mem[288] = 2
    require uint256(sub_638efe6d[2]) <= test266151307()
    mem[480] = uint256(sub_638efe6d[2])
    if not uint256(sub_638efe6d[2]):
        mem[320] = 480
        require uint256(sub_638efe6d[2]) <= test266151307()
        mem[(32 * uint256(sub_638efe6d[2])) + 512] = uint256(sub_638efe6d[2])
        if not uint256(sub_638efe6d[2]):
            mem[352] = (32 * uint256(sub_638efe6d[2])) + 512
            mem[(64 * uint256(sub_638efe6d[2])) + 544] = 0
            mem[384] = (64 * uint256(sub_638efe6d[2])) + 544
            mem[(64 * uint256(sub_638efe6d[2])) + 576] = 0
            mem[416] = (64 * uint256(sub_638efe6d[2])) + 576
            require uint256(sub_638efe6d[2]) <= test266151307()
            mem[(64 * uint256(sub_638efe6d[2])) + 608] = uint256(sub_638efe6d[2])
            mem[64] = (98 * uint256(sub_638efe6d[2])) + 640
            if not uint256(sub_638efe6d[2]):
                mem[448] = (64 * uint256(sub_638efe6d[2])) + 608
                idx = 0
                while uint16(idx) < uint256(sub_638efe6d[2]):
                    if sub_8eea3338 != 0:
                        mem[32] = 101
                        require uint16(idx) < stor2336.length
                        mem[0] = 0x2336b9432076a604ce9991266add6a78e7a0892d327c1598093d6435659e56fc
                        _4035 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4035] = 0
                        mem[_4035 + 32] = 0
                        mem[_4035 + 64] = 0
                        mem[0] = stor2336[uint16(idx)]
                        mem[32] = 102
                        _4045 = mem[64]
                        mem[64] = mem[64] + 96
                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                        mem[_4045] = vaultInfos[stor2336[uint16(idx)]].field_0
                        mem[_4045 + 32] = vaultInfos[stor2336[uint16(idx)]].field_256
                        mem[_4045 + 64] = bool(vaultInfos[stor2336[uint16(idx)]].field_512)
                        if vaultInfos[stor2336[uint16(idx)]].field_512:
                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                require ext_code.size(stor2336[uint16(idx)])
                                staticcall stor2336[uint16(idx)].totalStake() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4509 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4509] = return_data.size
                                                    mem[_4509 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4683 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4683] = return_data.size
                                                        mem[_4683 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                            else:
                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4416 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4416] = return_data.size
                                                    mem[_4416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4612 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4612] = return_data.size
                                                        mem[_4612 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                else:
                                    require ext_code.size(stor2336[uint16(idx)])
                                    staticcall stor2336[uint16(idx)].totalStake() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                require 0 < mem[mem[352]]
                                                mem[mem[352] + 32] = 0
                                                require 0 < mem[mem[448]]
                                                mem[mem[448] + 32] = 0
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4617 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4617] = return_data.size
                                                        mem[_4617 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 128
                                                    if ext_call.return_data[32] >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[96]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                            else:
                                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                else:
                                                    require ext_code.size(stor2336[uint16(idx)])
                                                    staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            _4751 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_4751] = return_data.size
                                                            mem[_4751 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if 0 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                    else:
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] / 11 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                if not ext_call.return_data[0]:
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                                if not ext_call.return_data[32]:
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                    idx = idx + 1
                    continue 
            else:
                mem[(64 * uint256(sub_638efe6d[2])) + 640 len 32 * uint256(sub_638efe6d[2])] = call.data[calldata.size len 32 * uint256(sub_638efe6d[2])]
                mem[448] = (64 * uint256(sub_638efe6d[2])) + 608
                idx = 0
                while uint16(idx) < uint256(sub_638efe6d[2]):
                    if sub_8eea3338 != 0:
                        mem[32] = 101
                        require uint16(idx) < stor2336.length
                        mem[0] = 0x2336b9432076a604ce9991266add6a78e7a0892d327c1598093d6435659e56fc
                        _4036 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4036] = 0
                        mem[_4036 + 32] = 0
                        mem[_4036 + 64] = 0
                        mem[0] = stor2336[uint16(idx)]
                        mem[32] = 102
                        _4048 = mem[64]
                        mem[64] = mem[64] + 96
                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                        mem[_4048] = vaultInfos[stor2336[uint16(idx)]].field_0
                        mem[_4048 + 32] = vaultInfos[stor2336[uint16(idx)]].field_256
                        mem[_4048 + 64] = bool(vaultInfos[stor2336[uint16(idx)]].field_512)
                        if vaultInfos[stor2336[uint16(idx)]].field_512:
                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                require ext_code.size(stor2336[uint16(idx)])
                                staticcall stor2336[uint16(idx)].totalStake() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4516 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4516] = return_data.size
                                                    mem[_4516 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4687 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4687] = return_data.size
                                                        mem[_4687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                            else:
                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4424 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4424] = return_data.size
                                                    mem[_4424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4619 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4619] = return_data.size
                                                        mem[_4619 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                else:
                                    require ext_code.size(stor2336[uint16(idx)])
                                    staticcall stor2336[uint16(idx)].totalStake() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                require 0 < mem[mem[352]]
                                                mem[mem[352] + 32] = 0
                                                require 0 < mem[mem[448]]
                                                mem[mem[448] + 32] = 0
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4624 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4624] = return_data.size
                                                        mem[_4624 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 128
                                                    if ext_call.return_data[32] >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[96]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                            else:
                                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                else:
                                                    require ext_code.size(stor2336[uint16(idx)])
                                                    staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            _4758 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_4758] = return_data.size
                                                            mem[_4758 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if 0 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                    else:
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] / 11 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                if not ext_call.return_data[0]:
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                                if not ext_call.return_data[32]:
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * uint256(sub_638efe6d[2])) + 544 len 32 * uint256(sub_638efe6d[2])] = call.data[calldata.size len 32 * uint256(sub_638efe6d[2])]
            mem[352] = (32 * uint256(sub_638efe6d[2])) + 512
            mem[(64 * uint256(sub_638efe6d[2])) + 544] = 0
            mem[384] = (64 * uint256(sub_638efe6d[2])) + 544
            mem[(64 * uint256(sub_638efe6d[2])) + 576] = 0
            mem[416] = (64 * uint256(sub_638efe6d[2])) + 576
            require uint256(sub_638efe6d[2]) <= test266151307()
            mem[(64 * uint256(sub_638efe6d[2])) + 608] = uint256(sub_638efe6d[2])
            mem[64] = (98 * uint256(sub_638efe6d[2])) + 640
            if not uint256(sub_638efe6d[2]):
                mem[448] = (64 * uint256(sub_638efe6d[2])) + 608
                idx = 0
                while uint16(idx) < uint256(sub_638efe6d[2]):
                    if sub_8eea3338 != 0:
                        mem[32] = 101
                        require uint16(idx) < stor2336.length
                        mem[0] = 0x2336b9432076a604ce9991266add6a78e7a0892d327c1598093d6435659e56fc
                        _4037 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4037] = 0
                        mem[_4037 + 32] = 0
                        mem[_4037 + 64] = 0
                        mem[0] = stor2336[uint16(idx)]
                        mem[32] = 102
                        _4051 = mem[64]
                        mem[64] = mem[64] + 96
                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                        mem[_4051] = vaultInfos[stor2336[uint16(idx)]].field_0
                        mem[_4051 + 32] = vaultInfos[stor2336[uint16(idx)]].field_256
                        mem[_4051 + 64] = bool(vaultInfos[stor2336[uint16(idx)]].field_512)
                        if vaultInfos[stor2336[uint16(idx)]].field_512:
                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                require ext_code.size(stor2336[uint16(idx)])
                                staticcall stor2336[uint16(idx)].totalStake() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4523 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4523] = return_data.size
                                                    mem[_4523 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4691 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4691] = return_data.size
                                                        mem[_4691 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                            else:
                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4432 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4432] = return_data.size
                                                    mem[_4432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4626 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4626] = return_data.size
                                                        mem[_4626 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                else:
                                    require ext_code.size(stor2336[uint16(idx)])
                                    staticcall stor2336[uint16(idx)].totalStake() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                require 0 < mem[mem[352]]
                                                mem[mem[352] + 32] = 0
                                                require 0 < mem[mem[448]]
                                                mem[mem[448] + 32] = 0
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4631 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4631] = return_data.size
                                                        mem[_4631 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 128
                                                    if ext_call.return_data[32] >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[96]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                            else:
                                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                else:
                                                    require ext_code.size(stor2336[uint16(idx)])
                                                    staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            _4765 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_4765] = return_data.size
                                                            mem[_4765 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if 0 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                    else:
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] / 11 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                if not ext_call.return_data[0]:
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                                if not ext_call.return_data[32]:
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                    idx = idx + 1
                    continue 
            else:
                mem[(64 * uint256(sub_638efe6d[2])) + 640 len 32 * uint256(sub_638efe6d[2])] = call.data[calldata.size len 32 * uint256(sub_638efe6d[2])]
                mem[448] = (64 * uint256(sub_638efe6d[2])) + 608
                idx = 0
                while uint16(idx) < uint256(sub_638efe6d[2]):
                    if sub_8eea3338 != 0:
                        mem[32] = 101
                        require uint16(idx) < stor2336.length
                        mem[0] = 0x2336b9432076a604ce9991266add6a78e7a0892d327c1598093d6435659e56fc
                        _4038 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4038] = 0
                        mem[_4038 + 32] = 0
                        mem[_4038 + 64] = 0
                        mem[0] = stor2336[uint16(idx)]
                        mem[32] = 102
                        _4054 = mem[64]
                        mem[64] = mem[64] + 96
                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                        mem[_4054] = vaultInfos[stor2336[uint16(idx)]].field_0
                        mem[_4054 + 32] = vaultInfos[stor2336[uint16(idx)]].field_256
                        mem[_4054 + 64] = bool(vaultInfos[stor2336[uint16(idx)]].field_512)
                        if vaultInfos[stor2336[uint16(idx)]].field_512:
                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                require ext_code.size(stor2336[uint16(idx)])
                                staticcall stor2336[uint16(idx)].totalStake() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4530 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4530] = return_data.size
                                                    mem[_4530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4695 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4695] = return_data.size
                                                        mem[_4695 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                            else:
                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4440 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4440] = return_data.size
                                                    mem[_4440 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4633 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4633] = return_data.size
                                                        mem[_4633 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                else:
                                    require ext_code.size(stor2336[uint16(idx)])
                                    staticcall stor2336[uint16(idx)].totalStake() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                require 0 < mem[mem[352]]
                                                mem[mem[352] + 32] = 0
                                                require 0 < mem[mem[448]]
                                                mem[mem[448] + 32] = 0
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4638 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4638] = return_data.size
                                                        mem[_4638 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 128
                                                    if ext_call.return_data[32] >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[96]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                            else:
                                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                else:
                                                    require ext_code.size(stor2336[uint16(idx)])
                                                    staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            _4772 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_4772] = return_data.size
                                                            mem[_4772 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if 0 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                    else:
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] / 11 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                if not ext_call.return_data[0]:
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                                if not ext_call.return_data[32]:
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                    idx = idx + 1
                    continue 
    else:
        mem[512 len 32 * uint256(sub_638efe6d[2])] = call.data[calldata.size len 32 * uint256(sub_638efe6d[2])]
        mem[320] = 480
        require uint256(sub_638efe6d[2]) <= test266151307()
        mem[(32 * uint256(sub_638efe6d[2])) + 512] = uint256(sub_638efe6d[2])
        if not uint256(sub_638efe6d[2]):
            mem[352] = (32 * uint256(sub_638efe6d[2])) + 512
            mem[(64 * uint256(sub_638efe6d[2])) + 544] = 0
            mem[384] = (64 * uint256(sub_638efe6d[2])) + 544
            mem[(64 * uint256(sub_638efe6d[2])) + 576] = 0
            mem[416] = (64 * uint256(sub_638efe6d[2])) + 576
            require uint256(sub_638efe6d[2]) <= test266151307()
            mem[(64 * uint256(sub_638efe6d[2])) + 608] = uint256(sub_638efe6d[2])
            mem[64] = (98 * uint256(sub_638efe6d[2])) + 640
            if not uint256(sub_638efe6d[2]):
                mem[448] = (64 * uint256(sub_638efe6d[2])) + 608
                idx = 0
                while uint16(idx) < uint256(sub_638efe6d[2]):
                    if sub_8eea3338 != 0:
                        mem[32] = 101
                        require uint16(idx) < stor2336.length
                        mem[0] = 0x2336b9432076a604ce9991266add6a78e7a0892d327c1598093d6435659e56fc
                        _4039 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4039] = 0
                        mem[_4039 + 32] = 0
                        mem[_4039 + 64] = 0
                        mem[0] = stor2336[uint16(idx)]
                        mem[32] = 102
                        _4057 = mem[64]
                        mem[64] = mem[64] + 96
                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                        mem[_4057] = vaultInfos[stor2336[uint16(idx)]].field_0
                        mem[_4057 + 32] = vaultInfos[stor2336[uint16(idx)]].field_256
                        mem[_4057 + 64] = bool(vaultInfos[stor2336[uint16(idx)]].field_512)
                        if vaultInfos[stor2336[uint16(idx)]].field_512:
                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                require ext_code.size(stor2336[uint16(idx)])
                                staticcall stor2336[uint16(idx)].totalStake() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4537 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4537] = return_data.size
                                                    mem[_4537 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4699 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4699] = return_data.size
                                                        mem[_4699 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                            else:
                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4448 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4448] = return_data.size
                                                    mem[_4448 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4640 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4640] = return_data.size
                                                        mem[_4640 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                else:
                                    require ext_code.size(stor2336[uint16(idx)])
                                    staticcall stor2336[uint16(idx)].totalStake() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                require 0 < mem[mem[352]]
                                                mem[mem[352] + 32] = 0
                                                require 0 < mem[mem[448]]
                                                mem[mem[448] + 32] = 0
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4645 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4645] = return_data.size
                                                        mem[_4645 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 128
                                                    if ext_call.return_data[32] >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[96]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                            else:
                                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                else:
                                                    require ext_code.size(stor2336[uint16(idx)])
                                                    staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            _4779 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_4779] = return_data.size
                                                            mem[_4779 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if 0 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                    else:
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] / 11 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                if not ext_call.return_data[0]:
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                                if not ext_call.return_data[32]:
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                    idx = idx + 1
                    continue 
            else:
                mem[(64 * uint256(sub_638efe6d[2])) + 640 len 32 * uint256(sub_638efe6d[2])] = call.data[calldata.size len 32 * uint256(sub_638efe6d[2])]
                mem[448] = (64 * uint256(sub_638efe6d[2])) + 608
                idx = 0
                while uint16(idx) < uint256(sub_638efe6d[2]):
                    if sub_8eea3338 != 0:
                        mem[32] = 101
                        require uint16(idx) < stor2336.length
                        mem[0] = 0x2336b9432076a604ce9991266add6a78e7a0892d327c1598093d6435659e56fc
                        _4040 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4040] = 0
                        mem[_4040 + 32] = 0
                        mem[_4040 + 64] = 0
                        mem[0] = stor2336[uint16(idx)]
                        mem[32] = 102
                        _4060 = mem[64]
                        mem[64] = mem[64] + 96
                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                        mem[_4060] = vaultInfos[stor2336[uint16(idx)]].field_0
                        mem[_4060 + 32] = vaultInfos[stor2336[uint16(idx)]].field_256
                        mem[_4060 + 64] = bool(vaultInfos[stor2336[uint16(idx)]].field_512)
                        if vaultInfos[stor2336[uint16(idx)]].field_512:
                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                require ext_code.size(stor2336[uint16(idx)])
                                staticcall stor2336[uint16(idx)].totalStake() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4544 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4544] = return_data.size
                                                    mem[_4544 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4703 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4703] = return_data.size
                                                        mem[_4703 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                            else:
                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4456 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4456] = return_data.size
                                                    mem[_4456 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4647 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4647] = return_data.size
                                                        mem[_4647 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                else:
                                    require ext_code.size(stor2336[uint16(idx)])
                                    staticcall stor2336[uint16(idx)].totalStake() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                require 0 < mem[mem[352]]
                                                mem[mem[352] + 32] = 0
                                                require 0 < mem[mem[448]]
                                                mem[mem[448] + 32] = 0
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4652 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4652] = return_data.size
                                                        mem[_4652 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 128
                                                    if ext_call.return_data[32] >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[96]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                            else:
                                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                else:
                                                    require ext_code.size(stor2336[uint16(idx)])
                                                    staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            _4786 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_4786] = return_data.size
                                                            mem[_4786 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if 0 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                    else:
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] / 11 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                if not ext_call.return_data[0]:
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                                if not ext_call.return_data[32]:
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * uint256(sub_638efe6d[2])) + 544 len 32 * uint256(sub_638efe6d[2])] = call.data[calldata.size len 32 * uint256(sub_638efe6d[2])]
            mem[352] = (32 * uint256(sub_638efe6d[2])) + 512
            mem[(64 * uint256(sub_638efe6d[2])) + 544] = 0
            mem[384] = (64 * uint256(sub_638efe6d[2])) + 544
            mem[(64 * uint256(sub_638efe6d[2])) + 576] = 0
            mem[416] = (64 * uint256(sub_638efe6d[2])) + 576
            require uint256(sub_638efe6d[2]) <= test266151307()
            mem[(64 * uint256(sub_638efe6d[2])) + 608] = uint256(sub_638efe6d[2])
            mem[64] = (98 * uint256(sub_638efe6d[2])) + 640
            if not uint256(sub_638efe6d[2]):
                mem[448] = (64 * uint256(sub_638efe6d[2])) + 608
                idx = 0
                while uint16(idx) < uint256(sub_638efe6d[2]):
                    if sub_8eea3338 != 0:
                        mem[32] = 101
                        require uint16(idx) < stor2336.length
                        mem[0] = 0x2336b9432076a604ce9991266add6a78e7a0892d327c1598093d6435659e56fc
                        _4041 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4041] = 0
                        mem[_4041 + 32] = 0
                        mem[_4041 + 64] = 0
                        mem[0] = stor2336[uint16(idx)]
                        mem[32] = 102
                        _4063 = mem[64]
                        mem[64] = mem[64] + 96
                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                        mem[_4063] = vaultInfos[stor2336[uint16(idx)]].field_0
                        mem[_4063 + 32] = vaultInfos[stor2336[uint16(idx)]].field_256
                        mem[_4063 + 64] = bool(vaultInfos[stor2336[uint16(idx)]].field_512)
                        if vaultInfos[stor2336[uint16(idx)]].field_512:
                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                require ext_code.size(stor2336[uint16(idx)])
                                staticcall stor2336[uint16(idx)].totalStake() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4551 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4551] = return_data.size
                                                    mem[_4551 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4707 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4707] = return_data.size
                                                        mem[_4707 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                            else:
                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4464 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4464] = return_data.size
                                                    mem[_4464 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4654 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4654] = return_data.size
                                                        mem[_4654 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                else:
                                    require ext_code.size(stor2336[uint16(idx)])
                                    staticcall stor2336[uint16(idx)].totalStake() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                require 0 < mem[mem[352]]
                                                mem[mem[352] + 32] = 0
                                                require 0 < mem[mem[448]]
                                                mem[mem[448] + 32] = 0
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4659 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4659] = return_data.size
                                                        mem[_4659 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 128
                                                    if ext_call.return_data[32] >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[96]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                            else:
                                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                else:
                                                    require ext_code.size(stor2336[uint16(idx)])
                                                    staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            _4793 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_4793] = return_data.size
                                                            mem[_4793 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if 0 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                    else:
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] / 11 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                if not ext_call.return_data[0]:
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                                if not ext_call.return_data[32]:
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                    idx = idx + 1
                    continue 
            else:
                mem[(64 * uint256(sub_638efe6d[2])) + 640 len 32 * uint256(sub_638efe6d[2])] = call.data[calldata.size len 32 * uint256(sub_638efe6d[2])]
                mem[448] = (64 * uint256(sub_638efe6d[2])) + 608
                idx = 0
                while uint16(idx) < uint256(sub_638efe6d[2]):
                    if sub_8eea3338 != 0:
                        mem[32] = 101
                        require uint16(idx) < stor2336.length
                        mem[0] = 0x2336b9432076a604ce9991266add6a78e7a0892d327c1598093d6435659e56fc
                        _4042 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4042] = 0
                        mem[_4042 + 32] = 0
                        mem[_4042 + 64] = 0
                        mem[0] = stor2336[uint16(idx)]
                        mem[32] = 102
                        _4066 = mem[64]
                        mem[64] = mem[64] + 96
                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                        mem[_4066] = vaultInfos[stor2336[uint16(idx)]].field_0
                        mem[_4066 + 32] = vaultInfos[stor2336[uint16(idx)]].field_256
                        mem[_4066 + 64] = bool(vaultInfos[stor2336[uint16(idx)]].field_512)
                        if vaultInfos[stor2336[uint16(idx)]].field_512:
                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                require ext_code.size(stor2336[uint16(idx)])
                                staticcall stor2336[uint16(idx)].totalStake() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4558 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4558] = return_data.size
                                                    mem[_4558 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4711 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4711] = return_data.size
                                                        mem[_4711 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                            else:
                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                    require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                    if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                            require 0 < mem[mem[320]]
                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                            require 0 < mem[mem[352]]
                                            mem[mem[352] + 32] = 0
                                            require 0 < mem[mem[448]]
                                            mem[mem[448] + 32] = 0
                                    else:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                            require ext_code.size(stor2336[uint16(idx)])
                                            staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                    gas gas_remaining wei
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    _4472 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4472] = return_data.size
                                                    mem[_4472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0 >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                            else:
                                                require return_data.size >= 128
                                                if ext_call.return_data[32] >= sub_13995502:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    if not ext_call.return_data[0]:
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                    if not ext_call.return_data[96]:
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        ext_call.return_data[101 len 27],
                                                                        mem[mem[64] + 128 len 4]
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                else:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                    require 0 < mem[mem[320]]
                                                    mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                    require 0 < mem[mem[352]]
                                                    mem[mem[352] + 32] = 0
                                                    require 0 < mem[mem[448]]
                                                    mem[mem[448] + 32] = 0
                                            else:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4661 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4661] = return_data.size
                                                        mem[_4661 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] / 11 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[32]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                else:
                                    require ext_code.size(stor2336[uint16(idx)])
                                    staticcall stor2336[uint16(idx)].totalStake() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                        if not vaultInfos[stor2336[uint16(idx)]].field_0:
                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                require 0 < mem[mem[320]]
                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                require 0 < mem[mem[352]]
                                                mem[mem[352] + 32] = 0
                                                require 0 < mem[mem[448]]
                                                mem[mem[448] + 32] = 0
                                        else:
                                            require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                            if vaultInfos[stor2336[uint16(idx)]].field_0 == 1:
                                                require ext_code.size(stor2336[uint16(idx)])
                                                staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                        gas gas_remaining wei
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        _4666 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_4666] = return_data.size
                                                        mem[_4666 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if 0 >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                else:
                                                    require return_data.size >= 128
                                                    if ext_call.return_data[32] >= sub_13995502:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        if not ext_call.return_data[0]:
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                        if not ext_call.return_data[96]:
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            ext_call.return_data[101 len 27],
                                                                            mem[mem[64] + 128 len 4]
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                                    else:
                                                        if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[96]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[96] / ext_call.return_data[96] != slippageFactor:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                ext_call.return_data[101 len 27],
                                                                                mem[mem[64] + 128 len 4]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[96] / 10000
                                            else:
                                                require vaultInfos[stor2336[uint16(idx)]].field_0 <= 2
                                                if vaultInfos[stor2336[uint16(idx)]].field_0 != 2:
                                                    if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                        require 0 < mem[mem[320]]
                                                        mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                        require 0 < mem[mem[352]]
                                                        mem[mem[352] + 32] = 0
                                                        require 0 < mem[mem[448]]
                                                        mem[mem[448] + 32] = 0
                                                else:
                                                    require ext_code.size(stor2336[uint16(idx)])
                                                    staticcall stor2336[uint16(idx)].getExpectedOutputs() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            _4800 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                            mem[_4800] = return_data.size
                                                            mem[_4800 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if 0 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            require 0 < mem[mem[352]]
                                                            mem[mem[352] + 32] = 0
                                                            require 0 < mem[mem[448]]
                                                            mem[mem[448] + 32] = 0
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                    else:
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] / 11 >= sub_13995502:
                                                            require 0 < mem[mem[320]]
                                                            mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                            if not ext_call.return_data[0]:
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[352]]
                                                                mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                            if not ext_call.return_data[32]:
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = 0
                                                            else:
                                                                if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                require 0 < mem[mem[448]]
                                                                mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                                                        else:
                                                            if block.timestamp >= vaultInfos[stor2336[uint16(idx)]].field_256 + maxDelay:
                                                                require 0 < mem[mem[320]]
                                                                mem[mem[320] + 32] = stor2336[uint16(idx)]
                                                                if not ext_call.return_data[0]:
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[0] / ext_call.return_data[0] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[352]]
                                                                    mem[mem[352] + 32] = slippageFactor * ext_call.return_data[0] / 10000
                                                                if not ext_call.return_data[32]:
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = 0
                                                                else:
                                                                    if slippageFactor * ext_call.return_data[32] / ext_call.return_data[32] != slippageFactor:
                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                                    require 0 < mem[mem[448]]
                                                                    mem[mem[448] + 32] = slippageFactor * ext_call.return_data[32] / 10000
                    idx = idx + 1
                    continue 
    return 0, 64, 0
}



}
