contract main {




// =====================  Runtime code  =====================


const getETHBalance = eth.balance(this.address)


uint32 stor0;
address superManAddress;
uint256 stor0;
address stor1;
uint32 stor2;
address uniRouterAddress;
uint256 stor2;

function getUniRouter() {
    return address(uniRouterAddress)
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

function setSuperMan(address arg1) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    address(superManAddress) = arg1
}

function setUniRouter(address arg1) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'No authority'
    address(uniRouterAddress) = arg1
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
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

function getGasFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if block.gasprice * arg1 / arg1 != block.gasprice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (block.gasprice * arg1)
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
    require ext_code.size(address(uniRouterAddress))
    call address(uniRouterAddress).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, this.address, arg3, 2, mem[356 len 64]
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
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
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
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, address(uniRouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    mem[132] = address(uniRouterAddress)
    mem[164] = 10^15
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), 232830
    mem[288 len 4] = 0
    call arg1 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args 0x38d7e0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        mem[260] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[292] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[296] = ext_call.return_data[0]
        mem[328] = 1
        mem[392] = this.address
        mem[424] = arg2
        mem[360] = 160
        mem[456] = 2
        mem[488 len 0] = None
        require ext_code.size(address(uniRouterAddress))
        call address(uniRouterAddress).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[488 len 64]), this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 292
        require return_data.size >= 32
        require mem[292 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[292 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[292 len 4], ext_call.return_data[0 len 28] + 292] <= 4294967296 and mem[292 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 <= return_data.size
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
        mem[ceil32(return_data.size) + 261] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[ceil32(return_data.size) + 293] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 297] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 329] = 1
        mem[ceil32(return_data.size) + 393] = this.address
        mem[ceil32(return_data.size) + 425] = arg2
        mem[ceil32(return_data.size) + 361] = 160
        mem[ceil32(return_data.size) + 457] = 2
        mem[ceil32(return_data.size) + 489 len 0] = None
        require ext_code.size(address(uniRouterAddress))
        call address(uniRouterAddress).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[ceil32(return_data.size) + 489 len 64]), this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= 4294967296 and mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 <= return_data.size
}



}
