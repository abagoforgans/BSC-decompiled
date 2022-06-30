contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 stor2;
mapping of address stor3;
address stor4;

function owner() payable {
    return owner
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

function setSource(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor2 = arg1
}

function addToPoolServicesList(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor1[address(arg1)] = 1
}

function addPriceFeed(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not stor1[msg.sender]:
        revert with 0, 'Allowed for pool services only'
    stor3[address(arg1)][address(arg2)] = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fb63b9a1(?) payable {
    require calldata.size - 4 >= 96
    if not stor4:
        revert with 0, 'Router doesn't exists'
    mem[160] = arg1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _28 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _31 = mem[_28 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_28 + 192])] = mem[_28 + 224 len floor32(mem[_28 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    if not mem[ceil32(return_data.size) + 256]:
        return 0
    if 100 * 10^6 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != 100 * 10^6:
        revert with 0, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _31) + ceil32(return_data.size) + 325 len 31]
    mem[(32 * _31) + ceil32(return_data.size) + 224] = 100 * 10^6 * mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _31) + ceil32(return_data.size) + 224
       len 32
}

function sub_02ace24d(?) payable {
    require calldata.size - 4 >= 96
    if not stor3[address(arg1)][address(arg2)]:
        revert with 0, 'Oracle doesn't exists'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3[address(arg1)][address(arg2)])
    staticcall stor3[address(arg1)][address(arg2)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not arg3:
        if 10^uint8(ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^uint8(ext_call.return_data[0]):
            return (0 / 10^uint8(ext_call.return_data[0]))
    else:
        if ext_call.return_data[32] * arg3 / arg3 != ext_call.return_data[32]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 31]
        if not ext_call.return_data[32] * arg3:
            if 10^uint8(ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[0]):
                return (0 / 10^uint8(ext_call.return_data[0]))
        else:
            if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[32] * arg3 / ext_call.return_data[32] * arg3 != 10^uint8(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 31]
            if 10^uint8(ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[0]):
                return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[32] * arg3 / 10^uint8(ext_call.return_data[0]))
    ('iszero', ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32))))
    revert
}

function getAmountOut(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        return 0
    if arg1 == arg2:
        if not arg3:
            return 0
        if 100 * 10^6 * arg3 / arg3 != 100 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (100 * 10^6 * arg3)
    if not stor2:
        if not stor3[address(arg1)][address(arg2)]:
            revert with 0, 'Oracle doesn't exists'
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3[address(arg1)][address(arg2)])
        staticcall stor3[address(arg1)][address(arg2)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not arg3:
            if 10^uint8(ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[0]):
                return (0 / 10^uint8(ext_call.return_data[0]))
        else:
            if ext_call.return_data[32] * arg3 / arg3 != ext_call.return_data[32]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 31]
            if not ext_call.return_data[32] * arg3:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    return (0 / 10^uint8(ext_call.return_data[0]))
            else:
                if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[32] * arg3 / ext_call.return_data[32] * arg3 != 10^uint8(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[32] * arg3 / 10^uint8(ext_call.return_data[0]))
        ('iszero', ('exp', 10, ('mask_shl', 8, 0, 0, ('ext_call.return_data', 0, 32))))
        revert
    if not stor4:
        revert with 0, 'Router doesn't exists'
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _74 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _77 = mem[_74 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_74 + 192])] = mem[_74 + 224 len floor32(mem[_74 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    if not mem[ceil32(return_data.size) + 256]:
        return 0
    if 100 * 10^6 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != 100 * 10^6:
        revert with 0, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _77) + ceil32(return_data.size) + 325 len 31]
    mem[(32 * _77) + ceil32(return_data.size) + 224] = 100 * 10^6 * mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _77) + ceil32(return_data.size) + 224
       len 32
}



}
