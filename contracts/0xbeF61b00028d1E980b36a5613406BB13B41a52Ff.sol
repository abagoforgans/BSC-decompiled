contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
uint32 stor4; offset 160

function owner() {
    return owner
}

function isMember(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_c4abb882(?) {
    require calldata.size - 4 >= 32
    if not stor1[tx.origin]:
        revert with 0, 'error:R'
    stor4 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        revert with 0, 'Address is member already.'
    stor1[address(arg1)] = 1
    emit MemberAdded(arg1);
}

function removeMember(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        revert with 0, 'Not member of whitelist.'
    stor1[address(arg1)] = 0
    emit MemberRemoved(arg1);
}

function sub_e1ae4379(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_305aa997(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function sub_6b6b9ff4(?) {
    require calldata.size - 4 >= 96
    if not stor1[tx.origin]:
        revert with 0, 'error:R'
    if arg3 != 65349:
        if arg3 != block.number:
            revert with 0, 'error:b'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = arg2
    mem[292] = this.address
    mem[324] = block.timestamp + (24 * 3600)
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + (24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
}

function sub_329ae9f1(?) {
    require calldata.size - 4 >= 192
    if not stor1[address(msg.sender)]:
        revert with 0, 'error:R'
    if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if eth.balance(arg5) < arg3:
            revert with 0, 'FROM ADDRESS BALANCE NOT GOU111!'
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'FROM ADDRESS BALANCE NOT GOU!'
    mem[160] = arg1
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = arg6
    mem[292] = this.address
    mem[324] = block.timestamp + (24 * 3600)
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, arg6, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + (24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 <= return_data.size
}

function sub_6e503616(?) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, 'error:R'
    if not arg2:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + (24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
    else:
        if block.number == arg2:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            call stor3.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args 0, 0, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + (24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
}

function sub_9fd823b2(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        continue 
    _115 = mem[168]
    if mem[232] != 65484:
        if eth.balance(mem[136]) == mem[232]:
            revert with 0, 'error:m-e'
    mem[0] = tx.origin
    mem[32] = 1
    if not stor1[tx.origin]:
        revert with 0, 'error:R'
    if mem[200] != 65349:
        if mem[200] != block.number:
            revert with 0, 'error:b'
    require ext_code.size(mem[128 len 20])
    staticcall mem[128 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < 0, 2
    mem[ceil32(arg1.length) + 160] = mem[128 len 20]
    require 1 < 0, 2
    mem[ceil32(arg1.length) + 192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    require ext_code.size(mem[128 len 20])
    call mem[128 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 228] = ext_call.return_data[0]
    mem[ceil32(arg1.length) + 260] = _115
    mem[ceil32(arg1.length) + 324] = this.address
    mem[ceil32(arg1.length) + 356] = block.timestamp + (24 * 3600)
    mem[ceil32(arg1.length) + 292] = 160
    mem[ceil32(arg1.length) + 388] = 0, 2
    mem[ceil32(arg1.length) + 420 len floor32(0, 2)] = mem[ceil32(arg1.length) + 160 len floor32(0, 2)]
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 228 len (32 * 0, 2) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[ceil32(arg1.length) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[ceil32(arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[ceil32(arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(arg1.length) + 224] <= 4294967296 and mem[ceil32(arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(arg1.length) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(arg1.length) + 224]) + 32 <= return_data.size
}

function sub_fe1da535(?) {
    require calldata.size - 4 >= 224
    if not stor1[tx.origin]:
        revert with 0, 'error:R'
    if arg3 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if eth.balance(arg6) < arg4:
            revert with 0, 'FROM ADDRESS BALANCE NOT GOU111!'
    else:
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, 'FROM ADDRESS BALANCE NOT GOU!'
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    if ext_call.return_data[12 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        staticcall stor3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg5, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        staticcall stor3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg5, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg7:
        emit 0xb8b9d6ca: ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, arg7, ext_call.return_data[0]
    else:
        mem[160] = arg2
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg5
        mem[228] = arg7
        mem[292] = this.address
        mem[324] = block.timestamp + (24 * 3600)
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg5, arg7, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + (24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 <= return_data.size
}

function sub_0661697b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[0] = tx.origin
    mem[32] = 1
    if not stor1[tx.origin]:
        revert with 0, 'error:R'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        continue 
    _257 = mem[136]
    _259 = mem[188]
    _260 = mem[220]
    if mem[284] != 65484:
        if eth.balance(mem[156]) == mem[284]:
            revert with 0, 'error:m-e'
    if mem[252] != 65331:
        if mem[252] != block.number:
            revert with 0, 'error:b'
    require ext_code.size(mem[128 len 20])
    staticcall mem[128 len 20].getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(mem[128 len 20])
    staticcall mem[128 len 20].token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    if ext_call.return_data[12 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        staticcall stor3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args mem[188], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        staticcall stor3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args mem[188], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < mem[220]:
        revert with 0, 'error:o'
    require 0 < 0, 2
    mem[ceil32(arg1.length) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    require 1 < 0, 2
    mem[ceil32(arg1.length) + 192] = address(_257)
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, _259
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 228] = _259
    mem[ceil32(arg1.length) + 260] = _260
    mem[ceil32(arg1.length) + 324] = this.address
    mem[ceil32(arg1.length) + 356] = block.timestamp + (24 * 3600)
    mem[ceil32(arg1.length) + 292] = 160
    mem[ceil32(arg1.length) + 388] = 0, 2
    mem[ceil32(arg1.length) + 420 len floor32(0, 2)] = mem[ceil32(arg1.length) + 160 len floor32(0, 2)]
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 228 len (32 * 0, 2) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[ceil32(arg1.length) + 224 len 4], Mask(224, 32, _259) >> 32 <= 4294967296
    require mem[ceil32(arg1.length) + 224 len 4], Mask(224, 32, _259) >> 32 + 32 <= return_data.size
    require mem[mem[ceil32(arg1.length) + 224 len 4], Mask(224, 32, _259) >> 32 + ceil32(arg1.length) + 224] <= 4294967296 and mem[ceil32(arg1.length) + 224 len 4], Mask(224, 32, _259) >> 32 + (32 * mem[mem[ceil32(arg1.length) + 224 len 4], Mask(224, 32, _259) >> 32 + ceil32(arg1.length) + 224]) + 32 <= return_data.size
}

function sub_c0fc59c3(?) {
    require calldata.size - 4 >= 192
    mem[0] = tx.origin
    mem[32] = 1
    if not stor1[tx.origin]:
        revert with 0, 'error:R'
    if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        if eth.balance(arg5) < arg3:
            revert with 0, 'FROM ADDRESS BALANCE NOT GOU111!'
        mem[96] = 2
        mem[160] = arg1
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg4
        mem[228] = arg6
        mem[292] = this.address
        mem[324] = block.timestamp + (24 * 3600)
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg6, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + (24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _106 = mem[192 len 4], Mask(224, 32, arg4) >> 32
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        _111 = mem[_106 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_106 + 192])] = mem[_106 + 224 len floor32(mem[_106 + 192])]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = arg1
        mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _111) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _111) + ceil32(return_data.size) + 228] = 0
        mem[(32 * _111) + ceil32(return_data.size) + 260] = 0
        mem[(32 * _111) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _111) + ceil32(return_data.size) + 356] = block.timestamp + (24 * 3600)
        mem[(32 * _111) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _111) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _111) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(this.address), block.timestamp + (24 * 3600), 2, mem[(32 * _111) + ceil32(return_data.size) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _111) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _111) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(32 * _111) + ceil32(return_data.size) + 224 len 4], 0 <= 4294967296
        require mem[(32 * _111) + ceil32(return_data.size) + 224 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _111) + ceil32(return_data.size) + 224 len 4], 0 + (32 * _111) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _111) + ceil32(return_data.size) + 224 len 4], 0 + (32 * mem[mem[(32 * _111) + ceil32(return_data.size) + 224 len 4], 0 + (32 * _111) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 'FROM ADDRESS BALANCE NOT GOU!'
        mem[160] = arg1
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg4
        mem[228] = arg6
        mem[292] = this.address
        mem[324] = block.timestamp + (24 * 3600)
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg6, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + (24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _104 = mem[192 len 4], Mask(224, 32, arg4) >> 32
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        _110 = mem[_104 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_104 + 192])] = mem[_104 + 224 len floor32(mem[_104 + 192])]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _110) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _110) + ceil32(return_data.size) + 228] = 0
        mem[(32 * _110) + ceil32(return_data.size) + 260] = 0
        mem[(32 * _110) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _110) + ceil32(return_data.size) + 356] = block.timestamp + (24 * 3600)
        mem[(32 * _110) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _110) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _110) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(this.address), block.timestamp + (24 * 3600), 2, mem[(32 * _110) + ceil32(return_data.size) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _110) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _110) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(32 * _110) + ceil32(return_data.size) + 224 len 4], 0 <= 4294967296
        require mem[(32 * _110) + ceil32(return_data.size) + 224 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _110) + ceil32(return_data.size) + 224 len 4], 0 + (32 * _110) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _110) + ceil32(return_data.size) + 224 len 4], 0 + (32 * mem[mem[(32 * _110) + ceil32(return_data.size) + 224 len 4], 0 + (32 * _110) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}



}
