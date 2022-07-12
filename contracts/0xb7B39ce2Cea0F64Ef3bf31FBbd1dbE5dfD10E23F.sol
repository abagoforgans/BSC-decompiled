contract main {




// =====================  Runtime code  =====================


const MAXINT = -1


address owner;
address pcsRouterAddress;
address sub_27ab2005Address;
address pcsFactoryAddress;
address sub_5eabacb9Address;
address tokenAddress;
address currencyAddress;
uint256 prevBalance;

function sub_27ab2005(?) {
    return sub_27ab2005Address
}

function pcsFactory() {
    return pcsFactoryAddress
}

function sub_5eabacb9(?) {
    return sub_5eabacb9Address
}

function pcsRouter() {
    return pcsRouterAddress
}

function owner() {
    return owner
}

function currency() {
    return currencyAddress
}

function prevBalance() {
    return prevBalance
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function balance() {
    if owner != msg.sender:
        revert with 0, 'not owner'
    return eth.balance(this.address)
}

function withdraw(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'not owner'
    if arg2:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
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
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_25ef6dfb(?) {
    require calldata.size - 4 >= 64
    currencyAddress = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    prevBalance = ext_call.return_data[0]
    tokenAddress = arg1
    require ext_code.size(pcsFactoryAddress)
    staticcall pcsFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args currencyAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = currencyAddress
    mem[160] = tokenAddress
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pcsRouterAddress)
    staticcall pcsRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _76 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_76 + 192])] = mem[_76 + 224 len floor32(mem[_76 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1 == ext_call.return_data[12 len 20]:
        if arg1 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg2, arg2, address(this.address), 128, 96, arg2, mem[ceil32(return_data.size) + 224], 1
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg2, 0, address(this.address), 128, 96, arg2, mem[ceil32(return_data.size) + 224], 1
    else:
        if arg1 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg2, address(this.address), 128, 96, arg2, mem[ceil32(return_data.size) + 224], 1
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 96, arg2, mem[ceil32(return_data.size) + 224], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_57c233c9(?) {
    require calldata.size - 4 >= 64
    currencyAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    prevBalance = ext_call.return_data[0]
    tokenAddress = arg1
    require ext_code.size(pcsFactoryAddress)
    staticcall pcsFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args currencyAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = currencyAddress
    mem[160] = tokenAddress
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pcsRouterAddress)
    staticcall pcsRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _76 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_76 + 192])] = mem[_76 + 224 len floor32(mem[_76 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1 == ext_call.return_data[12 len 20]:
        if arg1 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg2, arg2, address(this.address), 128, 96, arg2, mem[ceil32(return_data.size) + 224], 1
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg2, 0, address(this.address), 128, 96, arg2, mem[ceil32(return_data.size) + 224], 1
    else:
        if arg1 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg2, address(this.address), 128, 96, arg2, mem[ceil32(return_data.size) + 224], 1
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 96, arg2, mem[ceil32(return_data.size) + 224], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_64c2214e(?) {
    require calldata.size - 4 >= 64
    currencyAddress = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    prevBalance = ext_call.return_data[0]
    tokenAddress = arg1
    require ext_code.size(pcsFactoryAddress)
    staticcall pcsFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args currencyAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = tokenAddress
    mem[160] = currencyAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pcsRouterAddress)
    staticcall pcsRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _76 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _79 = mem[_76 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_76 + 192])] = mem[_76 + 224 len floor32(mem[_76 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _133 = mem[ceil32(return_data.size) + 256]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _79) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 256]
    require ext_code.size(address(ext_call.return_data[0]))
    if currencyAddress == ext_call.return_data[12 len 20]:
        if currencyAddress == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _133, _133, address(this.address), 128, 96, mem[(32 * _79) + ceil32(return_data.size) + 256], arg2, 0
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _133, 0, address(this.address), 128, 96, mem[(32 * _79) + ceil32(return_data.size) + 256], arg2, 0
    else:
        if currencyAddress == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _133, address(this.address), 128, 96, mem[(32 * _79) + ceil32(return_data.size) + 256], arg2, 0
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 96, mem[(32 * _79) + ceil32(return_data.size) + 256], arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aa385833(?) {
    require calldata.size - 4 >= 64
    currencyAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    prevBalance = ext_call.return_data[0]
    tokenAddress = arg1
    require ext_code.size(pcsFactoryAddress)
    staticcall pcsFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args currencyAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = tokenAddress
    mem[160] = currencyAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(pcsRouterAddress)
    staticcall pcsRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _76 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _79 = mem[_76 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_76 + 192])] = mem[_76 + 224 len floor32(mem[_76 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _133 = mem[ceil32(return_data.size) + 256]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _79) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 256]
    require ext_code.size(address(ext_call.return_data[0]))
    if currencyAddress == ext_call.return_data[12 len 20]:
        if currencyAddress == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _133, _133, address(this.address), 128, 96, mem[(32 * _79) + ceil32(return_data.size) + 256], arg2, 0
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _133, 0, address(this.address), 128, 96, mem[(32 * _79) + ceil32(return_data.size) + 256], arg2, 0
    else:
        if currencyAddress == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _133, address(this.address), 128, 96, mem[(32 * _79) + ceil32(return_data.size) + 256], arg2, 0
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 96, mem[(32 * _79) + ceil32(return_data.size) + 256], arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pcsFactoryAddress)
    staticcall pcsFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender not pair'
    require arg4.length >= 96
    require ext_code.size(sub_5eabacb9Address)
    staticcall sub_5eabacb9Address.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args currencyAddress, tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    if cd[(arg4 + 100)]:
        mem[128] = tokenAddress
        mem[160] = currencyAddress
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 36)]
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(sub_27ab2005Address)
        staticcall sub_27ab2005Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[(arg4 + 36)], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1202 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 36)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 36)]) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 36)]) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 36)]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[(arg4 + 36)]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 36)]) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 36)]) >> 32 + 192]
        _1207 = mem[_1202 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1202 + 192])] = mem[_1202 + 224 len floor32(mem[_1202 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), cd[(arg4 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _1207) + ceil32(return_data.size) + 356 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(ext_call.return_data[0]), Mask(224, 32, cd[(arg4 + 36)]) >> 32
        mem[(32 * _1207) + ceil32(return_data.size) + 480 len 4] = Mask(32, 64, cd[(arg4 + 36)]) >> 64
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, cd[(arg4 + 36)]) << 480, mem[(32 * _1207) + ceil32(return_data.size) + 452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 
                        32,
                        36,
                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[(32 * _1207) + ceil32(return_data.size) + 460 len 20],
                        Mask(32, 64, cd[(arg4 + 36)]) >> 64,
                        mem[(32 * _1207) + ceil32(return_data.size) + 484 len 4]
        if currencyAddress == ext_call.return_data[12 len 20]:
            mem[(32 * _1207) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _1207) + ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            require ext_code.size(address(ext_call.return_data[0]))
            if currencyAddress == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 256], mem[ceil32(return_data.size) + 256], address(this.address), 128, 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 256], 0, address(this.address), 128, 0
        else:
            if currencyAddress != ext_call.return_data[12 len 20]:
                mem[(32 * _1207) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1207) + ceil32(return_data.size) + 388]:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 0
            else:
                mem[(32 * _1207) + ceil32(return_data.size) + 356] = return_data.size
                mem[(32 * _1207) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1207) + ceil32(return_data.size) + 388]:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 0
                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + 256]
                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = this.address
                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = 128
                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len ceil32(mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357])] = mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 389 len ceil32(mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357])]
                if not mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 256], address(this.address), 128, mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357] + 32]
                else:
                    mem[floor32(mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357]) + (32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357]) + (32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + -(mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 256], address(this.address), 128, mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357], mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len floor32(mem[(32 * _1207) + ceil32(return_data.size) + ceil32(return_data.size) + 357]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(currencyAddress)
        call currencyAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 68)]
    else:
        mem[128] = currencyAddress
        mem[160] = tokenAddress
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 68)]
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(sub_27ab2005Address)
        staticcall sub_27ab2005Address.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[(arg4 + 68)], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1200 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 68)]) >> 32 + 192]
        _1206 = mem[_1200 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1200 + 192])] = mem[_1200 + 224 len floor32(mem[_1200 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(currencyAddress)
        call currencyAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), mem[ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if tokenAddress != ext_call.return_data[12 len 20]:
            mem[(32 * _1206) + ceil32(return_data.size) + 356 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(ext_call.return_data[0]), mem[ceil32(return_data.size) + 224 len 28]
            mem[(32 * _1206) + ceil32(return_data.size) + 480 len 4] = mem[ceil32(return_data.size) + 244 len 4]
            call currencyAddress with:
                 gas gas_remaining wei
                args Mask(736, -512, mem[ceil32(return_data.size) + 224 len 28]) << 512, mem[(32 * _1206) + ceil32(return_data.size) + 452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _1206) + ceil32(return_data.size) + 460 len 20],
                            mem[ceil32(return_data.size) + 244 len 4],
                            mem[(32 * _1206) + ceil32(return_data.size) + 484 len 4]
            mem[(32 * _1206) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _1206) + ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            require ext_code.size(address(ext_call.return_data[0]))
            if tokenAddress == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[(arg4 + 68)], address(this.address), 128, 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 0
        else:
            if tokenAddress != ext_call.return_data[12 len 20]:
                mem[(32 * _1206) + ceil32(return_data.size) + 356 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(ext_call.return_data[0]), mem[ceil32(return_data.size) + 224 len 28]
                mem[(32 * _1206) + ceil32(return_data.size) + 480 len 4] = mem[ceil32(return_data.size) + 244 len 4]
                call currencyAddress with:
                     gas gas_remaining wei
                    args Mask(736, -512, mem[ceil32(return_data.size) + 224 len 28]) << 512, mem[(32 * _1206) + ceil32(return_data.size) + 452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _1206) + ceil32(return_data.size) + 460 len 20],
                                mem[ceil32(return_data.size) + 244 len 4],
                                mem[(32 * _1206) + ceil32(return_data.size) + 484 len 4]
                mem[(32 * _1206) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1206) + ceil32(return_data.size) + 388]:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 68)], 0, address(this.address), 128, 0
            else:
                mem[(32 * _1206) + ceil32(return_data.size) + 260] = this.address
                mem[(32 * _1206) + ceil32(return_data.size) + 292] = address(ext_call.return_data[0])
                mem[(32 * _1206) + ceil32(return_data.size) + 324] = mem[ceil32(return_data.size) + 224]
                mem[(32 * _1206) + ceil32(return_data.size) + 224] = 100
                mem[(32 * _1206) + ceil32(return_data.size) + 260 len 28] = address(this.address) << 64
                mem[(32 * _1206) + ceil32(return_data.size) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[(32 * _1206) + ceil32(return_data.size) + 356 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(ext_call.return_data[0]), mem[(32 * _1206) + ceil32(return_data.size) + 324 len 28]
                mem[(32 * _1206) + ceil32(return_data.size) + 480 len 4] = mem[(32 * _1206) + ceil32(return_data.size) + 344 len 4]
                call currencyAddress with:
                     gas gas_remaining wei
                    args Mask(736, -512, mem[(32 * _1206) + ceil32(return_data.size) + 324 len 28]) << 512, mem[(32 * _1206) + ceil32(return_data.size) + 452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _1206) + ceil32(return_data.size) + 460 len 20],
                                mem[(32 * _1206) + ceil32(return_data.size) + 344 len 4],
                                mem[(32 * _1206) + ceil32(return_data.size) + 484 len 4]
                mem[(32 * _1206) + ceil32(return_data.size) + 356] = return_data.size
                mem[(32 * _1206) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1206) + ceil32(return_data.size) + 388]:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                mem[64] = (32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 389
                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 389] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = cd[(arg4 + 68)]
                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = cd[(arg4 + 68)]
                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = this.address
                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = 128
                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len ceil32(mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357])] = mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 389 len ceil32(mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357])]
                if not mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357] % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 68)], cd[(arg4 + 68)], address(this.address), 128, mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357] + 32]
                else:
                    mem[floor32(mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357]) + (32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[floor32(mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357]) + (32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + -(mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357] % 32) + 585 len mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357] % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 68)], cd[(arg4 + 68)], address(this.address), Array(len=mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357], data=mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len floor32(mem[(32 * _1206) + ceil32(return_data.size) + ceil32(return_data.size) + 357]) + 32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 68)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= prevBalance:
        revert with 0, 'Not profitable'
}



}
