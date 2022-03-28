contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address woolAddress;
address woolControllerAddress;
address cryptoAlpacaAddress;
uint256 totalRecycledAlpaca;
uint256 totalMintedWool;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function cryptoAlpaca() payable {
    return cryptoAlpacaAddress
}

function totalRecycledAlpaca() payable {
    return totalRecycledAlpaca
}

function totalMintedWool() payable {
    return totalMintedWool
}

function owner() payable {
    return owner
}

function wool() payable {
    return woolAddress
}

function woolController() payable {
    return woolControllerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if cryptoAlpacaAddress != msg.sender:
        revert with 0, 
                    32,
                    63,
                    0xfe416c7061636152656379636c65426f783a20726563656976656420616c706163612066726f6d20756e61757468656e7469636174656420636f6e74726163,
                    mem[ceil32(arg5.length) + 259 len 1]
    mem[ceil32(arg5.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(arg5.length) + 160] = arg3
    idx = 0
    while idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        require ext_code.size(cryptoAlpacaAddress)
        staticcall cryptoAlpacaAddress.0x6e33f316 with:
                gas gas_remaining wei
               args mem[(32 * idx) + ceil32(arg5.length) + 160]
        mem[ceil32(arg5.length) + 192 len 416] = ext_call.return_data[0 len 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 416
        if ext_call.return_data[384] != 1:
            revert with 0, 
                        32,
                        38,
                        0x74416c7061636152656379636c65426f783a20696e76616c696420616c706163612073746174,
                        ext_call.return_data[106 len 26]
        if ext_call.return_data[352] <= 0:
            revert with 0, 
                        32,
                        39,
                        0x73416c7061636152656379636c65426f783a20696e76616c696420616c7061636120656e657267,
                        ext_call.return_data[107 len 25]
        if ext_call.return_data[352]:
            if 10^18 * ext_call.return_data[352] / ext_call.return_data[352] != 10^18:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 10^18 * ext_call.return_data[352] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + totalRecycledAlpaca < totalRecycledAlpaca:
        revert with 0, 'SafeMath: addition overflow'
    totalRecycledAlpaca += Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    if totalMintedWool < totalMintedWool:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(woolControllerAddress)
    call woolControllerAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if cryptoAlpacaAddress != msg.sender:
        revert with 0, 
                    32,
                    63,
                    0xfe416c7061636152656379636c65426f783a20726563656976656420616c706163612066726f6d20756e61757468656e7469636174656420636f6e74726163,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 323 len 1]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require ext_code.size(cryptoAlpacaAddress)
        staticcall cryptoAlpacaAddress.0x6e33f316 with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 len 416] = ext_call.return_data[0 len 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 416
        if ext_call.return_data[384] != 1:
            revert with 0, 
                        32,
                        38,
                        0x74416c7061636152656379636c65426f783a20696e76616c696420616c706163612073746174,
                        ext_call.return_data[106 len 26]
        if ext_call.return_data[352] <= 0:
            revert with 0, 
                        32,
                        39,
                        0x73416c7061636152656379636c65426f783a20696e76616c696420616c7061636120656e657267,
                        ext_call.return_data[107 len 25]
        if ext_call.return_data[352]:
            if 10^18 * ext_call.return_data[352] / ext_call.return_data[352] != 10^18:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 10^18 * ext_call.return_data[352] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if arg3.length + totalRecycledAlpaca < totalRecycledAlpaca:
        revert with 0, 'SafeMath: addition overflow'
    totalRecycledAlpaca += arg3.length
    if totalMintedWool < totalMintedWool:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(woolControllerAddress)
    call woolControllerAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}



}
