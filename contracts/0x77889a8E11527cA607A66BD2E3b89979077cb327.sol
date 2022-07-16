contract main {




// =====================  Runtime code  =====================


#
#  - sub_04a2cc21(?)
#  - sub_62bfdf04(?)
#  - sub_dd8e5ec9(?)
#  - sub_e1333199(?)
#  - sub_f99c3ade(?)
#  - _fallback()
#
address owner;
address WETHAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address routerAddress;
mapping of uint8 stor3;
mapping of address token;

function getToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return token[address(arg1)]
}

function owner() {
    return owner
}

function sub_93b72f92(?) {
    return bool(uint8(stor2.field_160))
}

function WETH() {
    return WETHAddress
}

function getRouter() {
    return routerAddress
}

function sub_b8d10050(?) {
    return bool(uint8(stor2.field_160))
}

function tokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return token[arg1]
}

function sub_f881e1e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function router() {
    return routerAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c79b0757(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor3[address(arg1)] = 1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    routerAddress = arg1
    return 1
}

function setWETHAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    WETHAddress = arg1
    return 1
}

function sub_0c116660(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    Mask(96, 0, stor2.field_160) = Mask(96, 0, bool(arg1))
}

function addToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    token[address(arg1)] = arg2
}

function allowance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < -1:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_acef6e00(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_28d720a5(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    staticcall routerAddress.getReserves(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= arg4:
        if 100 < arg1:
            revert with 0, 17
        if -arg1 + 100 and arg4 > -1 / -arg1 + 100:
            revert with 0, 17
        if ext_call.return_data[0] >= (100 * arg4) - (arg1 * arg4) / 100:
            return 1
        else:
            return 0
    else:
        return 0
}

function sub_f7373463(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function emergencyWithdrawWETH() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'contract has an empty ETH balance'
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    return 1
}

function sub_c9914989(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not ('cd', 4).length:
        revert with 0, 'empty recipients'
    if cd[36] and ('cd', 4).length > -1 / cd[36]:
        revert with 0, 17
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[36] * ('cd', 4).length:
        revert with 0, 'sendGas: not enough WETH/WBNB in the contract'
    if cd[36] and ('cd', 4).length > -1 / cd[36]:
        revert with 0, 17
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args (cd[36] * ('cd', 4).length)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[36] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_c4c97fbb(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'n1'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    if not token[mem[(32 * ('cd', 4).length - 1) + 140 len 20]]:
        revert with 0, 'n2'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[(32 * ('cd', 4).length - 1) + 128] = token[mem[(32 * ('cd', 4).length - 1) + 140 len 20]]
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = cd[36]
    mem[ceil32(32 * ('cd', 4).length) + 133] = cd[68]
    mem[ceil32(32 * ('cd', 4).length) + 165] = 160
    mem[ceil32(32 * ('cd', 4).length) + 261] = ('cd', 4).length
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 293
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 197] = this.address
    mem[ceil32(32 * ('cd', 4).length) + 229] = cd[100]
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 293 len 32 * ('cd', 4).length]), address(this.address), cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 4).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 4).length) + return_data.size + 97 > ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128
    if mem[ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    require mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 32 <= return_data.size
}

function sub_cd9811b3(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 3
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'n1'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if cd[36]:
        mem[100] = routerAddress
        mem[132] = -1
        call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[36]
        mem[ceil32(return_data.size) + 132] = cd[68]
        mem[ceil32(return_data.size) + 164] = 160
        mem[ceil32(return_data.size) + 260] = ('cd', 4).length
        idx = 0
        s = ceil32(return_data.size) + 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 196] = this.address
        mem[ceil32(return_data.size) + 228] = cd[100]
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[68], Array(len=('cd', 4).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 4).length]), address(this.address), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 <= return_data.size
    else:
        mem[100] = this.address
        staticcall address(('cd', 4)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'n3'
        mem[ceil32(return_data.size) + 100] = routerAddress
        mem[ceil32(return_data.size) + 132] = -1
        call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = cd[68]
        mem[(2 * ceil32(return_data.size)) + 164] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 4).length
        idx = 0
        s = (2 * ceil32(return_data.size)) + 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        mem[(2 * ceil32(return_data.size)) + 228] = cd[100]
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], cd[68], Array(len=('cd', 4).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 4).length]), address(this.address), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
            revert with 0, 65
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
}

