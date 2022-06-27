contract main {




// =====================  Runtime code  =====================


address owner;
address WBNBAddress;
address BUSDAddress;
mapping of uint8 stor3;
address pancakeswapV2RouterAddress;

function BUSD() {
    return BUSDAddress
}

function bought(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function WBNB() {
    return WBNBAddress
}

function pancakeswapV2Router() {
    return pancakeswapV2RouterAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0c6a3c1d(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor3[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_67a43cd5(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    mem[192] = arg1
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = msg.value
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(pancakeswapV2RouterAddress)
    staticcall pancakeswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _31 = mem[224 len 4], Mask(224, 32, msg.value) >> 32
    require mem[224 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]
    _34 = mem[_31 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_31 + 224])] = mem[_31 + 256 len floor32(mem[_31 + 224])]
    require mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]
    _47 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
    mem[(32 * _34) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(pancakeswapV2RouterAddress)
    call pancakeswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _47 - (_47 * arg2 / 10000), Array(len=3, data=mem[(32 * _34) + ceil32(return_data.size) + 420 len 96]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ef3d0d56(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    mem[96] = 2
    mem[128] = WBNBAddress
    mem[160] = arg1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pancakeswapV2RouterAddress)
    staticcall pancakeswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _30 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    _33 = mem[_30 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_30 + 192])] = mem[_30 + 224 len floor32(mem[_30 + 192])]
    mem[64] = (32 * _33) + ceil32(return_data.size) + 224
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _46 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _33) + ceil32(return_data.size) + 388 len 0] = None
    require ext_code.size(pancakeswapV2RouterAddress)
    call pancakeswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _46 - (_46 * arg2 / 10000), Array(len=2, data=mem[(32 * _33) + ceil32(return_data.size) + 388 len 64]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_89299dd1(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x725468697320746f6b656e2068617320616c7265616479206265656e20736e697065,
                    mem[198 len 30]
    mem[96] = 2
    mem[128] = WBNBAddress
    mem[160] = arg1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pancakeswapV2RouterAddress)
    staticcall pancakeswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _34 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    _37 = mem[_34 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_34 + 192])] = mem[_34 + 224 len floor32(mem[_34 + 192])]
    mem[64] = (32 * _37) + ceil32(return_data.size) + 224
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _51 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _37) + ceil32(return_data.size) + 388 len 0] = None
    require ext_code.size(pancakeswapV2RouterAddress)
    call pancakeswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args _51 - (_51 * arg2 / 10000), Array(len=2, data=mem[(32 * _37) + ceil32(return_data.size) + 388 len 64]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[address(arg1)] = 1
}

function sub_11897c9a(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(pancakeswapV2RouterAddress)
    staticcall pancakeswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _21 = mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
    _24 = mem[(32 * arg1.length) + _21 + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + _21 + 128])] = mem[(32 * arg1.length) + _21 + 160 len floor32(mem[(32 * arg1.length) + _21 + 128])]
    require mem[(32 * arg1.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    mem[(32 * _24) + (32 * arg1.length) + ceil32(return_data.size) + 160] = mem[(32 * mem[(32 * arg1.length) + ceil32(return_data.size) + 128] - 1) + (32 * arg1.length) + ceil32(return_data.size) + 160]
    return memory
      from (32 * _24) + (32 * arg1.length) + ceil32(return_data.size) + 160
       len 32
}



}
