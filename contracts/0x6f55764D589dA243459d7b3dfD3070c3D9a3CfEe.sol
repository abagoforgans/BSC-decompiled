contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct stor1;
address owner;
mapping of address stor99;
uint8 paused;
uint256 stor151;
address stor152;
uint8 stor153; offset 160
uint128 stor153; offset 160
address stor153;

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit Destroyed()
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function updateFeeds(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor153.field_0) = arg1
    stor152 = arg2
    Mask(96, 0, stor153.field_160) = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_83d7f85d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 154
    mem[ceil32(arg1.length) + 128] = not not stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function getTokenAddress(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 154
    if not stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]:
        revert with 0, 'Crowdsale: project NOT exists'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 154
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function getRates() {
    require ext_code.size(stor152)
    staticcall stor152.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(stor153.field_0))
    staticcall address(stor153.field_0).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(stor152)
    staticcall stor152.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor153.field_0))
    staticcall address(stor153.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[32]:
        if not ext_call.return_data[32]:
            return 0
        require ext_call.return_data[32]
        if ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] != 10^(stor151 - ext_call.return_data[31 len 1]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 31]
        return 0, ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
    require ext_call.return_data[32]
    if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] != 10^(stor151 - uint8(ext_call.return_data[0])):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 31]
    if not ext_call.return_data[32]:
        return ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), 0
    require ext_call.return_data[32]
    if ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] != 10^(stor151 - ext_call.return_data[31 len 1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 31]
    return ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), 
           ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
}

function sub_b4227957(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 
                    32,
                    44,
                    0x7743726f776473616c653a20746f6b656e206164647265737320697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + 240 len 20]
    mem[ceil32(arg1.length) + 164] = this.address
    require ext_code.size(arg2)
    staticcall arg2.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    57,
                    0x7343726f776473616c653a2063726f776473616c652061646472657373204e4f5420686173204d494e5445525f524f4c45206f6e20746f6b65,
                    mem[ceil32(arg1.length) + 253 len 7]
    mem[ceil32(arg1.length) + 128] = arg2
    mem[ceil32(arg1.length) + 160] = arg3
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 154
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = uint64(arg2) << 96
    uint32(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = arg3
    Mask(224, 0, stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_32) = 0
    mem[ceil32(arg1.length) + 224] = arg3
    mem[ceil32(arg1.length) + 256] = arg1.length
    mem[ceil32(arg1.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit EnabledToken(Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=Mask(8 * arg1.length % 32, 0, 154), mem[ceil32(arg1.length) + arg1.length + 224 len 64]), mem[ceil32(arg1.length) + 224 len floor32(arg1.length) - (arg1.length % 32)], arg2);
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
        emit EnabledToken(Array(len=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], data=Mask(8 * arg1.length % 32, 0, 154), mem[ceil32(arg1.length) + arg1.length + 224 len -(arg1.length % 32) + 96]), mem[ceil32(arg1.length) + 224 len floor32(arg1.length) - (arg1.length % 32)], arg2);
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address) > 0:
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if ext_code.size(this.address) > 0:
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address) > 0:
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    if ext_code.size(this.address) > 0:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if ext_code.size(this.address) > 0:
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            Mask(248, 0, stor0.field_8) = 1
                            uint8(stor0.field_0) = 1
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            Mask(248, 0, stor0.field_8) = 0
                            Mask(248, 0, stor0.field_8) = 0
                            Mask(248, 0, stor0.field_8) = 0
}

