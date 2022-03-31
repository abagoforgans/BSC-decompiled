contract main {




// =====================  Runtime code  =====================


#
#  - withdrawToken(address arg1, uint256 arg2, address arg3)
#
address owner;
address routerAddress;
address WBNBAddress;
address sub_c8048a67Address;
uint32 stor4;
address busdAddress;
address sub_b9ec104bAddress;
address sub_bfb88a6fAddress;
address sub_d46abcb3Address;
mapping of uint8 stor8;
mapping of uint8 stor9;

function busd() {
    return address(busdAddress)
}

function sub_4a4873bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function owner() {
    return owner
}

function WBNB() {
    return WBNBAddress
}

function sub_b9ec104b(?) {
    return sub_b9ec104bAddress
}

function sub_be0300ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function sub_bfb88a6f(?) {
    return sub_bfb88a6fAddress
}

function sub_c8048a67(?) {
    return sub_c8048a67Address
}

function sub_d46abcb3(?) {
    return sub_d46abcb3Address
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function deposit() payable {
    emit Deposit(msg.value, msg.sender);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0206bbd5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_d46abcb3Address)
    call sub_d46abcb3Address.mint() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8bed0171(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_d46abcb3Address)
    call sub_d46abcb3Address.repayBorrow() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d6e6b98(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_d46abcb3Address)
    call sub_d46abcb3Address.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b544ef7d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_d46abcb3Address)
    call sub_d46abcb3Address.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function stake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_b9ec104bAddress)
    call sub_b9ec104bAddress.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unstake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_b9ec104bAddress)
    call sub_b9ec104bAddress.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2cbda860(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_d46abcb3Address)
    call sub_d46abcb3Address.redeemUnderlying(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3bbac3f2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(address(arg1))
    call address(arg1).mint(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9b4e935c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(address(arg1))
    call address(arg1).borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3d95b4aa(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(address(arg1))
    call address(arg1).repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function redeemToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(arg1)
    call arg1.redeem(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_edb8fc6f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(address(arg1))
    call address(arg1).redeemUnderlying(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Insufficient balance'
    if not stor9[address(arg2)]:
        revert with 0, 'Illegal receiver'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
    emit Withdrawal(arg1, arg2);
}

function approveSpender(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(routerAddress)
    call routerAddress.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
       value arg4 wei
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function sub_ef3194d1(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        idx = idx + 1
        continue 
}

function sub_d53fd18a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        idx = idx + 1
        continue 
}

function sub_55c9ac4f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[100] = 32
    mem[132] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 164
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_bfb88a6fAddress)
    call sub_bfb88a6fAddress.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[164 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _17 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], 0 + 127
    _18 = mem[mem[96 len 4], 0 + 96]
    require mem[mem[96 len 4], 0 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], 0 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], 0 + 96]) + 128 <= test266151307()
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    require return_data.size >= _17 + (32 * _18) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _18] = mem[_17 + 128 len 32 * _18]
    idx = 0
    while idx < _18:
        require idx < _18
        if mem[(32 * idx) + ceil32(return_data.size) + 128] != 0:
            revert with 0, 'token cream marketenter failed'
        idx = idx + 1
        continue 
}

function swapExactETHForTokens(uint256 arg1, uint256 arg2, address[] arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 128
    mem[228] = arg3.length
    idx = 0
    s = arg3 + 36
    t = 260
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[164] = this.address
    mem[196] = arg4
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg1 wei
         gas gas_remaining wei
        args arg2, Array(len=arg3.length, data=mem[260 len 32 * arg3.length]), address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32
}

function swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    mem[96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = 160
    mem[260] = arg3.length
    idx = 0
    s = arg3 + 36
    t = 292
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = this.address
    mem[228] = arg4
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=arg3.length, data=mem[292 len 32 * arg3.length]), address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32
}

function sub_202d2020(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
        if owner != msg.sender:
            if msg.sender != this.address:
                revert with 0, 'Ownable: caller is not the admin'
    mem[100] = cd[4]
    require ext_code.size(sub_d46abcb3Address)
    call sub_d46abcb3Address.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[68]
    mem[ceil32(return_data.size) + 132] = 128
    mem[ceil32(return_data.size) + 228] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 260
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[36] wei
         gas gas_remaining wei
        args cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 260 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32
}

