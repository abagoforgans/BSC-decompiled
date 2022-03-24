contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_20d45648(?)
#  - sub_5cdb8bc9(?)
#  - sub_64a14558(?)
#  - doApprove(address arg1, address arg2)
#
address uniswapV2FactoryAddress;
address WETHAddress;
address DAIAddress;
address owner;
address sub_33bce082Address;
address envAddress;
address balanceAddress;
address orderbaseAddress;
address coinAddress;
address assetAddress;
address sub_4c2b2cb2Address;
address sub_69a4b684Address;
array of address swap2TokenRouting;

function coin() {
    return coinAddress
}

function swap2TokenRouting(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < swap2TokenRouting.length
    return swap2TokenRouting[arg1]
}

function sub_33bce082(?) {
    return sub_33bce082Address
}

function asset() {
    return assetAddress
}

function sub_4c2b2cb2(?) {
    return sub_4c2b2cb2Address
}

function uniswapV2Factory() {
    return uniswapV2FactoryAddress
}

function sub_69a4b684(?) {
    return sub_69a4b684Address
}

function owner() {
    return owner
}

function env() {
    return envAddress
}

function WETH() {
    return WETHAddress
}

function balance() {
    return balanceAddress
}

function orderbase() {
    return orderbaseAddress
}

function DAI() {
    return DAIAddress
}

function _fallback() payable {
    revert
}

function _dec(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(assetAddress)
    staticcall assetAddress.decimals(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function price(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(envAddress)
    staticcall envAddress.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe65868b0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if not ext_call.return_data[32]:
        revert with 0, 'Utils.price/invalid price value'
    return ext_call.return_data[0]
}

function sub_488ecfcb(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    DAIAddress = address(arg1)
    uniswapV2FactoryAddress = address(arg2)
    WETHAddress = address(arg3)
    sub_33bce082Address = address(arg4)
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x9dca0032 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    envAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_33bce082Address)
    staticcall sub_33bce082Address.0xb69ef8a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    balanceAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_33bce082Address)
    staticcall sub_33bce082Address.0x11df9995 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    coinAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_33bce082Address)
    staticcall sub_33bce082Address.0x38d52e0f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    assetAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_33bce082Address)
    staticcall sub_33bce082Address.0xcbc8b506 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    orderbaseAddress = ext_call.return_data[12 len 20]
    sub_4c2b2cb2Address = address(arg5)
    sub_69a4b684Address = address(arg6)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function frozens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(orderbaseAddress)
    staticcall orderbaseAddress.size() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xfe0863ce00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(orderbaseAddress)
    staticcall orderbaseAddress.owners(address rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args address(arg1), 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64
    require mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
    require return_data.size >= _8 + (32 * _9) + 32
    idx = 0
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < _9:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        _54 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = arg1
        require ext_code.size(envAddress)
        staticcall envAddress.fade(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _68 = mem[_65]
        mem[mem[64] + 4] = address(_54)
        mem[mem[64] + 36] = arg1
        require ext_code.size(sub_33bce082Address)
        staticcall sub_33bce082Address.ade(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(_54), arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_75] >= _68:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require s < mem[(2 * ceil32(return_data.size)) + 96]
        mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _53 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            require t < mem[(2 * ceil32(return_data.size)) + 96]
            require t < mem[_53]
            mem[(32 * t) + _53 + 32] = mem[(32 * t) + (2 * ceil32(return_data.size)) + 140 len 20]
            t = t + 1
            continue 
        _82 = mem[64]
        mem[mem[64]] = 32
        _88 = mem[_53]
        mem[mem[64] + 32] = mem[_53]
        idx = 0
        s = _53 + 32
        t = mem[64] + 64
        while idx < _88:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _82 + (32 * _88) + -mem[64] + 64
    mem[_53 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    while t < s:
        require t < mem[(2 * ceil32(return_data.size)) + 96]
        require t < mem[_53]
        mem[(32 * t) + _53 + 32] = mem[(32 * t) + (2 * ceil32(return_data.size)) + 140 len 20]
        t = t + 1
        continue 
    _85 = mem[64]
    mem[mem[64]] = 32
    _89 = mem[_53]
    mem[mem[64] + 32] = mem[_53]
    idx = 0
    s = _53 + 32
    t = mem[64] + 64
    while idx < _89:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _85 + (32 * _89) + -mem[64] + 64
}

function sub_15633676(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(orderbaseAddress)
    staticcall orderbaseAddress.size() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xfe0863ce00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(orderbaseAddress)
    staticcall orderbaseAddress.owners(address rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args address(arg1), 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64
    require mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
    require return_data.size >= _8 + (32 * _9) + 32
    idx = 0
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < _9:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        _68 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(envAddress)
        staticcall envAddress.fade(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _85 = mem[_78]
        mem[mem[64] + 4] = address(_68)
        mem[mem[64] + 36] = address(arg1)
        require ext_code.size(sub_33bce082Address)
        staticcall sub_33bce082Address.ade(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(_68), address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_97] >= _85:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require s < mem[(2 * ceil32(return_data.size)) + 96]
        mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _67 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            require t < mem[(2 * ceil32(return_data.size)) + 96]
            require t < mem[_67]
            mem[(32 * t) + _67 + 32] = mem[(32 * t) + (2 * ceil32(return_data.size)) + 140 len 20]
            t = t + 1
            continue 
        _136 = mem[_67]
        idx = 0
        s = 0
        while idx < _136:
            require idx < mem[_67]
            mem[mem[64] + 4] = mem[(32 * idx) + _67 + 44 len 20]
            mem[mem[64] + 36] = address(arg1)
            require ext_code.size(balanceAddress)
            staticcall balanceAddress.supply(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _152 = mem[_150]
            if mem[_150] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            _136 = mem[_67]
            idx = idx + 1
            s = mem[_150] + s
            continue 
        return (_152 * _136)
    mem[_67 + 32 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    while t < s:
        require t < mem[(2 * ceil32(return_data.size)) + 96]
        require t < mem[_67]
        mem[(32 * t) + _67 + 32] = mem[(32 * t) + (2 * ceil32(return_data.size)) + 140 len 20]
        t = t + 1
        continue 
    _137 = mem[_67]
    s = 0
    t = 0
    while s < _137:
        require s < mem[_67]
        mem[mem[64] + 4] = mem[(32 * s) + _67 + 44 len 20]
        mem[mem[64] + 36] = address(arg1)
        require ext_code.size(balanceAddress)
        staticcall balanceAddress.supply(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _153 = mem[_151]
        if mem[_151] + t < t:
            revert with 0, 'SafeMath: addition overflow'
        _137 = mem[_67]
        s = s + 1
        t = mem[_151] + t
        continue 
    return (_153 * _137)
}



}
