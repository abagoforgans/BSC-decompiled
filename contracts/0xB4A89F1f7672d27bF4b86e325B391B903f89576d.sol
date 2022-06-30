contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address chiTokenAddress;
uint256 stor3; offset 32
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;
address stor7;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint8 stor8; offset 176
uint128 stor8; offset 184
uint128 stor8; offset 176
address stor8;
uint256 stor8;
mapping of uint8 stor9;
address stor10;

function chiToken() {
    return chiTokenAddress
}

function sub_8b6c477f(?) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function owner() {
    return owner
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_7f1a3697(?) {
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    uint8(stor8.field_160) = 1
}

function sub_378d77a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    stor10 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function mintGasToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(chiTokenAddress)
    call chiTokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getConfiguration() {
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    return stor7, 
           address(stor8.field_0),
           uint256(stor3.field_0),
           stor4,
           stor5,
           bool(uint8(stor8.field_168)),
           bool(uint8(stor8.field_160)),
           bool(uint8(stor8.field_176))
}

function sub_1ad0610b(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Not enough Ether value'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Not enough Ether value'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_06564134(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_db49f5db(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2526002a(?) {
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744e6f7420656e6f7567682045544820696e2074686520636f6e747261637420746f20777261,
                    mem[202 len 26]
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5daab052(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    routerAddress = arg1
    chiTokenAddress = arg2
    stor10 = arg3
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor9[ext_call.return_data[12 len 20]] = 1
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_e2f9506d(?) {
    require calldata.size - 4 >= 256
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    mem[128 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[(32 * arg8.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    stor7 = arg1
    uint256(stor3.field_0) = arg3
    stor4 = arg4
    stor5 = arg7
    address(stor8.field_0) = arg2
    uint8(stor8.field_168) = uint8(arg5)
    Mask(80, 0, stor8.field_176) = Mask(80, 0, arg6)
    Mask(72, 0, stor8.field_184) = Mask(72, 16, arg5) >> 16
    stor6.length = arg8.length
    if not arg8.length:
        idx = 0
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg8.length) + 128 > idx:
            stor6[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint256(stor8.field_0) = 0xffffffffffffffff00ffff00ffffffffffffffffffffffffffffffffffffffff and uint256(stor8.field_0)
}

function sub_061e37a3(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_20))
        staticcall address(_20).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _26 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = arg2
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_26))
        call address(_26).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function withdrawTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_24))
        staticcall address(_24).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(this.address)
        staticcall this.address.0x8da5cb5b with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _34 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = address(ext_call.return_data[0])
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_34))
        call address(_34).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_85ec9902(?) {
    require calldata.size - 4 >= 128
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 'Only Swaps'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734e6f7420656e6f75676820746f6b656e496e20696e2074686520636f6e74726163,
                    mem[198 len 30]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[388 len 64]), stor10, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(chiTokenAddress)
    staticcall chiTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(chiTokenAddress)
        call chiTokenAddress.freeUpTo(uint256 arg1) with:
             gas gas_remaining wei
            args ((16 * calldata.size) + 35154 / 41947)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_65fc6e6b(?) {
    require calldata.size - 4 >= 128
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 'Only Swaps'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734e6f7420656e6f75676820746f6b656e496e20696e2074686520636f6e74726163,
                    mem[198 len 30]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg2
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = arg4
    mem[292] = stor10
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=2, data=mem[388 len 64]), stor10, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    require ext_code.size(chiTokenAddress)
    staticcall chiTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(chiTokenAddress)
        call chiTokenAddress.freeUpTo(uint256 arg1) with:
             gas gas_remaining wei
            args ((16 * calldata.size) + 35154 / 41947)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_46586fec(?) {
    require calldata.size - 4 >= 160
    mem[0] = msg.sender
    mem[32] = 9
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 'Only Swaps'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734e6f7420656e6f75676820746f6b656e496e20696e2074686520636f6e74726163,
                    mem[198 len 30]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[64] = 192
    mem[128] = arg1
    mem[160] = arg2
    require arg5
    idx = 0
    while idx < arg5:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3 / arg5
        mem[mem[64] + 36] = arg4
        mem[mem[64] + 100] = stor10
        mem[mem[64] + 132] = block.timestamp
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[s + mem[64] + 196] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3 / arg5, arg4, 160, stor10, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _54 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _55 = mem[_54]
        require mem[_54] <= 4294967296
        require mem[_54] + 32 <= return_data.size
        require mem[_54 + mem[_54]] <= 4294967296 and mem[_54] + (32 * mem[_54 + mem[_54]]) + 32 <= return_data.size
        mem[_54 + ceil32(return_data.size)] = mem[_54 + mem[_54]]
        _58 = mem[_54 + _55]
        s = 0
        while s < 32 * _58:
            mem[s + _54 + ceil32(return_data.size) + 32] = mem[s + _54 + _55 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _58) + _54 + ceil32(return_data.size) + 32
        idx = idx + 1
        continue 
    require ext_code.size(chiTokenAddress)
    staticcall chiTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(chiTokenAddress)
        call chiTokenAddress.freeUpTo(uint256 arg1) with:
             gas gas_remaining wei
            args ((16 * calldata.size) + 35154 / 41947)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_9bff67bb(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[32] = 9
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 'Only Swaps'
    if not uint8(stor8.field_160):
        require ext_code.size(stor7)
        staticcall stor7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint8(stor8.field_168):
            require 0 < arg1.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, uint256(stor3.field_0)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = uint256(stor3.field_0)
            mem[(32 * arg1.length) + 164] = 0
            mem[(32 * arg1.length) + 228] = stor10
            mem[(32 * arg1.length) + 260] = block.timestamp
            mem[(32 * arg1.length) + 196] = 160
            mem[(32 * arg1.length) + 292] = arg1.length
            mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args uint256(stor3.field_0), 0, 160, stor10, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]
            if ext_call.success:
                mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                require mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor3.field_32) <= 4294967296
                require mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
                require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor3.field_32) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor3.field_32) + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor3.field_32) + 128]) + 32 <= return_data.size
                uint8(stor8.field_160) = 1
        else:
            uint8(stor8.field_168) = 0
            if arg1.length != 2:
                if arg1.length != 3:
                    require 0 < arg1.length
                    require 0 < stor6.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, uint256(stor6.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    mem[(32 * arg1.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + 132] = uint256(stor6.field_0)
                    mem[(32 * arg1.length) + 164] = 0
                    mem[(32 * arg1.length) + 228] = this.address
                    mem[(32 * arg1.length) + 260] = block.timestamp
                    mem[(32 * arg1.length) + 196] = 160
                    mem[(32 * arg1.length) + 292] = arg1.length
                    mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]
                    if ext_call.success:
                        mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _531 = mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor6.field_32)
                        require mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor6.field_32) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor6.field_32) + 128]) + 32 <= return_data.size
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 0, stor6.field_32) + 128]
                        _548 = mem[(32 * arg1.length) + _531 + 128]
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + _531 + 128])] = mem[(32 * arg1.length) + _531 + 160 len floor32(mem[(32 * arg1.length) + _531 + 128])]
                        require ext_code.size(address(stor8.field_0))
                        staticcall address(stor8.field_0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor8.field_0))
                        call address(stor8.field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]
                        if ext_call.success:
                            require ext_code.size(stor7)
                            staticcall stor7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor6.length
                            require 1 < stor6.length
                            if uint256(stor6.field_0) > uint256(stor6.field_256):
                                require 0 < arg1.length
                                require ext_code.size(mem[140 len 20])
                                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, uint256(stor3.field_0)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 164] = uint256(stor3.field_0)
                                mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 196] = 0
                                mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 260] = stor10
                                mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 292] = block.timestamp
                                mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 228] = 160
                                mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 324] = arg1.length
                                mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor3.field_0), 0, 160, stor10, block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]
                                if ext_call.success:
                                    mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _548) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    require mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 0, stor3.field_32) <= 4294967296
                                    require mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
                                    require mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 0, stor3.field_32) + 160] <= 4294967296 and mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 0, stor3.field_32) + (32 * mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * _548) + (32 * arg1.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 0, stor3.field_32) + 160]) + 32 <= return_data.size
                                    uint8(stor8.field_160) = 1
                else:
                    mem[(32 * arg1.length) + 128] = 3
                    mem[(32 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
                    require 2 < arg1.length
                    mem[(32 * arg1.length) + 160] = mem[204 len 20]
                    require 1 < arg1.length
                    require 0 < arg1.length
                    mem[(32 * arg1.length) + 224] = mem[140 len 20]
                    require 0 < arg1.length
                    require 0 < stor6.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, uint256(stor6.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    mem[(32 * arg1.length) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + 260] = uint256(stor6.field_0)
                    mem[(32 * arg1.length) + 292] = 0
                    mem[(32 * arg1.length) + 356] = this.address
                    mem[(32 * arg1.length) + 388] = block.timestamp
                    mem[(32 * arg1.length) + 324] = 160
                    mem[(32 * arg1.length) + 420] = arg1.length
                    mem[(32 * arg1.length) + 452 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 452 len (32 * arg1.length) - floor32(arg1.length)]
                    if ext_call.success:
                        mem[(32 * arg1.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _533 = mem[(32 * arg1.length) + 256 len 4], Mask(224, 0, stor6.field_32)
                        require mem[(32 * arg1.length) + 256 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[(32 * arg1.length) + 256 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 256 len 4], Mask(224, 0, stor6.field_32) + 256] <= 4294967296 and mem[(32 * arg1.length) + 256 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 256 len 4], Mask(224, 0, stor6.field_32) + 256]) + 32 <= return_data.size
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 256] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 256 len 4], Mask(224, 0, stor6.field_32) + 256]
                        _549 = mem[(32 * arg1.length) + _533 + 256]
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 288 len floor32(mem[(32 * arg1.length) + _533 + 256])] = mem[(32 * arg1.length) + _533 + 288 len floor32(mem[(32 * arg1.length) + _533 + 256])]
                        require ext_code.size(address(stor8.field_0))
                        staticcall address(stor8.field_0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor8.field_0))
                        call address(stor8.field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 484 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 3, mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 484 len 96]
                        if ext_call.success:
                            require ext_code.size(stor7)
                            staticcall stor7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor6.length
                            require 1 < stor6.length
                            mem[0] = 6
                            if uint256(stor6.field_0) > uint256(stor6.field_256):
                                require 0 < arg1.length
                                require ext_code.size(mem[140 len 20])
                                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, uint256(stor3.field_0)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 292] = uint256(stor3.field_0)
                                mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 324] = 0
                                mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 388] = stor10
                                mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 420] = block.timestamp
                                mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 356] = 160
                                mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 452] = arg1.length
                                mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 484 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor3.field_0), 0, 160, stor10, block.timestamp, arg1.length, 0, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 484 len (32 * arg1.length) - floor32(arg1.length)]
                                if ext_call.success:
                                    mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _549) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 0, stor3.field_32) <= 4294967296
                                    require mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
                                    require mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 0, stor3.field_32) + 288] <= 4294967296 and mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 0, stor3.field_32) + (32 * mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * _549) + (32 * arg1.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 0, stor3.field_32) + 288]) + 32 <= return_data.size
                                    uint8(stor8.field_160) = 1
            else:
                mem[(32 * arg1.length) + 128] = 2
                mem[(32 * arg1.length) + 160 len 64] = call.data[calldata.size len 64]
                require 1 < arg1.length
                mem[(32 * arg1.length) + 160] = mem[172 len 20]
                require 0 < arg1.length
                mem[(32 * arg1.length) + 192] = mem[140 len 20]
                if arg1.length != 3:
                    require 0 < arg1.length
                    require 0 < stor6.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, uint256(stor6.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    mem[(32 * arg1.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + 228] = uint256(stor6.field_0)
                    mem[(32 * arg1.length) + 260] = 0
                    mem[(32 * arg1.length) + 324] = this.address
                    mem[(32 * arg1.length) + 356] = block.timestamp
                    mem[(32 * arg1.length) + 292] = 160
                    mem[(32 * arg1.length) + 388] = arg1.length
                    mem[(32 * arg1.length) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 420 len (32 * arg1.length) - floor32(arg1.length)]
                    if ext_call.success:
                        mem[(32 * arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _535 = mem[(32 * arg1.length) + 224 len 4], Mask(224, 0, stor6.field_32)
                        require mem[(32 * arg1.length) + 224 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[(32 * arg1.length) + 224 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 224 len 4], Mask(224, 0, stor6.field_32) + 224] <= 4294967296 and mem[(32 * arg1.length) + 224 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 224 len 4], Mask(224, 0, stor6.field_32) + 224]) + 32 <= return_data.size
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 224] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 224 len 4], Mask(224, 0, stor6.field_32) + 224]
                        _550 = mem[(32 * arg1.length) + _535 + 224]
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg1.length) + _535 + 224])] = mem[(32 * arg1.length) + _535 + 256 len floor32(mem[(32 * arg1.length) + _535 + 224])]
                        require ext_code.size(address(stor8.field_0))
                        staticcall address(stor8.field_0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor8.field_0))
                        call address(stor8.field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 452 len 64]
                        if ext_call.success:
                            require ext_code.size(stor7)
                            staticcall stor7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor6.length
                            require 1 < stor6.length
                            mem[0] = 6
                            if uint256(stor6.field_0) > uint256(stor6.field_256):
                                require 0 < arg1.length
                                require ext_code.size(mem[140 len 20])
                                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, uint256(stor3.field_0)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 260] = uint256(stor3.field_0)
                                mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 292] = 0
                                mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 356] = stor10
                                mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 388] = block.timestamp
                                mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 324] = 160
                                mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 420] = arg1.length
                                mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 452 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor3.field_0), 0, 160, stor10, block.timestamp, arg1.length, 0, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 452 len (32 * arg1.length) - floor32(arg1.length)]
                                if ext_call.success:
                                    mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _550) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 256
                                    require return_data.size >= 32
                                    require mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 0, stor3.field_32) <= 4294967296
                                    require mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
                                    require mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 0, stor3.field_32) + 256] <= 4294967296 and mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 0, stor3.field_32) + (32 * mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * _550) + (32 * arg1.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 0, stor3.field_32) + 256]) + 32 <= return_data.size
                                    uint8(stor8.field_160) = 1
                else:
                    require 2 < arg1.length
                    require 1 < arg1.length
                    require 0 < arg1.length
                    mem[(32 * arg1.length) + 320] = mem[140 len 20]
                    require 0 < arg1.length
                    require 0 < stor6.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, uint256(stor6.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor6.length
                    mem[(32 * arg1.length) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + 356] = uint256(stor6.field_0)
                    mem[(32 * arg1.length) + 388] = 0
                    mem[(32 * arg1.length) + 452] = this.address
                    mem[(32 * arg1.length) + 484] = block.timestamp
                    mem[(32 * arg1.length) + 420] = 160
                    mem[(32 * arg1.length) + 516] = arg1.length
                    mem[(32 * arg1.length) + 548 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 548 len (32 * arg1.length) - floor32(arg1.length)]
                    if ext_call.success:
                        mem[(32 * arg1.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 352
                        require return_data.size >= 32
                        _537 = mem[(32 * arg1.length) + 352 len 4], Mask(224, 0, stor6.field_32)
                        require mem[(32 * arg1.length) + 352 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
                        require mem[(32 * arg1.length) + 352 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
                        require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 352 len 4], Mask(224, 0, stor6.field_32) + 352] <= 4294967296 and mem[(32 * arg1.length) + 352 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 352 len 4], Mask(224, 0, stor6.field_32) + 352]) + 32 <= return_data.size
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 352] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 352 len 4], Mask(224, 0, stor6.field_32) + 352]
                        _551 = mem[(32 * arg1.length) + _537 + 352]
                        mem[(32 * arg1.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg1.length) + _537 + 352])] = mem[(32 * arg1.length) + _537 + 384 len floor32(mem[(32 * arg1.length) + _537 + 352])]
                        require ext_code.size(address(stor8.field_0))
                        staticcall address(stor8.field_0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor8.field_0))
                        call address(stor8.field_0).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 3, mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 580 len 96]
                        if ext_call.success:
                            require ext_code.size(stor7)
                            staticcall stor7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor6.length
                            require 1 < stor6.length
                            if uint256(stor6.field_0) > uint256(stor6.field_256):
                                require 0 < arg1.length
                                require ext_code.size(mem[140 len 20])
                                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args routerAddress, uint256(stor3.field_0)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 388] = uint256(stor3.field_0)
                                mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 420] = 0
                                mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 484] = stor10
                                mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 516] = block.timestamp
                                mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 452] = 160
                                mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 548] = arg1.length
                                mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 580 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(stor3.field_0), 0, 160, stor10, block.timestamp, arg1.length, 0, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 580 len (32 * arg1.length) - floor32(arg1.length)]
                                if ext_call.success:
                                    mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _551) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 384
                                    require return_data.size >= 32
                                    require mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor3.field_32) <= 4294967296
                                    require mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
                                    require mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor3.field_32) + 384] <= 4294967296 and mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor3.field_32) + (32 * mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * _551) + (32 * arg1.length) + ceil32(return_data.size) + 384 len 4], Mask(224, 0, stor3.field_32) + 384]) + 32 <= return_data.size
                                    uint8(stor8.field_160) = 1
    require ext_code.size(chiTokenAddress)
    staticcall chiTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(chiTokenAddress)
        call chiTokenAddress.freeUpTo(uint256 arg1) with:
             gas gas_remaining wei
            args ((16 * calldata.size) + 35154 / 41947)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    else:
        return 0
}



}
