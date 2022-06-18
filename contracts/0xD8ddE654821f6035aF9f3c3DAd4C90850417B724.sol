contract main {




// =====================  Runtime code  =====================


#
#  - sell(uint256 arg1, uint256 arg2, address[] arg3, address arg4)
#  - buy9()
#  - buy()
#
uint32 stor0;
address owner;
uint256 stor0;
address stor1;
array of address stor2;
address stor3;
array of address path;
uint256 token_reserve;
address tokenAddress;
uint256 stor7;
uint256 stor8;
uint256 stor9;
array of address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14; offset 128
uint8 stor14; offset 136
uint8 stor14; offset 144
uint8 stor14; offset 152
uint64 stor14; offset 216
uint64 stor14; offset 208
uint64 stor14; offset 192
uint128 stor14; offset 184
uint128 stor14; offset 176
uint128 stor14; offset 168
uint128 stor14; offset 160
uint128 stor14; offset 152
uint128 stor14;

function success() {
    return bool(uint8(stor14.field_152))
}

function owner() {
    return address(owner)
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < path.length
    return path[arg1]
}

function token_reserve() {
    return token_reserve
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function returnTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function findPair() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[100] = stor2[idx]
        mem[132] = tokenAddress
        require ext_code.size(stor3)
        staticcall stor3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor2[idx], tokenAddress
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        if not idx:
            require idx < stor2.length
            mem[96] = stor2[idx]
            mem[128] = tokenAddress
            path.length = 2
            s = sha3(4)
            idx = 96
            while 160 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(4) + 2
            while sha3(4) + path.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            require 0 < stor2.length
            mem[96] = stor2
            require idx < stor2.length
            mem[128] = stor2[idx]
            mem[160] = tokenAddress
            path.length = 3
            s = sha3(4)
            idx = 96
            while 192 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(4) + 3
            while sha3(4) + path.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor14.field_216 % 1099511627776 = 1
        stor11 = address(ext_call.return_data[0])
    revert with 0, 'P'
}

function sub_4cfc3b4c(?) {
    require calldata.size - 4 >= 384
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    path.length = arg1.length
    if not arg1.length:
        idx = 0
        while path.length > idx:
            path[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            path[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while path.length > idx:
            path[idx] = 0
            idx = idx + 1
            continue 
    require path.length - 1 < path.length
    tokenAddress = path[path.length]
    if path.length <= 1:
        token_reserve = 0
    else:
        require path.length - 2 < path.length
        require path.length - 1 < path.length
        if path[path.length] == path[path.length]:
            revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
        if path[path.length] < path[path.length]:
            if not path[path.length]:
                revert with 0, 'BotLibrary: ZERO_ADDRESS'
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 40
            stor11 = address(sha3(0, stor3, sha3(path[path.length], path[path.length]), stor13))
        else:
            if not path[path.length]:
                revert with 0, 'BotLibrary: ZERO_ADDRESS'
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 40
            stor11 = address(sha3(0, stor3, sha3(path[path.length], path[path.length]), stor13))
        stor14.field_216 % 1099511627776 = 1
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        token_reserve = ext_call.return_data[0]
    stor7 = arg3
    stor8 = arg4
    if stor10.length != arg2.length:
        stor10.length = arg2.length
        if not arg2.length:
            idx = 0
            while stor10.length > idx:
                stor10[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg1.length) + 160
            while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                stor10[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while stor10.length > idx:
                stor10[idx] = 0
                idx = idx + 1
                continue 
    stor9 = arg5
    Mask(104, 0, stor14.field_152) = 0
    Mask(80, 0, stor14.field_176) = Mask(80, 0, arg6)
    Mask(72, 0, stor14.field_184) = Mask(72, 0, arg7)
    stor14.field_208 % 281474976710656 = arg9 % 281474976710656
    Mask(88, 0, stor14.field_168) = 0
    Mask(96, 0, stor14.field_160) = 0
    uint64(stor14.field_192) = uint64(arg8)
    uint8(stor14.field_136) = arg10
    uint8(stor14.field_128) = 0
    stor12 = 0
    uint8(stor14.field_144) = arg11
    uint128(stor14.field_0) = arg12
}

function returnBalance() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call stor1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if stor2.length > 0:
            require 0 < stor2.length
            if address(owner) != msg.sender:
                revert with 0, 'Only owner'
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
            call stor2 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if stor2.length > 0:
            require 0 < stor2.length
            if address(owner) != msg.sender:
                revert with 0, 'Only owner'
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
            call stor2 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
