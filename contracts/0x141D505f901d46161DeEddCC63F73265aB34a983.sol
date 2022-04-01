contract main {




// =====================  Runtime code  =====================


address unirouterAddress;
address bdoAddress;
address wbnbAddress;
address busdAddress;
address governanceAddress;

function unirouter() payable {
    return unirouterAddress
}

function busd() payable {
    return busdAddress
}

function governance() payable {
    return governanceAddress
}

function bdo() payable {
    return bdoAddress
}

function wbnb() payable {
    return wbnbAddress
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swap(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    mem[160] = arg2
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 1
    mem[292] = this.address
    mem[324] = block.timestamp + 1800
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(unirouterAddress)
    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_a717fd24(?) payable {
    require calldata.size - 4 >= 64
    if arg2:
        mem[224] = bdoAddress
        if arg2 + 1 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp + 1800 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[260] = arg2
        mem[292] = arg2 + 1
        mem[356] = this.address
        mem[388] = block.timestamp + 1800
        mem[324] = 160
        mem[420] = 4
        mem[452 len 0] = None
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, arg2 + 1, Array(len=4, data=mem[452 len 128]), address(this.address), block.timestamp + 1800
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        require mem[256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
}

function sub_f277730d(?) payable {
    require calldata.size - 4 >= 96
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(unirouterAddress)
    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    mem[64] = (32 * _26) + ceil32(return_data.size) + 224
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    return memory
      from (32 * _26) + ceil32(return_data.size) + 224
       len 32
}

function approveForSpender(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if arg3:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(arg2) << 64, 0, arg3
        if not approve(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_234a0f60(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = 4
    mem[128] = bdoAddress
    if arg1:
        mem[160] = wbnbAddress
        if arg1:
            mem[192] = busdAddress
            mem[224] = bdoAddress
            mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[260] = arg2
            mem[292] = 64
            mem[324] = 4
            mem[356 len 0] = None
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=4, data=mem[356 len 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 256
            require return_data.size >= 32
            _89 = mem[256 len 4], Mask(224, 32, arg2) >> 32
            require mem[256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]
            _101 = mem[_89 + 256]
            mem[ceil32(return_data.size) + 288 len floor32(mem[_89 + 256])] = mem[_89 + 288 len floor32(mem[_89 + 256])]
            mem[64] = (32 * _101) + ceil32(return_data.size) + 288
            require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
            mem[(32 * _101) + ceil32(return_data.size) + 288] = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
            return memory
              from (32 * _101) + ceil32(return_data.size) + 288
               len 32
        mem[192] = wbnbAddress
        mem[224] = bdoAddress
        mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[260] = arg2
        mem[292] = 64
        mem[324] = 4
        mem[356 len 0] = None
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=4, data=mem[356 len 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        _91 = mem[256 len 4], Mask(224, 32, arg2) >> 32
        require mem[256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]
        _102 = mem[_91 + 256]
        mem[ceil32(return_data.size) + 288 len floor32(mem[_91 + 256])] = mem[_91 + 288 len floor32(mem[_91 + 256])]
        mem[64] = (32 * _102) + ceil32(return_data.size) + 288
        require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
        mem[(32 * _102) + ceil32(return_data.size) + 288] = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
        return memory
          from (32 * _102) + ceil32(return_data.size) + 288
           len 32
    mem[160] = busdAddress
    if arg1:
        mem[192] = busdAddress
        mem[224] = bdoAddress
        mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[260] = arg2
        mem[292] = 64
        mem[324] = 4
        mem[356 len 0] = None
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=4, data=mem[356 len 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        _93 = mem[256 len 4], Mask(224, 32, arg2) >> 32
        require mem[256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]
        _103 = mem[_93 + 256]
        mem[ceil32(return_data.size) + 288 len floor32(mem[_93 + 256])] = mem[_93 + 288 len floor32(mem[_93 + 256])]
        mem[64] = (32 * _103) + ceil32(return_data.size) + 288
        require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
        mem[(32 * _103) + ceil32(return_data.size) + 288] = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
        return memory
          from (32 * _103) + ceil32(return_data.size) + 288
           len 32
    mem[192] = wbnbAddress
    mem[224] = bdoAddress
    mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[260] = arg2
    mem[292] = 64
    mem[324] = 4
    mem[356 len 0] = None
    require ext_code.size(unirouterAddress)
    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=4, data=mem[356 len 128])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    _95 = mem[256 len 4], Mask(224, 32, arg2) >> 32
    require mem[256 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[256 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]
    _104 = mem[_95 + 256]
    mem[ceil32(return_data.size) + 288 len floor32(mem[_95 + 256])] = mem[_95 + 288 len floor32(mem[_95 + 256])]
    mem[64] = (32 * _104) + ceil32(return_data.size) + 288
    require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
    mem[(32 * _104) + ceil32(return_data.size) + 288] = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
    return memory
      from (32 * _104) + ceil32(return_data.size) + 288
       len 32
}



}