function sell(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if not arg5:
        mem[0] = msg.sender
        mem[32] = 3
        if bool(stor3[msg.sender]) != 1:
            revert with 0, 'not authorized bee'
        mem[100] = this.address
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sell: zero token'
        if arg3:
            if arg3 > ext_call.return_data[0]:
                revert with 0, 'sell: not enough token'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                    mem[(2 * ceil32(return_data.size)) + 228] = arg4
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _621 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _645 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _621 + (32 * _645) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _645)] = mem[(2 * ceil32(return_data.size)) + _621 + 224 len ceil32(32 * _645)]
                    if _645 < 1:
                        revert with 0, 17
                    if _645 - 1 >= _645:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _645 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = arg1
                        mem[(4 * ceil32(return_data.size)) + 160] = arg2
                        mem[(4 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3
                        mem[(4 * ceil32(return_data.size)) + 260] = arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _622 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _646 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _622 + (32 * _646) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _646)] = mem[(4 * ceil32(return_data.size)) + _622 + 256 len ceil32(32 * _646)]
                        if _646 < 1:
                            revert with 0, 17
                        if _646 - 1 >= _646:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _646 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = arg1
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _623 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _647 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _623 + (32 * _647) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _647)] = mem[(6 * ceil32(return_data.size)) + _623 + 256 len ceil32(32 * _647)]
                        if _647 < 1:
                            revert with 0, 17
                        if _647 - 1 >= _647:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _647 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == arg2:
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = arg1
                    mem[(4 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = arg4
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _624 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _648 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _648
                    require _624 + (32 * _648) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _648)] = mem[(4 * ceil32(return_data.size)) + _624 + 224 len ceil32(32 * _648)]
                    if _648 < 1:
                        revert with 0, 17
                    if _648 - 1 >= _648:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _648 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = arg1
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _625 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _649 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _625 + (32 * _649) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _649)] = mem[(6 * ceil32(return_data.size)) + _625 + 256 len ceil32(32 * _649)]
                        if _649 < 1:
                            revert with 0, 17
                        if _649 - 1 >= _649:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _649 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = arg1
                        mem[(7 * ceil32(return_data.size)) + 160] = arg2
                        mem[(7 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = arg3
                        mem[(7 * ceil32(return_data.size)) + 260] = arg4
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _626 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _650 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _626 + (32 * _650) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _650)] = mem[(7 * ceil32(return_data.size)) + _626 + 256 len ceil32(32 * _650)]
                        if _650 < 1:
                            revert with 0, 17
                        if _650 - 1 >= _650:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _650 - 1) + (8 * ceil32(return_data.size)) + 256]
        else:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'sell: not enough token'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = arg4
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _627 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _651 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _627 + (32 * _651) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _651)] = mem[(2 * ceil32(return_data.size)) + _627 + 224 len ceil32(32 * _651)]
                    if _651 < 1:
                        revert with 0, 17
                    if _651 - 1 >= _651:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _651 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = arg1
                        mem[(4 * ceil32(return_data.size)) + 160] = arg2
                        mem[(4 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 260] = arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _628 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _652 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _628 + (32 * _652) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _652)] = mem[(4 * ceil32(return_data.size)) + _628 + 256 len ceil32(32 * _652)]
                        if _652 < 1:
                            revert with 0, 17
                        if _652 - 1 >= _652:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _652 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = arg1
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _629 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _653 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _629 + (32 * _653) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _653)] = mem[(6 * ceil32(return_data.size)) + _629 + 256 len ceil32(32 * _653)]
                        if _653 < 1:
                            revert with 0, 17
                        if _653 - 1 >= _653:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _653 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == arg2:
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = arg1
                    mem[(4 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = arg4
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _630 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _654 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _654
                    require _630 + (32 * _654) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _654)] = mem[(4 * ceil32(return_data.size)) + _630 + 224 len ceil32(32 * _654)]
                    if _654 < 1:
                        revert with 0, 17
                    if _654 - 1 >= _654:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _654 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = arg1
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _631 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _655 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _631 + (32 * _655) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _655)] = mem[(6 * ceil32(return_data.size)) + _631 + 256 len ceil32(32 * _655)]
                        if _655 < 1:
                            revert with 0, 17
                        if _655 - 1 >= _655:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _655 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = arg1
                        mem[(7 * ceil32(return_data.size)) + 160] = arg2
                        mem[(7 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 260] = arg4
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _632 = mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _656 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _632 + (32 * _656) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _656)] = mem[(7 * ceil32(return_data.size)) + _632 + 256 len ceil32(32 * _656)]
                        if _656 < 1:
                            revert with 0, 17
                        if _656 - 1 >= _656:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _656 - 1) + (8 * ceil32(return_data.size)) + 256]
    else:
        if arg5 < block.timestamp:
            revert with 0, 'deadline EXPIRED'
        mem[0] = msg.sender
        mem[32] = 3
        if bool(stor3[msg.sender]) != 1:
            revert with 0, 'not authorized bee'
        mem[100] = this.address
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sell: zero token'
        if arg3:
            if arg3 > ext_call.return_data[0]:
                revert with 0, 'sell: not enough token'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                    mem[(2 * ceil32(return_data.size)) + 228] = arg4
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _633 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _657 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _633 + (32 * _657) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _657)] = mem[(2 * ceil32(return_data.size)) + _633 + 224 len ceil32(32 * _657)]
                    if _657 < 1:
                        revert with 0, 17
                    if _657 - 1 >= _657:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _657 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = arg1
                        mem[(4 * ceil32(return_data.size)) + 160] = arg2
                        mem[(4 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3
                        mem[(4 * ceil32(return_data.size)) + 260] = arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _634 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _658 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _634 + (32 * _658) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _658)] = mem[(4 * ceil32(return_data.size)) + _634 + 256 len ceil32(32 * _658)]
                        if _658 < 1:
                            revert with 0, 17
                        if _658 - 1 >= _658:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _658 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = arg1
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _635 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _659 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _635 + (32 * _659) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _659)] = mem[(6 * ceil32(return_data.size)) + _635 + 256 len ceil32(32 * _659)]
                        if _659 < 1:
                            revert with 0, 17
                        if _659 - 1 >= _659:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _659 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == arg2:
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = arg1
                    mem[(4 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = arg4
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _636 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _660 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _660
                    require _636 + (32 * _660) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _660)] = mem[(4 * ceil32(return_data.size)) + _636 + 224 len ceil32(32 * _660)]
                    if _660 < 1:
                        revert with 0, 17
                    if _660 - 1 >= _660:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _660 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = arg1
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _637 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _661 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _637 + (32 * _661) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _661)] = mem[(6 * ceil32(return_data.size)) + _637 + 256 len ceil32(32 * _661)]
                        if _661 < 1:
                            revert with 0, 17
                        if _661 - 1 >= _661:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _661 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = arg1
                        mem[(7 * ceil32(return_data.size)) + 160] = arg2
                        mem[(7 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = arg3
                        mem[(7 * ceil32(return_data.size)) + 260] = arg4
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _638 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _662 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _638 + (32 * _662) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _662)] = mem[(7 * ceil32(return_data.size)) + _638 + 256 len ceil32(32 * _662)]
                        if _662 < 1:
                            revert with 0, 17
                        if _662 - 1 >= _662:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _662 - 1) + (8 * ceil32(return_data.size)) + 256]
        else:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'sell: not enough token'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = arg4
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _639 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _663 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _639 + (32 * _663) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _663)] = mem[(2 * ceil32(return_data.size)) + _639 + 224 len ceil32(32 * _663)]
                    if _663 < 1:
                        revert with 0, 17
                    if _663 - 1 >= _663:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = arg1
                        mem[(4 * ceil32(return_data.size)) + 160] = arg2
                        mem[(4 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 260] = arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _640 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _664 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _640 + (32 * _664) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _664)] = mem[(4 * ceil32(return_data.size)) + _640 + 256 len ceil32(32 * _664)]
                        if _664 < 1:
                            revert with 0, 17
                        if _664 - 1 >= _664:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _664 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = arg1
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _641 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _665 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _641 + (32 * _665) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _665)] = mem[(6 * ceil32(return_data.size)) + _641 + 256 len ceil32(32 * _665)]
                        if _665 < 1:
                            revert with 0, 17
                        if _665 - 1 >= _665:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _665 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == arg2:
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = arg1
                    mem[(4 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = arg4
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _642 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _666 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _666
                    require _642 + (32 * _666) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _666)] = mem[(4 * ceil32(return_data.size)) + _642 + 224 len ceil32(32 * _666)]
                    if _666 < 1:
                        revert with 0, 17
                    if _666 - 1 >= _666:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _666 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = arg1
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _643 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _667 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _643 + (32 * _667) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _667)] = mem[(6 * ceil32(return_data.size)) + _643 + 256 len ceil32(32 * _667)]
                        if _667 < 1:
                            revert with 0, 17
                        if _667 - 1 >= _667:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _667 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = arg1
                        mem[(7 * ceil32(return_data.size)) + 160] = arg2
                        mem[(7 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 260] = arg4
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _644 = mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _668 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _644 + (32 * _668) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _668)] = mem[(7 * ceil32(return_data.size)) + _644 + 256 len ceil32(32 * _668)]
                        if _668 < 1:
                            revert with 0, 17
                        if _668 - 1 >= _668:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _668 - 1) + (8 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function buy(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if not arg5:
        mem[0] = msg.sender
        mem[32] = 3
        if bool(stor3[msg.sender]) != 1:
            revert with 0, 'not authorized bee'
        mem[100] = this.address
        staticcall WETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'buy: zero WETH/WBNB'
        if arg3:
            if ext_call.return_data[0] < arg3:
                revert with 0, 'buy: not enough WETH/WBNB'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall WETHAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 160] = arg1
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                    mem[(2 * ceil32(return_data.size)) + 228] = arg4
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _621 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _645 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _621 + (32 * _645) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _645)] = mem[(2 * ceil32(return_data.size)) + _621 + 224 len ceil32(32 * _645)]
                    if _645 < 1:
                        revert with 0, 17
                    if _645 - 1 >= _645:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _645 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 160] = arg2
                        mem[(4 * ceil32(return_data.size)) + 192] = arg1
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3
                        mem[(4 * ceil32(return_data.size)) + 260] = arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _622 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _646 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _622 + (32 * _646) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _646)] = mem[(4 * ceil32(return_data.size)) + _622 + 256 len ceil32(32 * _646)]
                        if _646 < 1:
                            revert with 0, 17
                        if _646 - 1 >= _646:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _646 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = arg1
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _623 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _647 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _623 + (32 * _647) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _647)] = mem[(6 * ceil32(return_data.size)) + _623 + 256 len ceil32(32 * _647)]
                        if _647 < 1:
                            revert with 0, 17
                        if _647 - 1 >= _647:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _647 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call WETHAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == arg2:
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 160] = arg1
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = arg4
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _624 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _648 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _648
                    require _624 + (32 * _648) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _648)] = mem[(4 * ceil32(return_data.size)) + _624 + 224 len ceil32(32 * _648)]
                    if _648 < 1:
                        revert with 0, 17
                    if _648 - 1 >= _648:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _648 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = arg1
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _625 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _649 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _625 + (32 * _649) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _649)] = mem[(6 * ceil32(return_data.size)) + _625 + 256 len ceil32(32 * _649)]
                        if _649 < 1:
                            revert with 0, 17
                        if _649 - 1 >= _649:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _649 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 160] = arg2
                        mem[(7 * ceil32(return_data.size)) + 192] = arg1
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = arg3
                        mem[(7 * ceil32(return_data.size)) + 260] = arg4
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _626 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _650 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _626 + (32 * _650) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _650)] = mem[(7 * ceil32(return_data.size)) + _626 + 256 len ceil32(32 * _650)]
                        if _650 < 1:
                            revert with 0, 17
                        if _650 - 1 >= _650:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _650 - 1) + (8 * ceil32(return_data.size)) + 256]
        else:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'buy: not enough WETH/WBNB'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall WETHAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 160] = arg1
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = arg4
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _627 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _651 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _627 + (32 * _651) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _651)] = mem[(2 * ceil32(return_data.size)) + _627 + 224 len ceil32(32 * _651)]
                    if _651 < 1:
                        revert with 0, 17
                    if _651 - 1 >= _651:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _651 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 160] = arg2
                        mem[(4 * ceil32(return_data.size)) + 192] = arg1
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 260] = arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _628 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _652 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _628 + (32 * _652) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _652)] = mem[(4 * ceil32(return_data.size)) + _628 + 256 len ceil32(32 * _652)]
                        if _652 < 1:
                            revert with 0, 17
                        if _652 - 1 >= _652:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _652 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = arg1
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _629 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _653 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _629 + (32 * _653) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _653)] = mem[(6 * ceil32(return_data.size)) + _629 + 256 len ceil32(32 * _653)]
                        if _653 < 1:
                            revert with 0, 17
                        if _653 - 1 >= _653:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _653 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call WETHAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == arg2:
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 160] = arg1
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = arg4
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _630 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _654 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _654
                    require _630 + (32 * _654) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _654)] = mem[(4 * ceil32(return_data.size)) + _630 + 224 len ceil32(32 * _654)]
                    if _654 < 1:
                        revert with 0, 17
                    if _654 - 1 >= _654:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _654 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = arg1
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _631 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _655 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _631 + (32 * _655) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _655)] = mem[(6 * ceil32(return_data.size)) + _631 + 256 len ceil32(32 * _655)]
                        if _655 < 1:
                            revert with 0, 17
                        if _655 - 1 >= _655:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _655 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 160] = arg2
                        mem[(7 * ceil32(return_data.size)) + 192] = arg1
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 260] = arg4
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _632 = mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _656 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _632 + (32 * _656) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _656)] = mem[(7 * ceil32(return_data.size)) + _632 + 256 len ceil32(32 * _656)]
                        if _656 < 1:
                            revert with 0, 17
                        if _656 - 1 >= _656:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _656 - 1) + (8 * ceil32(return_data.size)) + 256]
    else:
        if arg5 < block.timestamp:
            revert with 0, 'deadline EXPIRED'
        mem[0] = msg.sender
        mem[32] = 3
        if bool(stor3[msg.sender]) != 1:
            revert with 0, 'not authorized bee'
        mem[100] = this.address
        staticcall WETHAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'buy: zero WETH/WBNB'
        if arg3:
            if ext_call.return_data[0] < arg3:
                revert with 0, 'buy: not enough WETH/WBNB'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall WETHAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 160] = arg1
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                    mem[(2 * ceil32(return_data.size)) + 228] = arg4
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _633 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _657 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _633 + (32 * _657) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _657)] = mem[(2 * ceil32(return_data.size)) + _633 + 224 len ceil32(32 * _657)]
                    if _657 < 1:
                        revert with 0, 17
                    if _657 - 1 >= _657:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _657 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 160] = arg2
                        mem[(4 * ceil32(return_data.size)) + 192] = arg1
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3
                        mem[(4 * ceil32(return_data.size)) + 260] = arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _634 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _658 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _634 + (32 * _658) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _658)] = mem[(4 * ceil32(return_data.size)) + _634 + 256 len ceil32(32 * _658)]
                        if _658 < 1:
                            revert with 0, 17
                        if _658 - 1 >= _658:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _658 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = arg1
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _635 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _659 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _635 + (32 * _659) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _659)] = mem[(6 * ceil32(return_data.size)) + _635 + 256 len ceil32(32 * _659)]
                        if _659 < 1:
                            revert with 0, 17
                        if _659 - 1 >= _659:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _659 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call WETHAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == arg2:
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 160] = arg1
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = arg4
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _636 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _660 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _660
                    require _636 + (32 * _660) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _660)] = mem[(4 * ceil32(return_data.size)) + _636 + 224 len ceil32(32 * _660)]
                    if _660 < 1:
                        revert with 0, 17
                    if _660 - 1 >= _660:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _660 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = arg1
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _637 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _661 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _637 + (32 * _661) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _661)] = mem[(6 * ceil32(return_data.size)) + _637 + 256 len ceil32(32 * _661)]
                        if _661 < 1:
                            revert with 0, 17
                        if _661 - 1 >= _661:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _661 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 160] = arg2
                        mem[(7 * ceil32(return_data.size)) + 192] = arg1
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = arg3
                        mem[(7 * ceil32(return_data.size)) + 260] = arg4
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, arg4, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _638 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _662 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _638 + (32 * _662) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _662)] = mem[(7 * ceil32(return_data.size)) + _638 + 256 len ceil32(32 * _662)]
                        if _662 < 1:
                            revert with 0, 17
                        if _662 - 1 >= _662:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _662 - 1) + (8 * ceil32(return_data.size)) + 256]
        else:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'buy: not enough WETH/WBNB'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall WETHAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 160] = arg1
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = arg4
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _639 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _663 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _639 + (32 * _663) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _663)] = mem[(2 * ceil32(return_data.size)) + _639 + 224 len ceil32(32 * _663)]
                    if _663 < 1:
                        revert with 0, 17
                    if _663 - 1 >= _663:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 160] = arg2
                        mem[(4 * ceil32(return_data.size)) + 192] = arg1
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 260] = arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _640 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _664 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _640 + (32 * _664) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _664)] = mem[(4 * ceil32(return_data.size)) + _640 + 256 len ceil32(32 * _664)]
                        if _664 < 1:
                            revert with 0, 17
                        if _664 - 1 >= _664:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _664 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = arg1
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _641 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _665 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _641 + (32 * _665) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _665)] = mem[(6 * ceil32(return_data.size)) + _641 + 256 len ceil32(32 * _665)]
                        if _665 < 1:
                            revert with 0, 17
                        if _665 - 1 >= _665:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _665 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call WETHAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == arg2:
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 160] = arg1
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = arg4
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = arg5
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _642 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _666 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _666
                    require _642 + (32 * _666) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _666)] = mem[(4 * ceil32(return_data.size)) + _642 + 224 len ceil32(32 * _666)]
                    if _666 < 1:
                        revert with 0, 17
                    if _666 - 1 >= _666:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _666 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 192] = arg1
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = arg4
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _643 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _667 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _643 + (32 * _667) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _667)] = mem[(6 * ceil32(return_data.size)) + _643 + 256 len ceil32(32 * _667)]
                        if _667 < 1:
                            revert with 0, 17
                        if _667 - 1 >= _667:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _667 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call arg2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 160] = arg2
                        mem[(7 * ceil32(return_data.size)) + 192] = arg1
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 260] = arg4
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = arg5
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], arg4, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 420 len 96]), address(this.address), arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _644 = mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _668 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _644 + (32 * _668) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _668)] = mem[(7 * ceil32(return_data.size)) + _644 + 256 len ceil32(32 * _668)]
                        if _668 < 1:
                            revert with 0, 17
                        if _668 - 1 >= _668:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _668 - 1) + (8 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_d4e693bb(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(uint8(stor2.field_160)) != 1:
        revert with 0, 'unlocked'
    uint8(stor2.field_160) = 0
    if 120 > !block.timestamp:
        revert with 0, 17
    if not block.timestamp + 120:
        mem[0] = msg.sender
        mem[32] = 3
        if bool(stor3[msg.sender]) != 1:
            revert with 0, 'not authorized bee'
        mem[100] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sell: zero token'
        if arg3:
            if arg3 > ext_call.return_data[0]:
                revert with 0, 'sell: not enough token'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == address(arg2):
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _623 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _647 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _623 + (32 * _647) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _647)] = mem[(2 * ceil32(return_data.size)) + _623 + 224 len ceil32(32 * _647)]
                    if _647 < 1:
                        revert with 0, 17
                    if _647 - 1 >= _647:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _647 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(4 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp + 120, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _624 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _648 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _624 + (32 * _648) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _648)] = mem[(4 * ceil32(return_data.size)) + _624 + 256 len ceil32(32 * _648)]
                        if _648 < 1:
                            revert with 0, 17
                        if _648 - 1 >= _648:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _648 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp + 120, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _625 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _649 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _625 + (32 * _649) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _649)] = mem[(6 * ceil32(return_data.size)) + _625 + 256 len ceil32(32 * _649)]
                        if _649 < 1:
                            revert with 0, 17
                        if _649 - 1 >= _649:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _649 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == address(arg2):
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp + 120, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _626 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _650 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _650
                    require _626 + (32 * _650) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _650)] = mem[(4 * ceil32(return_data.size)) + _626 + 224 len ceil32(32 * _650)]
                    if _650 < 1:
                        revert with 0, 17
                    if _650 - 1 >= _650:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _650 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp + 120, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _627 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _651 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _627 + (32 * _651) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _651)] = mem[(6 * ceil32(return_data.size)) + _627 + 256 len ceil32(32 * _651)]
                        if _651 < 1:
                            revert with 0, 17
                        if _651 - 1 >= _651:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _651 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = arg3
                        mem[(7 * ceil32(return_data.size)) + 260] = 0
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp + 120, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _628 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _652 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _628 + (32 * _652) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _652)] = mem[(7 * ceil32(return_data.size)) + _628 + 256 len ceil32(32 * _652)]
                        if _652 < 1:
                            revert with 0, 17
                        if _652 - 1 >= _652:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _652 - 1) + (8 * ceil32(return_data.size)) + 256]
        else:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'sell: not enough token'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == address(arg2):
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _629 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _653 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _629 + (32 * _653) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _653)] = mem[(2 * ceil32(return_data.size)) + _629 + 224 len ceil32(32 * _653)]
                    if _653 < 1:
                        revert with 0, 17
                    if _653 - 1 >= _653:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _653 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(4 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _630 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _654 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _630 + (32 * _654) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _654)] = mem[(4 * ceil32(return_data.size)) + _630 + 256 len ceil32(32 * _654)]
                        if _654 < 1:
                            revert with 0, 17
                        if _654 - 1 >= _654:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _654 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _631 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _655 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _631 + (32 * _655) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _655)] = mem[(6 * ceil32(return_data.size)) + _631 + 256 len ceil32(32 * _655)]
                        if _655 < 1:
                            revert with 0, 17
                        if _655 - 1 >= _655:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _655 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == address(arg2):
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _632 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _656 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _656
                    require _632 + (32 * _656) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _656)] = mem[(4 * ceil32(return_data.size)) + _632 + 224 len ceil32(32 * _656)]
                    if _656 < 1:
                        revert with 0, 17
                    if _656 - 1 >= _656:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _656 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _633 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _657 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _633 + (32 * _657) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _657)] = mem[(6 * ceil32(return_data.size)) + _633 + 256 len ceil32(32 * _657)]
                        if _657 < 1:
                            revert with 0, 17
                        if _657 - 1 >= _657:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _657 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 260] = 0
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _634 = mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _658 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _634 + (32 * _658) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _658)] = mem[(7 * ceil32(return_data.size)) + _634 + 256 len ceil32(32 * _658)]
                        if _658 < 1:
                            revert with 0, 17
                        if _658 - 1 >= _658:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _658 - 1) + (8 * ceil32(return_data.size)) + 256]
    else:
        if block.timestamp + 120 < block.timestamp:
            revert with 0, 'deadline EXPIRED'
        mem[0] = msg.sender
        mem[32] = 3
        if bool(stor3[msg.sender]) != 1:
            revert with 0, 'not authorized bee'
        mem[100] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sell: zero token'
        if arg3:
            if arg3 > ext_call.return_data[0]:
                revert with 0, 'sell: not enough token'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == address(arg2):
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _635 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _659 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _635 + (32 * _659) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _659)] = mem[(2 * ceil32(return_data.size)) + _635 + 224 len ceil32(32 * _659)]
                    if _659 < 1:
                        revert with 0, 17
                    if _659 - 1 >= _659:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _659 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(4 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = arg3
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp + 120, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _636 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _660 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _636 + (32 * _660) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _660)] = mem[(4 * ceil32(return_data.size)) + _636 + 256 len ceil32(32 * _660)]
                        if _660 < 1:
                            revert with 0, 17
                        if _660 - 1 >= _660:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _660 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp + 120, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _637 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _661 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _637 + (32 * _661) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _661)] = mem[(6 * ceil32(return_data.size)) + _637 + 256 len ceil32(32 * _661)]
                        if _661 < 1:
                            revert with 0, 17
                        if _661 - 1 >= _661:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _661 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == address(arg2):
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp + 120, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _638 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _662 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _662
                    require _638 + (32 * _662) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _662)] = mem[(4 * ceil32(return_data.size)) + _638 + 224 len ceil32(32 * _662)]
                    if _662 < 1:
                        revert with 0, 17
                    if _662 - 1 >= _662:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _662 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp + 120, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _639 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _663 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _639 + (32 * _663) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _663)] = mem[(6 * ceil32(return_data.size)) + _639 + 256 len ceil32(32 * _663)]
                        if _663 < 1:
                            revert with 0, 17
                        if _663 - 1 >= _663:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _663 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = arg3
                        mem[(7 * ceil32(return_data.size)) + 260] = 0
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp + 120, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _640 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _664 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require _640 + (32 * _664) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _664)] = mem[(7 * ceil32(return_data.size)) + _640 + 256 len ceil32(32 * _664)]
                        if _664 < 1:
                            revert with 0, 17
                        if _664 - 1 >= _664:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _664 - 1) + (8 * ceil32(return_data.size)) + 256]
        else:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'sell: not enough token'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = routerAddress
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -1:
                if WETHAddress == address(arg2):
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _641 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _665 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _641 + (32 * _665) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _665)] = mem[(2 * ceil32(return_data.size)) + _641 + 224 len ceil32(32 * _665)]
                    if _665 < 1:
                        revert with 0, 17
                    if _665 - 1 >= _665:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _665 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(4 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 160
                        mem[(4 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _642 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + return_data.size + 224 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _666 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _642 + (32 * _666) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(32 * _666)] = mem[(4 * ceil32(return_data.size)) + _642 + 256 len ceil32(32 * _666)]
                        if _666 < 1:
                            revert with 0, 17
                        if _666 - 1 >= _666:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _666 - 1) + (6 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(4 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _643 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _667 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _643 + (32 * _667) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _667)] = mem[(6 * ceil32(return_data.size)) + _643 + 256 len ceil32(32 * _667)]
                        if _667 < 1:
                            revert with 0, 17
                        if _667 - 1 >= _667:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _667 - 1) + (7 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, -1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if WETHAddress == address(arg2):
                    mem[(4 * ceil32(return_data.size)) + 96] = 2
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 160] = WETHAddress
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 120
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _644 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _668 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _668
                    require _644 + (32 * _668) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _668)] = mem[(4 * ceil32(return_data.size)) + _644 + 224 len ceil32(32 * _668)]
                    if _668 < 1:
                        revert with 0, 17
                    if _668 - 1 >= _668:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _668 - 1) + (6 * ceil32(return_data.size)) + 224]
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    mem[(4 * ceil32(return_data.size)) + 132] = routerAddress
                    staticcall address(arg2).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, routerAddress
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _645 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _669 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _645 + (32 * _669) + 32 <= return_data.size
                        mem[(7 * ceil32(return_data.size)) + 256 len ceil32(32 * _669)] = mem[(6 * ceil32(return_data.size)) + _645 + 256 len ceil32(32 * _669)]
                        if _669 < 1:
                            revert with 0, 17
                        if _669 - 1 >= _669:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _669 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 160] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 192] = WETHAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 260] = 0
                        mem[(7 * ceil32(return_data.size)) + 292] = 160
                        mem[(7 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 324] = this.address
                        mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 120
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _646 = mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (7 * ceil32(return_data.size)) + return_data.size + 224 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
                        _670 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        require _646 + (32 * _670) + 32 <= return_data.size
                        mem[(8 * ceil32(return_data.size)) + 256 len ceil32(32 * _670)] = mem[(7 * ceil32(return_data.size)) + _646 + 256 len ceil32(32 * _670)]
                        if _670 < 1:
                            revert with 0, 17
                        if _670 - 1 >= _670:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _670 - 1) + (8 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}



}
