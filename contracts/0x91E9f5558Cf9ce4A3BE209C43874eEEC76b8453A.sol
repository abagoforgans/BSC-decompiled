contract main {




// =====================  Runtime code  =====================


const getETHBalance = eth.balance(this.address)


uint32 stor0;
address superManAddress;
uint256 stor0;
address stor1;
address uniRouterAddress;
address stor3;
uint256 stor4;

function getUniRouter() {
    return uniRouterAddress
}

function getSuperMan() {
    return address(superManAddress)
}

function moreETH() payable {
  stop
}

function _fallback() payable {
    revert
}

function setUniRouter(address arg1) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    uniRouterAddress = arg1
}

function setSuperMan(address arg1) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    address(superManAddress) = arg1
}

function getTokenBalance(address arg1) {
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

function turnOutETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    call address(superManAddress) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args uniRouterAddress, stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getGasFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require arg1
    if arg1 * block.gasprice / arg1 != block.gasprice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * block.gasprice)
}

function buy(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    mem[160] = arg2
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[260] = this.address
    mem[292] = arg3
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(uniRouterAddress)
    call uniRouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), arg3, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
}

function turnOutToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function sell(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = stor3
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 1
    mem[292] = this.address
    mem[324] = arg2
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(uniRouterAddress)
    call uniRouterAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[388 len 64]), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
}

function sub_ea5ed3db(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if msg.sender == address(superManAddress):
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _22 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = uniRouterAddress
            mem[(32 * arg1.length) + 164] = stor4
            require ext_code.size(address(_22))
            call address(_22).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, stor4
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _25 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = uniRouterAddress
            mem[(32 * arg1.length) + 164] = stor4
            require ext_code.size(address(_25))
            call address(_25).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, stor4
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
}

function sub_b5abe36b(?) payable {
    require calldata.size - 4 >= 96
    if msg.sender == address(superManAddress):
        mem[160] = arg2
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[260] = this.address
        mem[292] = arg3
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value arg1 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), arg3, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _71 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _77 = mem[_71 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_71 + 192])] = mem[_71 + 224 len floor32(mem[_71 + 192])]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _77) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _77) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _77) + ceil32(return_data.size) + 260] = 1
        mem[(32 * _77) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _77) + ceil32(return_data.size) + 356] = arg3
        mem[(32 * _77) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _77) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _77) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(32 * _77) + ceil32(return_data.size) + 420 len 64]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _77) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _77) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(32 * _77) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _77) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * _77) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _77) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _77) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _77) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _77) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    else:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
        mem[160] = arg2
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[260] = this.address
        mem[292] = arg3
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value arg1 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), arg3, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _73 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _78 = mem[_73 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_73 + 192])] = mem[_73 + 224 len floor32(mem[_73 + 192])]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _78) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _78) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[(32 * _78) + ceil32(return_data.size) + 260] = 1
        mem[(32 * _78) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _78) + ceil32(return_data.size) + 356] = arg3
        mem[(32 * _78) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _78) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _78) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(32 * _78) + ceil32(return_data.size) + 420 len 64]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _78) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _78) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(32 * _78) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * _78) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * _78) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _78) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _78) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _78) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _78) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}



}
