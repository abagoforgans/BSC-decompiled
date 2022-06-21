contract main {




// =====================  Runtime code  =====================


address owner;
address administratorAddress;
address sandwichRouterAddress;
uint256 stor3; offset 32
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
mapping of uint8 stor7;

function getAdministrator() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return administratorAddress
}

function getSandwichRouter() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sandwichRouterAddress
}

function owner() {
    return owner
}

function authenticatedSeller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function authenticateSeller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
}

function getSnipeConfiguration() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return address(stor6.field_0), uint256(stor3.field_0), stor5, stor4, bool(uint8(stor6.field_160))
}

function setSandwichRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sandwichRouterAddress = arg1
    return 1
}

function setAdministrator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    administratorAddress = arg1
    stor7[address(arg1)] = 1
    return 1
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

function configureSnipe(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor6.field_0) = arg1
    uint256(stor3.field_0) = arg2
    stor5 = arg3
    stor4 = arg4
    Mask(96, 0, stor6.field_160) = 0
    return 1
}

function sub_bfa1dde0(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'contract has an empty BNB balance'
    call administratorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_dc7a70ca(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args administratorAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_f9dec3ef(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[0] = msg.sender
    mem[32] = 7
    if bool(stor7[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'out: must be called by authenticated seller'
    mem[100] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 0:
        revert with 0, 'out: empty balance for this token'
    mem[ceil32(return_data.size) + 100] = sandwichRouterAddress
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sandwichRouterAddress, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = arg2
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
    call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _31 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _32 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _31 + 224
    s = (4 * ceil32(return_data.size)) + 224
    while idx < (2 * ceil32(return_data.size)) + _31 + (32 * _32) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    return 1
}

function snipeListing() {
    mem[100] = this.address
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < uint256(stor3.field_0):
        revert with 0, 'snipe: not enough wbnb on the contract'
    mem[ceil32(return_data.size) + 100] = sandwichRouterAddress
    mem[ceil32(return_data.size) + 132] = uint256(stor3.field_0)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sandwichRouterAddress, uint256(stor3.field_0)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint8(stor6.field_160):
        revert with 0, 'snipe: sniping is locked. See configure'
    Mask(96, 0, stor6.field_160) = 1
    mem[(2 * ceil32(return_data.size)) + 128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    if address(stor6.field_0) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        mem[(2 * ceil32(return_data.size)) + 160] = stor5
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = uint256(stor3.field_0)
        mem[(2 * ceil32(return_data.size)) + 228] = stor4
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
        call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor3.field_0), stor4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), administratorAddress, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _48 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32)
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _50 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 0, stor3.field_32) + 192]
        require _48 + (32 * _50) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _48 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _48 + (32 * _50) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 160] = address(stor6.field_0)
        mem[(2 * ceil32(return_data.size)) + 192] = stor5
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 224] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = uint256(stor3.field_0)
        mem[(2 * ceil32(return_data.size)) + 260] = stor4
        mem[(2 * ceil32(return_data.size)) + 292] = 160
        mem[(2 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 324] = administratorAddress
        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 120
        call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args uint256(stor3.field_0), stor4, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), administratorAddress, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _49 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32)
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _51 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 0, stor3.field_32) + 224]
        require _49 + (32 * _51) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _49 + 256
        s = (4 * ceil32(return_data.size)) + 256
        while idx < (2 * ceil32(return_data.size)) + _49 + (32 * _51) + 256:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    return 1
}

function sub_194bdfec(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if msg.sender == administratorAddress:
        mem[100] = this.address
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg2:
            revert with 0, 'in: not enough wbnb on the contract'
        mem[ceil32(return_data.size) + 100] = sandwichRouterAddress
        mem[ceil32(return_data.size) + 132] = arg2
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sandwichRouterAddress, arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg2
        mem[(2 * ceil32(return_data.size)) + 228] = arg3
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
        call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _57 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _59 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require _57 + (32 * _59) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _57 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _57 + (32 * _59) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'in: must be called by admin or owner'
        mem[100] = this.address
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg2:
            revert with 0, 'in: not enough wbnb on the contract'
        mem[ceil32(return_data.size) + 100] = sandwichRouterAddress
        mem[ceil32(return_data.size) + 132] = arg2
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sandwichRouterAddress, arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x5aeca58700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg2
        mem[(2 * ceil32(return_data.size)) + 228] = arg3
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
        call sandwichRouterAddress.sandwichExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _58 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _60 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require _58 + (32 * _60) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _58 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _58 + (32 * _60) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    return 1
}



}
