contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 stor2;
mapping of uint256 alpacaOutfit;
address wearableAddress;
address operatorManagerAddress;
address alpacaCoreAddress;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function operatorManager() payable {
    return operatorManagerAddress
}

function alpacaOutfit(uint256 arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return alpacaOutfit[arg1][arg2]
}

function owner() payable {
    return owner
}

function alpacaCore() payable {
    return alpacaCoreAddress
}

function wearable() payable {
    return wearableAddress
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if wearableAddress != msg.sender:
        revert with 0, 
                    32,
                    57,
                    0x73416c706163614661726d3a20726563656976656420616c706163612066726f6d20756e61757468656e7469636174656420636f6e74726163,
                    mem[ceil32(arg5.length) + 253 len 7]
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if wearableAddress != msg.sender:
        revert with 0, 
                    32,
                    57,
                    0x73416c706163614661726d3a20726563656976656420616c706163612066726f6d20756e61757468656e7469636174656420636f6e74726163,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 317 len 7]
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
           mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
}

function takeOff(uint32 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if not alpacaOutfit[arg2][arg1 << 224]:
        revert with 0, 'not wearing'
    alpacaOutfit[arg2][arg1 << 224] = 0
    require ext_code.size(wearableAddress)
    staticcall wearableAddress.0x45280f3e with:
            gas gas_remaining wei
           args alpacaOutfit[arg2][arg1 << 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[64] != arg1:
        revert with 0, 'invalid input'
    require ext_code.size(alpacaCoreAddress)
    staticcall alpacaCoreAddress.hasPermissionToBreedAsSire(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'invalid permission'
    require ext_code.size(alpacaCoreAddress)
    staticcall alpacaCoreAddress.getAlpaca(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    if ext_call.return_data[32] > ext_call.return_data[352]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(operatorManagerAddress)
    call operatorManagerAddress.0x6f8eec3b with:
         gas gas_remaining wei
        args address(arg3), arg2, uint32(ext_call.return_data[352] - ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wearableAddress)
    call wearableAddress.0xf242432a with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, alpacaOutfit[arg2][arg1 << 224], 1, 160, 0, ext_call.return_data[260]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x99fe5df7: msg.sender, alpacaOutfit[arg2][arg1 << 224], arg1 << 224, arg2
    stor2 = 1
}

function wear(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    require ext_code.size(alpacaCoreAddress)
    staticcall alpacaCoreAddress.hasPermissionToBreedAsSire(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'invalid permission'
    require ext_code.size(alpacaCoreAddress)
    staticcall alpacaCoreAddress.getAlpaca(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    if ext_call.return_data[384] != 1:
        revert with 0, 'invalid state'
    require ext_code.size(wearableAddress)
    staticcall wearableAddress.0x45280f3e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if alpacaOutfit[arg2][ext_call.return_data[64] << 224]:
        revert with 0, 'already wearing'
    alpacaOutfit[arg2][ext_call.return_data[64] << 224] = arg1
    if ext_call.return_data[352] + ext_call.return_data[32] < ext_call.return_data[32]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(operatorManagerAddress)
    call operatorManagerAddress.0x6f8eec3b with:
         gas gas_remaining wei
        args address(arg3), arg2, uint32(ext_call.return_data[352] + ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wearableAddress)
    call wearableAddress.0xf242432a with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32 len 64], uint32(arg1), 1, 160, 0, ext_call.return_data[196]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe2c92a7b: address(msg.sender), arg1, ext_call.return_data[64], arg2
    stor2 = 1
}



}