function sub_f0433d60(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
        if owner != msg.sender:
            if msg.sender != this.address:
                revert with 0, 'Ownable: caller is not the admin'
    mem[100] = cd[4]
    require ext_code.size(sub_d46abcb3Address)
    call sub_d46abcb3Address.redeemUnderlying(uint256 rg1) with:
         gas gas_remaining wei
        args cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[68]
    mem[ceil32(return_data.size) + 132] = 128
    mem[ceil32(return_data.size) + 228] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 260
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[36] wei
         gas gas_remaining wei
        args cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 260 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32
}

function sub_1f318412(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
        if owner != msg.sender:
            if msg.sender != this.address:
                revert with 0, 'Ownable: caller is not the admin'
    mem[100] = cd[36]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).borrow(uint256 rg1) with:
         gas gas_remaining wei
        args cd[36]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[68]
    mem[ceil32(return_data.size) + 132] = cd[100]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = cd[164]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32
}

function sub_d69807a6(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
        if owner != msg.sender:
            if msg.sender != this.address:
                revert with 0, 'Ownable: caller is not the admin'
    mem[100] = cd[36]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).redeemUnderlying(uint256 rg1) with:
         gas gas_remaining wei
        args cd[36]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[68]
    mem[ceil32(return_data.size) + 132] = cd[100]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = cd[164]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 132).length]), address(this.address), cd[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32
}

function sub_b94fa1a8(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
        if owner != msg.sender:
            if msg.sender != this.address:
                revert with 0, 'Ownable: caller is not the admin'
    mem[132] = cd[4]
    mem[164] = 0
    mem[196] = 0
    mem[228] = this.address
    mem[260] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, uint32(stor4), cd[4], 0, 0, address(this.address), cd[132]
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[68]
    mem[ceil32(return_data.size) + 132] = 128
    mem[ceil32(return_data.size) + 228] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 260
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[36] wei
         gas gas_remaining wei
        args cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 260 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32
}

function sub_46f8f275(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
        if owner != msg.sender:
            if msg.sender != this.address:
                revert with 0, 'Ownable: caller is not the admin'
    mem[132] = cd[4]
    mem[164] = 0
    mem[196] = 0
    mem[228] = this.address
    mem[260] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, uint32(stor4), cd[4], 0, 0, address(this.address), cd[132]
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[36]
    mem[ceil32(return_data.size) + 132] = cd[68]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32
}

function sub_17e1f752(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
        if owner != msg.sender:
            if msg.sender != this.address:
                revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_b9ec104bAddress)
    call sub_b9ec104bAddress.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 2, cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    mem[132] = cd[4]
    mem[164] = 0
    mem[196] = 0
    mem[228] = this.address
    mem[260] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, uint32(stor4), cd[4], 0, 0, address(this.address), cd[132]
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[68]
    mem[ceil32(return_data.size) + 132] = 128
    mem[ceil32(return_data.size) + 228] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 260
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[36] wei
         gas gas_remaining wei
        args cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 260 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 127
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32
}

function sub_2c84956a(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
        if owner != msg.sender:
            if msg.sender != this.address:
                revert with 0, 'Ownable: caller is not the admin'
    require ext_code.size(sub_b9ec104bAddress)
    call sub_b9ec104bAddress.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 2, cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        if msg.sender != this.address:
            revert with 0, 'Ownable: caller is not the admin'
    mem[132] = cd[4]
    mem[164] = 0
    mem[196] = 0
    mem[228] = this.address
    mem[260] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, uint32(stor4), cd[4], 0, 0, address(this.address), cd[132]
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[36]
    mem[ceil32(return_data.size) + 132] = cd[68]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = cd[132]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32
}

