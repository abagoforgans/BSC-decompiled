contract main {




// =====================  Runtime code  =====================


#
#  - sub_0e55aafb(?)
#
const sub_a91feed0(?) = eth.balance(this.address)


address owner;
address pancakeRouterAddress;
address sushiRouterAddress;
address stor3;

function sushiRouter() {
    return sushiRouterAddress
}

function owner() {
    return owner
}

function pancakeRouter() {
    return pancakeRouterAddress
}

function _fallback() payable {
    emit MoneyReceived(msg.sender, msg.value);
}

function renounceOwnership() {
    revert with 0, 'This functionallity is disabled'
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7454c15(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x394f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_63b20102(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 0 < arg3.length
    if not mem[140 len 20]:
        revert with 0, 'Invalid _path'
    require 1 < arg3.length
    if not mem[172 len 20]:
        revert with 0, 'Invalid _path'
    if arg2 <= 0:
        revert with 0, 
                    32,
                    39,
                    0x735f6d696e416d6f756e744f7574206d757374206265206120706f736974697665206e756d6265,
                    mem[(32 * arg3.length) + 235 len 25]
    if arg5 <= 0:
        revert with 0, 32, 34, 0xfe5f536c697070616765206d757374206265206265747765656e203120616e642039, mem[(32 * arg3.length) + 230 len 30]
    if arg5 >= 100:
        revert with 0, 32, 34, 0xfe5f536c697070616765206d757374206265206265747765656e203120616e642039, mem[(32 * arg3.length) + 230 len 30]
    require arg4 <= 1
    if not arg4:
        mem[(32 * arg3.length) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + 132] = arg2
        mem[(32 * arg3.length) + 228] = block.timestamp
        mem[(32 * arg3.length) + 164] = 128
        mem[(32 * arg3.length) + 260] = arg3.length
        mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(pancakeRouterAddress)
        call pancakeRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg1 wei
             gas gas_remaining wei
            args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 1 < arg3.length
        require ext_code.size(mem[172 len 20])
        staticcall mem[172 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sushiRouterAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Approval failed'
        mem[(32 * arg3.length) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + 132] = ext_call.return_data[0]
        mem[(32 * arg3.length) + 164] = 64
        mem[(32 * arg3.length) + 196] = arg3.length
        mem[(32 * arg3.length) + 228 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 228 len (32 * arg3.length) - floor32(arg3.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg3.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg3.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _198 = mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg3.length) + 128] <= 4294967296 and mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg3.length) + 128]) + 32 <= return_data.size
        mem[(32 * arg3.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg3.length) + 128]
        _203 = mem[_198 + (32 * arg3.length) + 128]
        mem[(32 * arg3.length) + ceil32(return_data.size) + 160 len floor32(mem[_198 + (32 * arg3.length) + 128])] = mem[_198 + (32 * arg3.length) + 160 len floor32(mem[_198 + (32 * arg3.length) + 128])]
        require 0 < mem[(32 * arg3.length) + ceil32(return_data.size) + 128]
        require 1 < arg3.length
        require 0 < arg3.length
        mem[(32 * _203) + (32 * arg3.length) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(sushiRouterAddress)
        call sushiRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * arg3.length) + ceil32(return_data.size) + 160] * uint8(-arg5 + 100) / 100, Array(len=2, data=mem[(32 * _203) + (32 * arg3.length) + ceil32(return_data.size) + 452 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4 <= 1
        if arg4 == 1:
            mem[(32 * arg3.length) + 128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 228] = block.timestamp
            mem[(32 * arg3.length) + 164] = 128
            mem[(32 * arg3.length) + 260] = arg3.length
            mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(sushiRouterAddress)
            call sushiRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg1 wei
                 gas gas_remaining wei
                args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 1 < arg3.length
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[172 len 20])
            call mem[172 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pancakeRouterAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Approval failed'
            mem[(32 * arg3.length) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + 132] = ext_call.return_data[0]
            mem[(32 * arg3.length) + 164] = 64
            mem[(32 * arg3.length) + 196] = arg3.length
            mem[(32 * arg3.length) + 228 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(pancakeRouterAddress)
            staticcall pancakeRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 228 len (32 * arg3.length) - floor32(arg3.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg3.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _196 = mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28]
            require mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg3.length) + 128] <= 4294967296 and mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg3.length) + 128]) + 32 <= return_data.size
            mem[(32 * arg3.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg3.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg3.length) + 128]
            _202 = mem[_196 + (32 * arg3.length) + 128]
            mem[(32 * arg3.length) + ceil32(return_data.size) + 160 len floor32(mem[_196 + (32 * arg3.length) + 128])] = mem[_196 + (32 * arg3.length) + 160 len floor32(mem[_196 + (32 * arg3.length) + 128])]
            require 0 < mem[(32 * arg3.length) + ceil32(return_data.size) + 128]
            require 1 < arg3.length
            require 0 < arg3.length
            mem[(32 * _202) + (32 * arg3.length) + ceil32(return_data.size) + 452 len 0] = None
            require ext_code.size(pancakeRouterAddress)
            call pancakeRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(32 * arg3.length) + ceil32(return_data.size) + 160] * uint8(-arg5 + 100) / 100, Array(len=2, data=mem[(32 * _202) + (32 * arg3.length) + ceil32(return_data.size) + 452 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0x589de19a: eth.balance(this.address), block.timestamp
}

function sub_b6140c0f(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 2
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = stor3
    require 0 < arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = mem[140 len 20]
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = 2
    require 1 < arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 288] = mem[172 len 20]
    mem[(32 * arg2.length) + (32 * arg3.length) + 320] = stor3
    mem[(32 * arg2.length) + (32 * arg3.length) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + 356] = arg1
    mem[(32 * arg2.length) + (32 * arg3.length) + 388] = 64
    mem[(32 * arg2.length) + (32 * arg3.length) + 420] = 2
    mem[(32 * arg2.length) + (32 * arg3.length) + 452 len 0] = None
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[(32 * arg2.length) + (32 * arg3.length) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg3.length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 352
    require return_data.size >= 32
    _128 = mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + (32 * arg3.length) + 352] <= 4294967296 and mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + (32 * arg3.length) + 352]) + 32 <= return_data.size
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 352] = mem[mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + (32 * arg3.length) + 352]
    _131 = mem[_128 + (32 * arg2.length) + (32 * arg3.length) + 352]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_128 + (32 * arg2.length) + (32 * arg3.length) + 352])] = mem[_128 + (32 * arg2.length) + (32 * arg3.length) + 384 len floor32(mem[_128 + (32 * arg2.length) + (32 * arg3.length) + 352])]
    require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 352]
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 484] = block.timestamp
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 516] = 2
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 548 len 0] = None
    require ext_code.size(sushiRouterAddress)
    call sushiRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384], Array(len=2, data=mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg2.length
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sushiRouterAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Approval failed'
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 388] = ext_call.return_data[0]
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 420] = 64
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 452] = arg2.length
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 484 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + floor32(arg2.length) + 484 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _429 = mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len 4], ext_call.return_data[0 len 28] + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len 4], ext_call.return_data[0 len 28] + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384 len 4], ext_call.return_data[0 len 28] + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384]
    _432 = mem[_429 + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384]
    mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_429 + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384])] = mem[_429 + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 416 len floor32(mem[_429 + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 384])]
    require 1 < mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 384]
    _505 = mem[(32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 448]
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 452] = _505 * uint8(-arg4 + 100) / 100
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 516] = this.address
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 548] = block.timestamp
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 484] = 160
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 580] = arg2.length
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 612 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(sushiRouterAddress)
    call sushiRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _505 * uint8(-arg4 + 100) / 100, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + floor32(arg2.length) + 612 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    _576 = mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416]
    _579 = mem[_576 + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416]
    mem[(32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_576 + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416])] = mem[_576 + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[_576 + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416])]
    require 1 < arg2.length
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pancakeRouterAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Approval failed'
    mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
    mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 484] = 64
    mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 516] = arg2.length
    mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 548 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + floor32(arg2.length) + 548 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 448
    require return_data.size >= 32
    _697 = mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
    mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448 len 4], ext_call.return_data[0 len 28] + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448]
    _700 = mem[_697 + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448]
    mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_697 + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448])] = mem[_697 + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_697 + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (4 * ceil32(return_data.size)) + 448])]
    require 0 < mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 448]
    _737 = mem[(32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480]
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 516] = _737 * uint8(-arg4 + 100) / 100
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 580] = this.address
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 612] = block.timestamp
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 548] = 160
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 644] = arg3.length
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 676 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _737 * uint8(-arg4 + 100) / 100, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + floor32(arg3.length) + 676 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 480
    require return_data.size >= 32
    _772 = mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len 4], ext_call.return_data[0 len 28] + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len 4], ext_call.return_data[0 len 28] + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 480] = mem[mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480 len 4], ext_call.return_data[0 len 28] + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480]
    _775 = mem[_772 + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480]
    mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len floor32(mem[_772 + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480])] = mem[_772 + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 512 len floor32(mem[_772 + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (6 * ceil32(return_data.size)) + 480])]
    require 1 < mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 480]
    _799 = mem[(32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 544]
    mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 516] = _799
    mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 548] = 64
    mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 580] = 2
    mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 612 len 0] = None
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _799, Array(len=2, data=mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 612 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (8 * ceil32(return_data.size)) + 512
    require return_data.size >= 32
    _821 = mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _799) >> 32
    require mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _799) >> 32 <= 4294967296
    require mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _799) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _799) >> 32 + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512] <= 4294967296 and mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _799) >> 32 + (32 * mem[mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _799) >> 32 + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512]) + 32 <= return_data.size
    mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (8 * ceil32(return_data.size)) + 512] = mem[mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _799) >> 32 + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512]
    _824 = mem[_821 + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512]
    mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (8 * ceil32(return_data.size)) + 544 len floor32(mem[_821 + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512])] = mem[_821 + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 544 len floor32(mem[_821 + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (7 * ceil32(return_data.size)) + 512])]
    require 1 < mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (8 * ceil32(return_data.size)) + 512]
    mem[(32 * _824) + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (8 * ceil32(return_data.size)) + 740 len 0] = None
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[(32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (8 * ceil32(return_data.size)) + 576], _799, Array(len=2, data=mem[(32 * _824) + (32 * _775) + (32 * _700) + (32 * _579) + (32 * _432) + (32 * _131) + (32 * arg2.length) + (32 * arg3.length) + (8 * ceil32(return_data.size)) + 740 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
