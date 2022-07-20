contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address chiTokenAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;
address stor7;
uint8 stor8; offset 160
uint8 stor8; offset 168
uint8 stor8; offset 176
uint8 stor8; offset 184
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

function trigger() {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    uint8(stor8.field_160) = 1
}

function sub_378d77a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    stor10 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function mintGasToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(chiTokenAddress)
    call chiTokenAddress.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1ad0610b(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getConfiguration() {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    return stor7, 
           address(stor8.field_0),
           stor3,
           stor4,
           stor5,
           bool(uint8(stor8.field_168)),
           bool(uint8(stor8.field_160)),
           bool(uint8(stor8.field_176))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
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
        revert with 0, 'tOwnable: caller is not the owne'
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
        revert with 0, 'tOwnable: caller is not the owne'
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
        revert with 0, 'tOwnable: caller is not the owne'
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
        revert with 0, 'tOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function wrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrap() {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
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

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
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

function sub_5daab052(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
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
        revert with 0, 'tOwnable: caller is not the owne'
    stor7 = arg1
    stor3 = arg3
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
        revert with 0, 'tOwnable: caller is not the owne'
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
        revert with 0, 'tOwnable: caller is not the owne'
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
        _36 = mem[64]
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
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (32 * mem[96]) + _36 + -mem[64] + 192]
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

function sub_906503a1(?) {
    mem[0] = msg.sender
    mem[32] = 9
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 'Only Swaps'
    if uint8(stor8.field_184):
        revert with 0, 'Aborting'
    if uint8(stor8.field_176):
        if not uint8(stor8.field_168):
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x734e6f7420656e6f75676820746f6b656e496e20696e2074686520636f6e74726163,
                            mem[198 len 30]
            require ext_code.size(stor7)
            call stor7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[64] = 192
            mem[128] = stor7
            mem[160] = address(stor8.field_0)
            require stor4
            idx = 0
            while idx < stor4:
                _334 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor3 / stor4
                mem[mem[64] + 36] = stor5
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
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _334 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _602 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _606 = mem[_602]
                require mem[_602] <= 4294967296
                require mem[_602] + 32 <= return_data.size
                require mem[_602 + mem[_602]] <= 4294967296 and mem[_602] + (32 * mem[_602 + mem[_602]]) + 32 <= return_data.size
                mem[_602 + ceil32(return_data.size)] = mem[_602 + mem[_602]]
                _622 = mem[_602 + _606]
                s = 0
                while s < 32 * _622:
                    mem[s + _602 + ceil32(return_data.size) + 32] = mem[s + _602 + _606 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _622) + _602 + ceil32(return_data.size) + 32
                idx = idx + 1
                continue 
        else:
            uint8(stor8.field_184) = 1
            require stor6.length
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < uint256(stor6.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x734e6f7420656e6f75676820746f6b656e496e20696e2074686520636f6e74726163,
                            mem[198 len 30]
            require ext_code.size(stor7)
            call stor7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, uint256(stor6.field_0)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[128] = stor7
            mem[172 len 20] = address(stor8.field_0)
            mem[160 len 12] = 0
            mem[160 len 0] = 0
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require stor6.length
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = uint256(stor6.field_0)
            mem[228] = 0
            mem[292] = this.address
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _356 = mem[192 len 4], Mask(224, 0, stor6.field_32)
            require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
            require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
            _379 = mem[_356 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_356 + 192])] = mem[_356 + 224 len floor32(mem[_356 + 192])]
            require ext_code.size(address(stor8.field_0))
            staticcall address(stor8.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                uint8(stor8.field_184) = 1
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
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Check: No returned tokens'
            require ext_code.size(address(stor8.field_0))
            call address(stor8.field_0).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _379) + ceil32(return_data.size) + 224] = 2
            mem[(32 * _379) + ceil32(return_data.size) + 256] = address(stor8.field_0)
            mem[(32 * _379) + ceil32(return_data.size) + 288] = stor7
            mem[(32 * _379) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _379) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _379) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _379) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _379) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _379) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
            if uint256(stor6.field_0) <= uint256(stor6.field_256):
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
            uint256(stor8.field_0) = 0xffffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffff and uint256(stor8.field_0)
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor3:
                revert with 0, 'sNot enough tokenIn in the contracddres'
            require ext_code.size(stor7)
            call stor7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _379) + ceil32(return_data.size) + 320] = 2
            mem[64] = (32 * _379) + ceil32(return_data.size) + 416
            mem[(32 * _379) + ceil32(return_data.size) + 352] = stor7
            mem[(32 * _379) + ceil32(return_data.size) + 384] = address(stor8.field_0)
            require stor4
            idx = 0
            while idx < stor4:
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor3 / stor4
                mem[mem[64] + 36] = stor5
                mem[mem[64] + 100] = stor10
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[(32 * _379) + ceil32(return_data.size) + 320]
                _922 = mem[(32 * _379) + ceil32(return_data.size) + 320]
                s = 0
                while s < 32 * _922:
                    mem[s + mem[64] + 196] = mem[s + (32 * _379) + ceil32(return_data.size) + 352]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor3 / stor4, stor5, 160, stor10, block.timestamp, mem[mem[64] + 164 len (32 * _922) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _990 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _992 = mem[_990]
                require mem[_990] <= 4294967296
                require mem[_990] + 32 <= return_data.size
                require mem[_990 + mem[_990]] <= 4294967296 and mem[_990] + (32 * mem[_990 + mem[_990]]) + 32 <= return_data.size
                mem[_990 + ceil32(return_data.size)] = mem[_990 + mem[_990]]
                _998 = mem[_990 + _992]
                s = 0
                while s < 32 * _998:
                    mem[s + _990 + ceil32(return_data.size) + 32] = mem[s + _990 + _992 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _998) + _990 + ceil32(return_data.size) + 32
                idx = idx + 1
                continue 
    else:
        if uint8(stor8.field_160):
            revert with 0, 'Triggered'
        if not uint8(stor8.field_168):
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x734e6f7420656e6f75676820746f6b656e496e20696e2074686520636f6e74726163,
                            mem[198 len 30]
            require ext_code.size(stor7)
            call stor7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[64] = 192
            mem[128] = stor7
            mem[160] = address(stor8.field_0)
            require stor4
            idx = 0
            while idx < stor4:
                _339 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor3 / stor4
                mem[mem[64] + 36] = stor5
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
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _339 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _604 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _609 = mem[_604]
                require mem[_604] <= 4294967296
                require mem[_604] + 32 <= return_data.size
                require mem[_604 + mem[_604]] <= 4294967296 and mem[_604] + (32 * mem[_604 + mem[_604]]) + 32 <= return_data.size
                mem[_604 + ceil32(return_data.size)] = mem[_604 + mem[_604]]
                _623 = mem[_604 + _609]
                s = 0
                while s < 32 * _623:
                    mem[s + _604 + ceil32(return_data.size) + 32] = mem[s + _604 + _609 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _623) + _604 + ceil32(return_data.size) + 32
                idx = idx + 1
                continue 
        else:
            uint8(stor8.field_184) = 1
            require stor6.length
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < uint256(stor6.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x734e6f7420656e6f75676820746f6b656e496e20696e2074686520636f6e74726163,
                            mem[198 len 30]
            require ext_code.size(stor7)
            call stor7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, uint256(stor6.field_0)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 2
            mem[128] = stor7
            mem[172 len 20] = address(stor8.field_0)
            mem[160 len 12] = 0
            mem[160 len 0] = 0
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require stor6.length
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = uint256(stor6.field_0)
            mem[228] = 0
            mem[292] = this.address
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args uint256(stor6.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _360 = mem[192 len 4], Mask(224, 0, stor6.field_32)
            require mem[192 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
            require mem[192 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor6.field_32) + 192]
            _383 = mem[_360 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_360 + 192])] = mem[_360 + 224 len floor32(mem[_360 + 192])]
            require ext_code.size(address(stor8.field_0))
            staticcall address(stor8.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                uint8(stor8.field_184) = 1
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
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Check: No returned tokens'
            require ext_code.size(address(stor8.field_0))
            call address(stor8.field_0).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _383) + ceil32(return_data.size) + 224] = 2
            mem[(32 * _383) + ceil32(return_data.size) + 256] = address(stor8.field_0)
            mem[(32 * _383) + ceil32(return_data.size) + 288] = stor7
            mem[(32 * _383) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _383) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _383) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _383) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _383) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _383) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
            if uint256(stor6.field_0) <= uint256(stor6.field_256):
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
            uint256(stor8.field_0) = 0xffffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffffff and uint256(stor8.field_0)
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor3:
                revert with 0, 'sNot enough tokenIn in the contracddres'
            require ext_code.size(stor7)
            call stor7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _383) + ceil32(return_data.size) + 320] = 2
            mem[64] = (32 * _383) + ceil32(return_data.size) + 416
            mem[(32 * _383) + ceil32(return_data.size) + 352] = stor7
            mem[(32 * _383) + ceil32(return_data.size) + 384] = address(stor8.field_0)
            require stor4
            idx = 0
            while idx < stor4:
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor3 / stor4
                mem[mem[64] + 36] = stor5
                mem[mem[64] + 100] = stor10
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[(32 * _383) + ceil32(return_data.size) + 320]
                _925 = mem[(32 * _383) + ceil32(return_data.size) + 320]
                s = 0
                while s < 32 * _925:
                    mem[s + mem[64] + 196] = mem[s + (32 * _383) + ceil32(return_data.size) + 352]
                    s = s + 32
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor3 / stor4, stor5, 160, stor10, block.timestamp, mem[mem[64] + 164 len (32 * _925) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _991 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _994 = mem[_991]
                require mem[_991] <= 4294967296
                require mem[_991] + 32 <= return_data.size
                require mem[_991 + mem[_991]] <= 4294967296 and mem[_991] + (32 * mem[_991 + mem[_991]]) + 32 <= return_data.size
                mem[_991 + ceil32(return_data.size)] = mem[_991 + mem[_991]]
                _999 = mem[_991 + _994]
                s = 0
                while s < 32 * _999:
                    mem[s + _991 + ceil32(return_data.size) + 32] = mem[s + _991 + _994 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _999) + _991 + ceil32(return_data.size) + 32
                idx = idx + 1
                continue 
    if not uint8(stor8.field_176):
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
    return 1
}



}