function sub_9403585c(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not uint8(stor153.field_160):
        revert with 0, 'Crowdsale: feeds NOT linked'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 154
    if not stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]:
        revert with 0, 'Crowdsale: project NOT exists'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 154
    _297 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length)])
    require ext_code.size(stor152)
    staticcall stor152.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(stor153.field_0))
    staticcall address(stor153.field_0).latestRoundData() with:
            gas gas_remaining wei
    mem[ceil32(arg2.length) + 128 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(stor152)
    staticcall stor152.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor153.field_0))
    staticcall address(stor153.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[32]:
        if not ext_call.return_data[32]:
            if uint256(stor1[_297].field_0):
                require uint256(stor1[_297].field_0)
                if 0 / uint256(stor1[_297].field_0):
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        else:
            require ext_call.return_data[32]
            if ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] != 10^(stor151 - ext_call.return_data[31 len 1]):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if not ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]):
                if uint256(stor1[_297].field_0):
                    require uint256(stor1[_297].field_0)
                    if 0 / uint256(stor1[_297].field_0):
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            else:
                require ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1])
                if 100 * 10^6 * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) != 100 * 10^6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if uint256(stor1[_297].field_0):
                    require uint256(stor1[_297].field_0)
                    if 100 * 10^6 * uint256(stor1[_297].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / uint256(stor1[_297].field_0) != 100 * 10^6 * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]):
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[32]
    if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] != 10^(stor151 - uint8(ext_call.return_data[0])):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32]:
        if uint256(stor1[_297].field_0):
            require uint256(stor1[_297].field_0)
            if 0 / uint256(stor1[_297].field_0):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        if not arg1:
            if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            mem[ceil32(arg2.length) + 128] = 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        else:
            require arg1
            if 100 * 10^6 * arg1 / arg1 != 100 * 10^6:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            mem[ceil32(arg2.length) + 128] = 100 * 10^6 * arg1 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
    else:
        require ext_call.return_data[32]
        if ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] != 10^(stor151 - ext_call.return_data[31 len 1]):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if not ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]):
            if uint256(stor1[_297].field_0):
                require uint256(stor1[_297].field_0)
                if 0 / uint256(stor1[_297].field_0):
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            if not arg1:
                if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                mem[ceil32(arg2.length) + 128] = 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            else:
                require arg1
                if 100 * 10^6 * arg1 / arg1 != 100 * 10^6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                mem[ceil32(arg2.length) + 128] = 100 * 10^6 * arg1 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        else:
            require ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1])
            if 100 * 10^6 * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) != 100 * 10^6:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if not uint256(stor1[_297].field_0):
                if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                if not arg1:
                    if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                    mem[ceil32(arg2.length) + 128] = 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                else:
                    require arg1
                    if 100 * 10^6 * arg1 / arg1 != 100 * 10^6:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                    if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                    mem[ceil32(arg2.length) + 128] = 100 * 10^6 * arg1 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            else:
                require uint256(stor1[_297].field_0)
                if 100 * 10^6 * uint256(stor1[_297].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / uint256(stor1[_297].field_0) != 100 * 10^6 * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]):
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                if not arg1:
                    if 100 * 10^6 * uint256(stor1[_297].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 100 * 10^6 * uint256(stor1[_297].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                    mem[ceil32(arg2.length) + 128] = 0 / 100 * 10^6 * uint256(stor1[_297].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                else:
                    require arg1
                    if 100 * 10^6 * arg1 / arg1 != 100 * 10^6:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                    if 100 * 10^6 * uint256(stor1[_297].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 100 * 10^6 * uint256(stor1[_297].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
                    mem[ceil32(arg2.length) + 128] = 100 * 10^6 * arg1 / 100 * 10^6 * uint256(stor1[_297].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_97492c7a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not uint8(stor153.field_160):
        revert with 0, 'Crowdsale: feeds NOT linked'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 154
    if not stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]:
        revert with 0, 'Crowdsale: project NOT exists'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 154
    _851 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    require ext_code.size(stor152)
    staticcall stor152.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(stor153.field_0))
    staticcall address(stor153.field_0).latestRoundData() with:
            gas gas_remaining wei
    mem[ceil32(arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(stor152)
    staticcall stor152.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor153.field_0))
    staticcall address(stor153.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[32]:
        if not ext_call.return_data[32]:
            if uint256(stor1[_851].field_0):
                require uint256(stor1[_851].field_0)
                if 0 / uint256(stor1[_851].field_0):
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        else:
            require ext_call.return_data[32]
            if ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] != 10^(stor151 - ext_call.return_data[31 len 1]):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if not ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]):
                if uint256(stor1[_851].field_0):
                    require uint256(stor1[_851].field_0)
                    if 0 / uint256(stor1[_851].field_0):
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            else:
                require ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1])
                if 100 * 10^6 * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) != 100 * 10^6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if uint256(stor1[_851].field_0):
                    require uint256(stor1[_851].field_0)
                    if 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / uint256(stor1[_851].field_0) != 100 * 10^6 * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]):
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[32]
    if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] != 10^(stor151 - uint8(ext_call.return_data[0])):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32]:
        if uint256(stor1[_851].field_0):
            require uint256(stor1[_851].field_0)
            if 0 / uint256(stor1[_851].field_0):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        if not msg.value:
            if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            mem[ceil32(arg1.length) + 128] = 0
            mem[ceil32(arg1.length) + 160] = 0
            mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + 192] = 154
            require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
            call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit Contribution(Array(len=arg1.length, data=arg1[all]), msg.value, 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), msg.sender);
            return (0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])))
        require msg.value
        if 100 * 10^6 * msg.value / msg.value != 100 * 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        mem[ceil32(arg1.length) + 128] = 0
        mem[ceil32(arg1.length) + 160] = 0
        mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 192] = 154
        require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit Contribution(Array(len=arg1.length, data=arg1[all]), msg.value, 100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), msg.sender);
        return (100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])))
    require ext_call.return_data[32]
    if ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] != 10^(stor151 - ext_call.return_data[31 len 1]):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]):
        if uint256(stor1[_851].field_0):
            require uint256(stor1[_851].field_0)
            if 0 / uint256(stor1[_851].field_0):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        if not msg.value:
            if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            mem[ceil32(arg1.length) + 128] = 0
            mem[ceil32(arg1.length) + 160] = 0
            mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + 192] = 154
            require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
            call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit Contribution(Array(len=arg1.length, data=arg1[all]), msg.value, 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), msg.sender);
            return (0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])))
        require msg.value
        if 100 * 10^6 * msg.value / msg.value != 100 * 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        mem[ceil32(arg1.length) + 128] = 0
        mem[ceil32(arg1.length) + 160] = 0
        mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 192] = 154
        require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit Contribution(Array(len=arg1.length, data=arg1[all]), msg.value, 100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), msg.sender);
        return (100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])))
    require ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1])
    if 100 * 10^6 * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) != 100 * 10^6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not uint256(stor1[_851].field_0):
        if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        if not msg.value:
            if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            mem[ceil32(arg1.length) + 128] = 0
            mem[ceil32(arg1.length) + 160] = 0
            mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[arg1.length + ceil32(arg1.length) + 192] = 154
            require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
            call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit Contribution(Array(len=arg1.length, data=arg1[all]), msg.value, 0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), msg.sender);
            return (0 / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])))
        require msg.value
        if 100 * 10^6 * msg.value / msg.value != 100 * 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        mem[ceil32(arg1.length) + 128] = 0
        mem[ceil32(arg1.length) + 160] = 0
        mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 192] = 154
        require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit Contribution(Array(len=arg1.length, data=arg1[all]), msg.value, 100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), msg.sender);
        return (100 * 10^6 * msg.value / 0 / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])))
    require uint256(stor1[_851].field_0)
    if 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / uint256(stor1[_851].field_0) != 100 * 10^6 * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
    if not msg.value:
        if 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        mem[ceil32(arg1.length) + 128] = 0
        mem[ceil32(arg1.length) + 160] = 0
        mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 192] = 154
        require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit Contribution(Array(len=arg1.length, data=arg1[all]), msg.value, 0 / 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), msg.sender);
        return (0 / 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])))
    require msg.value
    if 100 * 10^6 * msg.value / msg.value != 100 * 10^6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - ext_call.return_data[31 len 1]) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 154
    require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 100 * 10^6 * msg.value / 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0]))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit Contribution(Array(len=arg1.length, data=arg1[all]), msg.value, 100 * 10^6 * msg.value / 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])), msg.sender);
    return (100 * 10^6 * msg.value / 100 * 10^6 * uint256(stor1[_851].field_0) * ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])) / ext_call.return_data[32] * 10^(stor151 - uint8(ext_call.return_data[0])))
}



}
