contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor101;
address stor102;
address stor103;
address stor104;
address stor105;
address stor106;
uint256 sub_01e66edb;
address stor108;

function sub_01e66edb(?) {
    return sub_01e66edb
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function sub_011fa3cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor108 = address(arg1)
}

function reserveAssetBalance() {
    require ext_code.size(stor106)
    staticcall stor106.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setup(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor103 = arg1
    stor104 = arg2
    stor105 = arg3
    stor106 = arg4
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function transferAsset(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    require ext_code.size(stor104)
    call stor104.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function unstakeAllReserveAsset() {
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    require ext_code.size(stor106)
    staticcall stor106.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor105)
    call stor105.leaveStaking(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_01e66edb = 0
}

function startStaking() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor104)
    call stor104.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor105, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor105)
    call stor105.enterStaking(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function resetLiquidity() {
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    require ext_code.size(stor103)
    staticcall stor103.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor103)
    call stor103.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor101, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor101)
    call stor101.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args stor103, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}

function unstakeReserveAsset(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor105)
    call stor105.leaveStaking(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 < arg1:
        revert with 0, 17
    if sub_01e66edb > !-arg1:
        revert with 0, 17
    sub_01e66edb -= arg1
    if -arg1:
        if -arg1 > 0x8bcf64e5ec10ee1d37d7960cd589c31b2b8ddbaea04a462d9a2568fe7f85a:
            revert with 0, 17
        require ext_code.size(stor104)
        call stor104.0xa9059cbb with:
             gas gas_remaining wei
            args stor108, -7500 * arg1 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor108)
        call stor108.addRewards(uint256 arg1) with:
             gas gas_remaining wei
            args (-7500 * arg1 / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function removeLiquidity() {
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    require ext_code.size(stor101)
    staticcall stor101.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor102)
    staticcall stor102.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor103, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor101, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor101)
    call stor101.removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor103, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function buyReserveAsset(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    mem[100] = stor101
    mem[132] = arg1
    require ext_code.size(stor103)
    call stor103.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor101, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = stor103
    require ext_code.size(stor101)
    staticcall stor101.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = stor104
    mem[(2 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg1
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = (2 * ceil32(return_data.size)) + 420
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = this.address
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
    require ext_code.size(stor101)
    call stor101.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0xfe8be007: 0, msg.sender
        stor101 = arg1
        stor102 = arg2
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0xfe8be007: 0, msg.sender
            stor101 = arg1
            stor102 = arg2
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0xfe8be007: 0, msg.sender
                stor101 = arg1
                stor102 = arg2
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0xfe8be007: 0, msg.sender
                    stor101 = arg1
                    stor102 = arg2
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0xfe8be007: 0, msg.sender
                        stor101 = arg1
                        stor102 = arg2
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0xfe8be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stor101 = arg1
                        stor102 = arg2
                        uint8(stor0.field_8) = 0
}

function addLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    if arg1 < arg1 / 2:
        revert with 0, 17
    mem[100] = stor101
    mem[132] = arg1 / 2
    require ext_code.size(stor103)
    call stor103.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor101, arg1 / 2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor103
    require ext_code.size(stor101)
    staticcall stor101.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg1 / 2
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 388
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(stor101)
    call stor101.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    mem[mem[64] + 4] = stor101
    mem[mem[64] + 36] = arg1 - (arg1 / 2)
    require ext_code.size(stor103)
    call stor103.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor101, arg1 - (arg1 / 2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _34 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_34] == bool(mem[_34])
    require ext_code.size(stor101)
    call stor101.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args stor103, arg1 - (arg1 / 2), 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return 1
}

function buyReserveAsset2(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = stor101
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(stor103)
    call stor103.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor101, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = stor103
    require ext_code.size(stor101)
    staticcall stor101.WETH() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = stor104
    mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 228] = arg1
    idx = 0
    s = (4 * ceil32(return_data.size)) + 420
    t = (2 * ceil32(return_data.size)) + 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor101)
    call stor101.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor104)
    call stor104.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor105, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor105)
    call stor105.enterStaking(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_01e66edb > !ext_call.return_data[0]:
        revert with 0, 17
    sub_01e66edb += ext_call.return_data[0]
    if ext_call.return_data[0]:
        if ext_call.return_data[0] > 0x8bcf64e5ec10ee1d37d7960cd589c31b2b8ddbaea04a462d9a2568fe7f85a:
            revert with 0, 17
        require ext_code.size(stor104)
        call stor104.0xa9059cbb with:
             gas gas_remaining wei
            args stor108, 7500 * ext_call.return_data[0] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor108)
        call stor108.addRewards(uint256 arg1) with:
             gas gas_remaining wei
            args (7500 * ext_call.return_data[0] / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_148112d1(?) {
    require calldata.size - 4 >= 64
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the base token contract'
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = stor101
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(stor103)
    call stor103.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor101, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = stor103
    require ext_code.size(stor101)
    staticcall stor101.WETH() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = stor104
    mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 228] = arg1
    idx = 0
    s = (4 * ceil32(return_data.size)) + 420
    t = (2 * ceil32(return_data.size)) + 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor101)
    call stor101.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > 0:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            require ext_code.size(stor104)
            call stor104.0xa9059cbb with:
                 gas gas_remaining wei
                args 0xde8d23bff4f8bebe690d187cb6e76597b3b5956a, (ext_call.return_data[0] * arg2) - (ext_call.return_data[0] * arg2) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor104)
    call stor104.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor105, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor105)
    call stor105.enterStaking(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor104)
    staticcall stor104.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_01e66edb > !ext_call.return_data[0]:
        revert with 0, 17
    sub_01e66edb += ext_call.return_data[0]
    if ext_call.return_data[0]:
        if ext_call.return_data[0] > 0x8bcf64e5ec10ee1d37d7960cd589c31b2b8ddbaea04a462d9a2568fe7f85a:
            revert with 0, 17
        require ext_code.size(stor104)
        call stor104.0xa9059cbb with:
             gas gas_remaining wei
            args stor108, 7500 * ext_call.return_data[0] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor108)
        call stor108.addRewards(uint256 arg1) with:
             gas gas_remaining wei
            args (7500 * ext_call.return_data[0] / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
