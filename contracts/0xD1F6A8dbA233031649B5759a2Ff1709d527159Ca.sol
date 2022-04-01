contract main {




// =====================  Runtime code  =====================


const getETHBalance = eth.balance(this.address)


uint32 stor0;
address superManAddress;
uint256 stor0;
address sub_11b12198Address;
address uniRouterAddress;
address stor3;
address stor4;
address stor5;

function sub_11b12198(?) {
    return sub_11b12198Address
}

function getUniRouter() {
    return uniRouterAddress
}

function getSuperMan() {
    return address(superManAddress)
}

function sub_9f4dd112(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_efb8fbec(?) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        revert with 0, 'No authority'
    sub_11b12198Address = arg1
}

function setUniRouter(address arg1) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        revert with 0, 'No authority'
    uniRouterAddress = arg1
}

function setSuperMan(address arg1) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        revert with 0, 'No authority'
    address(superManAddress) = arg1
}

function sub_ae06b0da(?) {
    require calldata.size - 4 >= 32
    if address(superManAddress) != msg.sender:
        revert with 0, 'No authority'
    call address(superManAddress) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_6ddae3cf(?) {
    require calldata.size - 4 >= 64
    if address(superManAddress) != msg.sender:
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

function sub_6cd7bb8c(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 3
    mem[128] = stor3
    mem[160] = stor4
    mem[192] = stor5
    mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[228] = 0
    mem[292] = this.address
    mem[324] = arg2
    mem[260] = 128
    mem[356] = 3
    mem[388 len 0] = None
    require ext_code.size(uniRouterAddress)
    call uniRouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), arg2, 3, mem[388 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[224 len 4], 0 <= 4294967296
    require mem[224 len 4], 0 + 32 <= return_data.size
    require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(sub_11b12198Address)
    call sub_11b12198Address.sellTokenToEth(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args stor5, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg4:
        if eth.balance(this.address) - arg3 <= eth.balance(this.address):
            revert with 0, '2 ETH not enough'
        if not arg4:
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, '2 token not enough'
}

function sub_fa92c0f1(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 3
    mem[128] = stor5
    mem[160] = stor4
    mem[192] = stor3
    require ext_code.size(sub_11b12198Address)
    call sub_11b12198Address.buyTokenWithEth(address rg1, uint256 rg2, uint256 rg3) with:
       value arg1 wei
         gas gas_remaining wei
        args stor5, arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[224] = 30
    mem[256] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[288] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[292] = 0
    mem[324] = 0
    mem[388] = this.address
    mem[420] = arg3
    mem[356] = 160
    mem[452] = 3
    mem[484 len 0] = None
    require ext_code.size(uniRouterAddress)
    call uniRouterAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 0, 160, address(this.address), arg3, 3, mem[484 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    require mem[288 len 4], 0 <= 4294967296
    require mem[288 len 4], 0 + 32 <= return_data.size
    require mem[mem[288 len 4], 0 + 288] <= 4294967296 and mem[288 len 4], 0 + (32 * mem[mem[288 len 4], 0 + 288]) + 32 <= return_data.size
    if arg4 > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg5:
        if eth.balance(this.address) - arg4 <= eth.balance(this.address):
            revert with 0, 'ETH not enough'
        if not arg5:
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'token not enough'
}



}
