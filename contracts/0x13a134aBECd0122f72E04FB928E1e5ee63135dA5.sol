contract main {




// =====================  Runtime code  =====================


address owner;
address USDTAddress;
address sub_7ea5a1faAddress;
address stor3;

function sub_7ea5a1fa(?) payable {
    return sub_7ea5a1faAddress
}

function owner() payable {
    return owner
}

function USDT() payable {
    return USDTAddress
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

function init(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7ea5a1faAddress = arg1
    USDTAddress = arg2
    stor3 = arg3
    require ext_code.size(sub_7ea5a1faAddress)
    call sub_7ea5a1faAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(USDTAddress)
    call USDTAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(USDTAddress)
    call USDTAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = sub_7ea5a1faAddress
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 0
    mem[292] = msg.sender
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function buy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(USDTAddress)
    call USDTAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = sub_7ea5a1faAddress
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 0
    mem[292] = msg.sender
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}

function sell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_7ea5a1faAddress)
    call sub_7ea5a1faAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = USDTAddress
    require ext_code.size(sub_7ea5a1faAddress)
    staticcall sub_7ea5a1faAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 0
    mem[292] = msg.sender
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
}

function sell(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_7ea5a1faAddress)
    call sub_7ea5a1faAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = USDTAddress
    require ext_code.size(sub_7ea5a1faAddress)
    staticcall sub_7ea5a1faAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 0
    mem[292] = msg.sender
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
}

function getPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_7ea5a1faAddress)
    staticcall sub_7ea5a1faAddress.brunGate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7ea5a1faAddress)
    staticcall sub_7ea5a1faAddress.grandFatherGate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7ea5a1faAddress)
    staticcall sub_7ea5a1faAddress.fatherGate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7ea5a1faAddress)
    staticcall sub_7ea5a1faAddress.walletBGate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7ea5a1faAddress)
    staticcall sub_7ea5a1faAddress.walletAGate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != sub_7ea5a1faAddress:
        mem[160] = sub_7ea5a1faAddress
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(stor3)
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _62 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _68 = mem[_62 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_62 + 192])] = mem[_62 + 224 len floor32(mem[_62 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _68) + ceil32(return_data.size) + 224] = (100 * mem[ceil32(return_data.size) + 256]) - (ext_call.return_data[0] * mem[ceil32(return_data.size) + 256]) - (ext_call.return_data[0] * mem[ceil32(return_data.size) + 256]) - (ext_call.return_data[0] * mem[ceil32(return_data.size) + 256]) - (ext_call.return_data[0] * mem[ceil32(return_data.size) + 256]) - (ext_call.return_data[0] * mem[ceil32(return_data.size) + 256]) / 100
        return memory
          from (32 * _68) + ceil32(return_data.size) + 224
           len 32
    mem[160] = USDTAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _64 = mem[192 len 4], Mask(224, 32, (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100) >> 32
    require mem[192 len 4], Mask(224, 32, (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (100 * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 100) >> 32 + 192]
    _69 = mem[_64 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_64 + 192])] = mem[_64 + 224 len floor32(mem[_64 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _69) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _69) + ceil32(return_data.size) + 224
       len 32
}



}