function sub_210a7102(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 4).length + ('cd', 68).length + 1 <= test266151307()
    mem[96] = ('cd', 4).length + ('cd', 68).length + 1
    if not ('cd', 4).length + ('cd', 68).length + 1:
        require ext_code.size(sub_bfb88a6fAddress)
        staticcall sub_bfb88a6fAddress.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 4).length + ('cd', 68).length + 1) + ceil32(return_data.size) + 128
        require return_data.size >= 96
        require 0 < ('cd', 4).length + ('cd', 68).length + 1
        mem[mem[128] + 64] = ext_call.return_data[32]
        require 0 < ('cd', 4).length + ('cd', 68).length + 1
        mem[mem[128] + 96] = eth.balance(this.address)
        require ext_code.size(sub_d46abcb3Address)
        staticcall sub_d46abcb3Address.getCash() with:
                gas gas_remaining wei
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < ('cd', 4).length + ('cd', 68).length + 1
        mem[mem[128] + 128] = ext_call.return_data[0]
        require ext_code.size(sub_d46abcb3Address)
        staticcall sub_d46abcb3Address.getAccountSnapshot(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + (2 * ceil32(return_data.size)) + 128 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require 0 < ('cd', 4).length + ('cd', 68).length + 1
        require 0 < ('cd', 4).length + ('cd', 68).length + 1
        mem[mem[128] + 192] = ext_call.return_data[96]
        mem[mem[128] + 160] = ext_call.return_data[32]
        require ext_code.size(routerAddress)
        staticcall routerAddress.0xc45a0155 with:
                gas gas_remaining wei
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 4).length + ('cd', 68).length + 1) + (6 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = WBNBAddress
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)]), WBNBAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_228] == mem[_228 + 12 len 20]
            require ext_code.size(mem[_228 + 12 len 20])
            staticcall mem[_228 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _246 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _249 = mem[_246]
            require mem[_246] == mem[_246 + 18 len 14]
            require mem[_246 + 32] == mem[_246 + 50 len 14]
            require mem[_246 + 64] == mem[_246 + 92 len 4]
            require idx + 1 < mem[96]
            _268 = mem[(32 * idx + 1) + 128]
            require idx + 1 < mem[96]
            mem[mem[(32 * idx + 1) + 128] + 32] = mem[_246 + 50 len 14]
            mem[_268] = Mask(112, 0, _249)
            require idx + 1 < mem[96]
            mem[mem[(32 * idx + 1) + 128] + 64] = ext_call.return_data[32]
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx + 1 < mem[96]
            mem[mem[(32 * idx + 1) + 128] + 96] = mem[_284]
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _313 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx + 1 < mem[96]
            mem[mem[(32 * idx + 1) + 128] + 128] = mem[_313]
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAccountSnapshot(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _341 = mem[_339 + 32]
            require idx + 1 < mem[96]
            _345 = mem[(32 * idx + 1) + 128]
            require idx + 1 < mem[96]
            mem[mem[(32 * idx + 1) + 128] + 192] = mem[_339 + 96]
            mem[_345 + 160] = _341
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 68).length:
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 36] = WBNBAddress
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[68] + 36)]), WBNBAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_400] == mem[_400 + 12 len 20]
            require ext_code.size(mem[_400 + 12 len 20])
            staticcall mem[_400 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _412 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _414 = mem[_412]
            require mem[_412] == mem[_412 + 18 len 14]
            require mem[_412 + 32] == mem[_412 + 50 len 14]
            require mem[_412 + 64] == mem[_412 + 92 len 4]
            require idx + ('cd', 4).length + 1 < mem[96]
            _430 = mem[(32 * idx + ('cd', 4).length + 1) + 128]
            require idx + ('cd', 4).length + 1 < mem[96]
            mem[mem[(32 * idx + ('cd', 4).length + 1) + 128] + 32] = mem[_412 + 50 len 14]
            mem[_430] = Mask(112, 0, _414)
            require idx < ('cd', 68).length
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx + ('cd', 4).length + 1 < mem[96]
            mem[mem[(32 * idx + ('cd', 4).length + 1) + 128] + 96] = mem[_438]
            idx = idx + 1
            continue 
        _378 = mem[64]
        mem[mem[64]] = 32
        _379 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _379:
            _510 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_510 + 32]
            mem[t + 64] = mem[_510 + 64]
            mem[t + 96] = mem[_510 + 96]
            mem[t + 128] = mem[_510 + 128]
            mem[t + 160] = mem[_510 + 160]
            mem[t + 192] = mem[_510 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _378 + (224 * _379) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length + ('cd', 68).length + 1) + 352
    mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 128] = 0
    mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 160] = 0
    mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 192] = 0
    mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 224] = 0
    mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 256] = 0
    mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 288] = 0
    mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 320] = 0
    mem[var30001] = (32 * ('cd', 4).length + ('cd', 68).length + 1) + 128
    s = var30001
    idx = var30002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 128] = 0
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 160] = 0
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 192] = 0
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 224] = 0
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 256] = 0
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 288] = 0
        mem[(32 * ('cd', 4).length + ('cd', 68).length + 1) + 320] = 0
        mem[s + 32] = (32 * ('cd', 4).length + ('cd', 68).length + 1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    require ext_code.size(sub_bfb88a6fAddress)
    staticcall sub_bfb88a6fAddress.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _391 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _394 = mem[_391 + 32]
    require 0 < mem[96]
    mem[mem[128] + 64] = mem[_391 + 32]
    require 0 < mem[96]
    mem[mem[128] + 96] = eth.balance(this.address)
    require ext_code.size(sub_d46abcb3Address)
    staticcall sub_d46abcb3Address.getCash() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _405 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require 0 < mem[96]
    mem[mem[128] + 128] = mem[_405]
    require ext_code.size(sub_d46abcb3Address)
    staticcall sub_d46abcb3Address.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _415 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _417 = mem[_415 + 32]
    require 0 < mem[96]
    require 0 < mem[96]
    mem[mem[128] + 192] = mem[_415 + 96]
    mem[mem[128] + 160] = _417
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xc45a0155 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _428 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _432 = mem[_428]
    require mem[_428] == mem[_428 + 12 len 20]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = WBNBAddress
        require ext_code.size(address(_432))
        staticcall address(_432).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), WBNBAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _534 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_534] == mem[_534 + 12 len 20]
        require ext_code.size(mem[_534 + 12 len 20])
        staticcall mem[_534 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _542 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _544 = mem[_542]
        require mem[_542] == mem[_542 + 18 len 14]
        require mem[_542 + 32] == mem[_542 + 50 len 14]
        require mem[_542 + 64] == mem[_542 + 92 len 4]
        require idx + 1 < mem[96]
        _551 = mem[(32 * idx + 1) + 128]
        require idx + 1 < mem[96]
        mem[mem[(32 * idx + 1) + 128] + 32] = mem[_542 + 50 len 14]
        mem[_551] = Mask(112, 0, _544)
        require idx + 1 < mem[96]
        mem[mem[(32 * idx + 1) + 128] + 64] = _394
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _564 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx + 1 < mem[96]
        mem[mem[(32 * idx + 1) + 128] + 96] = mem[_564]
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getCash() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _574 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx + 1 < mem[96]
        mem[mem[(32 * idx + 1) + 128] + 128] = mem[_574]
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAccountSnapshot(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _580 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _582 = mem[_580 + 32]
        require idx + 1 < mem[96]
        _586 = mem[(32 * idx + 1) + 128]
        require idx + 1 < mem[96]
        mem[mem[(32 * idx + 1) + 128] + 192] = mem[_580 + 96]
        mem[_586 + 160] = _582
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 36] = WBNBAddress
        require ext_code.size(address(_432))
        staticcall address(_432).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[68] + 36)]), WBNBAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _602 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_602] == mem[_602 + 12 len 20]
        require ext_code.size(mem[_602 + 12 len 20])
        staticcall mem[_602 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _606 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _607 = mem[_606]
        require mem[_606] == mem[_606 + 18 len 14]
        require mem[_606 + 32] == mem[_606 + 50 len 14]
        require mem[_606 + 64] == mem[_606 + 92 len 4]
        require idx + ('cd', 4).length + 1 < mem[96]
        _611 = mem[(32 * idx + ('cd', 4).length + 1) + 128]
        require idx + ('cd', 4).length + 1 < mem[96]
        mem[mem[(32 * idx + ('cd', 4).length + 1) + 128] + 32] = mem[_606 + 50 len 14]
        mem[_611] = Mask(112, 0, _607)
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _616 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx + ('cd', 4).length + 1 < mem[96]
        mem[mem[(32 * idx + ('cd', 4).length + 1) + 128] + 96] = mem[_616]
        idx = idx + 1
        continue 
    _589 = mem[64]
    mem[mem[64]] = 32
    _590 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _590:
        _620 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_620 + 32]
        mem[t + 64] = mem[_620 + 64]
        mem[t + 96] = mem[_620 + 96]
        mem[t + 128] = mem[_620 + 128]
        mem[t + 160] = mem[_620 + 160]
        mem[t + 192] = mem[_620 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _589 + (224 * _590) + -mem[64] + 64
}



}
