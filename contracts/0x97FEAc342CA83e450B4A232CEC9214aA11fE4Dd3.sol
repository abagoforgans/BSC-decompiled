contract main {




// =====================  Runtime code  =====================


address owner;
address bankAddress;
address WBNBAddress;
address BUSDAddress;

function BUSD() {
    return BUSDAddress
}

function bank() {
    return bankAddress
}

function owner() {
    return owner
}

function WBNB() {
    return WBNBAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function swapBUSDToBNB(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = 96
    t = 96
    t = 0
    while idx < arg1.length:
        if BUSDAddress:
            _112 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_112]
            mem[_112 + 32] = BUSDAddress
            require 1 < mem[_112]
            mem[_112 + 64] = WBNBAddress
            if idx:
                mem[_112 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_112 + 100] = arg2
                mem[_112 + 132] = 64
                mem[_112 + 164] = mem[_112]
                s = 0
                while s < 32 * mem[_112]:
                    mem[_112 + s + 196] = mem[_112 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[_112 + 164 len (32 * mem[_112]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_112 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _112 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _322 = mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + _112 + 96] <= 4294967296 and mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + _112 + 96]) + 32 <= return_data.size
                mem[_112 + ceil32(return_data.size) + 96] = mem[mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + _112 + 96]
                _338 = mem[_322 + _112 + 96]
                s = 0
                while s < 32 * _338:
                    mem[_112 + ceil32(return_data.size) + s + 128] = mem[_322 + _112 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _338) + _112 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_112 + ceil32(return_data.size) + 96]
                if mem[_112 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_112 + ceil32(return_data.size) + 96]
                    if mem[_112 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_112 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_112 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _112 + ceil32(return_data.size) + 96
                    t = _112
                    t = t
                    continue 
                require 1 < mem[_112 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_112 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_112 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_112 + 100] = arg2
                mem[_112 + 132] = 64
                mem[_112 + 164] = mem[_112]
                s = 0
                while s < 32 * mem[_112]:
                    mem[_112 + s + 196] = mem[_112 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[_112 + 164 len (32 * mem[_112]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_112 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _112 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _324 = mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + _112 + 96] <= 4294967296 and mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + _112 + 96]) + 32 <= return_data.size
                mem[_112 + ceil32(return_data.size) + 96] = mem[mem[_112 + 96 len 4], Mask(224, 32, arg2) >> 32 + _112 + 96]
                _339 = mem[_324 + _112 + 96]
                s = 0
                while s < 32 * _339:
                    mem[_112 + ceil32(return_data.size) + s + 128] = mem[_324 + _112 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _339) + _112 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_112 + ceil32(return_data.size) + 96]
                if mem[_112 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_112 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_112 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_112 + ceil32(return_data.size) + 96]
            if mem[_112 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_112 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_112 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _112 + ceil32(return_data.size) + 96
            t = _112
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        _111 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_111]
        mem[_111 + 32] = WBNBAddress
        require 1 < mem[_111]
        mem[_111 + 64] = BUSDAddress
        if idx:
            mem[_111 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_111 + 100] = arg2
            mem[_111 + 132] = 64
            mem[_111 + 164] = mem[_111]
            s = 0
            while s < 32 * mem[_111]:
                mem[_111 + s + 196] = mem[_111 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[_111 + 164 len (32 * mem[_111]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_111 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _111 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _326 = mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32
            require mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + _111 + 96] <= 4294967296 and mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + _111 + 96]) + 32 <= return_data.size
            mem[_111 + ceil32(return_data.size) + 96] = mem[mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + _111 + 96]
            _340 = mem[_326 + _111 + 96]
            s = 0
            while s < 32 * _340:
                mem[_111 + ceil32(return_data.size) + s + 128] = mem[_326 + _111 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _340) + _111 + ceil32(return_data.size) + 128
            require 1 < mem[96]
            require 1 < mem[_111 + ceil32(return_data.size) + 96]
            if mem[_111 + ceil32(return_data.size) + 160] <= mem[160]:
                require 0 < mem[96]
                require 1 < mem[_111 + ceil32(return_data.size) + 96]
                if mem[_111 + ceil32(return_data.size) + 160] < mem[128]:
                    require 1 < mem[_111 + ceil32(return_data.size) + 96]
                    require 0 < mem[96]
                    mem[128] = mem[_111 + ceil32(return_data.size) + 160]
                idx = idx + 1
                s = _111 + ceil32(return_data.size) + 96
                t = _111
                t = t
                continue 
            require 1 < mem[_111 + ceil32(return_data.size) + 96]
            require 1 < mem[96]
            mem[160] = mem[_111 + ceil32(return_data.size) + 160]
            require idx < arg1.length
        else:
            require 0 < mem[s]
            require 1 < mem[96]
            mem[160] = mem[s + 32]
            require 0 < mem[s]
            require 0 < mem[96]
            mem[128] = mem[s + 32]
            require idx < arg1.length
            mem[_111 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_111 + 100] = arg2
            mem[_111 + 132] = 64
            mem[_111 + 164] = mem[_111]
            s = 0
            while s < 32 * mem[_111]:
                mem[_111 + s + 196] = mem[_111 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[_111 + 164 len (32 * mem[_111]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_111 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _111 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _328 = mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32
            require mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + _111 + 96] <= 4294967296 and mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + _111 + 96]) + 32 <= return_data.size
            mem[_111 + ceil32(return_data.size) + 96] = mem[mem[_111 + 96 len 4], Mask(224, 32, arg2) >> 32 + _111 + 96]
            _341 = mem[_328 + _111 + 96]
            s = 0
            while s < 32 * _341:
                mem[_111 + ceil32(return_data.size) + s + 128] = mem[_328 + _111 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _341) + _111 + ceil32(return_data.size) + 128
            require 1 < mem[96]
            require 1 < mem[_111 + ceil32(return_data.size) + 96]
            if mem[_111 + ceil32(return_data.size) + 160] > mem[160]:
                require 1 < mem[_111 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_111 + ceil32(return_data.size) + 160]
                require idx < arg1.length
        require 0 < mem[96]
        require 1 < mem[_111 + ceil32(return_data.size) + 96]
        if mem[_111 + ceil32(return_data.size) + 160] < mem[128]:
            require 1 < mem[_111 + ceil32(return_data.size) + 96]
            require 0 < mem[96]
            mem[128] = mem[_111 + ceil32(return_data.size) + 160]
        idx = idx + 1
        s = _111 + ceil32(return_data.size) + 96
        t = _111
        t = address(cd[((32 * idx) + arg1 + 36)])
        continue 
    _110 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_110]
    mem[_110 + 32] = BUSDAddress
    require 1 < mem[_110]
    mem[_110 + 64] = WBNBAddress
    require 1 < mem[96]
    if mem[160] <= 0:
        mem[_110 + 96] = 32
        mem[_110 + 128] = mem[96]
        mem[_110 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return memory
          from mem[64]
           len (32 * mem[96]) + _110 + -mem[64] + 160
    if address(t) != 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        mem[_110 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
        mem[_110 + 100] = arg2
        mem[_110 + 132] = 0
        mem[_110 + 196] = msg.sender
        mem[_110 + 228] = block.timestamp + 60
        mem[_110 + 164] = 160
        mem[_110 + 260] = mem[_110]
        mem[_110 + 292 len floor32(mem[_110])] = mem[_110 + 32 len floor32(mem[_110])]
        require ext_code.size(address(t))
        call address(t).0x5d616c5b with:
             gas gas_remaining wei
            args arg2, 0, 160, msg.sender, block.timestamp + 60, mem[_110 + 260 len (32 * mem[_110]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_110 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _110 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _318 = mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + _110 + 96] <= 4294967296 and mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + _110 + 96]) + 32 <= return_data.size
        mem[_110 + ceil32(return_data.size) + 96] = mem[mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + _110 + 96]
        _336 = mem[_318 + _110 + 96]
        mem[_110 + ceil32(return_data.size) + 128 len floor32(mem[_318 + _110 + 96])] = mem[_318 + _110 + 128 len floor32(mem[_318 + _110 + 96])]
        mem[(32 * _336) + _110 + ceil32(return_data.size) + 128] = 32
        mem[(32 * _336) + _110 + ceil32(return_data.size) + 160] = mem[_110 + ceil32(return_data.size) + 96]
        mem[(32 * _336) + _110 + ceil32(return_data.size) + 192 len floor32(mem[_110 + ceil32(return_data.size) + 96])] = mem[_110 + ceil32(return_data.size) + 128 len floor32(mem[_110 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _336) + _110 + ceil32(return_data.size) + 160 len (32 * mem[_110 + ceil32(return_data.size) + 96]) + 32]
    mem[_110 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[_110 + 100] = arg2
    mem[_110 + 132] = 0
    mem[_110 + 196] = msg.sender
    mem[_110 + 228] = block.timestamp + 60
    mem[_110 + 164] = 160
    mem[_110 + 260] = mem[_110]
    mem[_110 + 292 len floor32(mem[_110])] = mem[_110 + 32 len floor32(mem[_110])]
    require ext_code.size(address(t))
    call address(t).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, msg.sender, block.timestamp + 60, mem[_110 + 260 len (32 * mem[_110]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_110 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _110 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    _320 = mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + _110 + 96] <= 4294967296 and mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + _110 + 96]) + 32 <= return_data.size
    mem[_110 + ceil32(return_data.size) + 96] = mem[mem[_110 + 96 len 4], Mask(224, 32, arg2) >> 32 + _110 + 96]
    _337 = mem[_320 + _110 + 96]
    mem[_110 + ceil32(return_data.size) + 128 len floor32(mem[_320 + _110 + 96])] = mem[_320 + _110 + 128 len floor32(mem[_320 + _110 + 96])]
    mem[(32 * _337) + _110 + ceil32(return_data.size) + 128] = 32
    mem[(32 * _337) + _110 + ceil32(return_data.size) + 160] = mem[_110 + ceil32(return_data.size) + 96]
    mem[(32 * _337) + _110 + ceil32(return_data.size) + 192 len floor32(mem[_110 + ceil32(return_data.size) + 96])] = mem[_110 + ceil32(return_data.size) + 128 len floor32(mem[_110 + ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _337) + _110 + ceil32(return_data.size) + 160 len (32 * mem[_110 + ceil32(return_data.size) + 96]) + 32]
}

function swapBNBToBUSD(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = 96
    t = 96
    t = 0
    while idx < arg1.length:
        _82 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_82]
        mem[_82 + 32] = WBNBAddress
        require 1 < mem[_82]
        mem[_82 + 64] = BUSDAddress
        if idx:
            mem[_82 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_82 + 100] = arg2
            mem[_82 + 132] = 64
            mem[_82 + 164] = mem[_82]
            s = 0
            while s < 32 * mem[_82]:
                mem[_82 + s + 196] = mem[_82 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[_82 + 164 len (32 * mem[_82]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_82 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _82 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _243 = mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32
            require mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96] <= 4294967296 and mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96]) + 32 <= return_data.size
            mem[_82 + ceil32(return_data.size) + 96] = mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96]
            _253 = mem[_243 + _82 + 96]
            s = 0
            while s < 32 * _253:
                mem[_82 + ceil32(return_data.size) + s + 128] = mem[_243 + _82 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _253) + _82 + ceil32(return_data.size) + 128
            if 1 < mem[96]:
                if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                    if mem[_82 + ceil32(return_data.size) + 128] <= mem[160]:
                        if 0 < mem[96]:
                            if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                if mem[_82 + ceil32(return_data.size) + 128] >= mem[128]:
                                    idx = idx + 1
                                    s = _82 + ceil32(return_data.size) + 96
                                    t = _82
                                    t = t
                                    continue 
                                if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                    if 0 < mem[96]:
                                        mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                                        if idx < arg1.length:
                                            idx = idx + 1
                                            s = _82 + ceil32(return_data.size) + 96
                                            t = _82
                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                            continue 
                    else:
                        if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                            if 1 < mem[96]:
                                mem[160] = mem[_82 + ceil32(return_data.size) + 128]
                                if 0 < mem[96]:
                                    if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                        if mem[_82 + ceil32(return_data.size) + 128] >= mem[128]:
                                            idx = idx + 1
                                            s = _82 + ceil32(return_data.size) + 96
                                            t = _82
                                            t = t
                                            continue 
                                        if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                            if 0 < mem[96]:
                                                mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                                                if idx < arg1.length:
                                                    idx = idx + 1
                                                    s = _82 + ceil32(return_data.size) + 96
                                                    t = _82
                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                    continue 
        else:
            if 0 < mem[s]:
                if 1 < mem[96]:
                    mem[160] = mem[s + 32]
                    if 0 < mem[s]:
                        if 0 < mem[96]:
                            mem[128] = mem[s + 32]
                            if idx < arg1.length:
                                mem[_82 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[_82 + 100] = arg2
                                mem[_82 + 132] = 64
                                mem[_82 + 164] = mem[_82]
                                s = 0
                                while s < 32 * mem[_82]:
                                    mem[_82 + s + 196] = mem[_82 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, 64, mem[_82 + 164 len (32 * mem[_82]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_82 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _82 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _245 = mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32
                                require mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96] <= 4294967296 and mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96]) + 32 <= return_data.size
                                mem[_82 + ceil32(return_data.size) + 96] = mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96]
                                _254 = mem[_245 + _82 + 96]
                                s = 0
                                while s < 32 * _254:
                                    mem[_82 + ceil32(return_data.size) + s + 128] = mem[_245 + _82 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _254) + _82 + ceil32(return_data.size) + 128
                                if 1 < mem[96]:
                                    if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                        if mem[_82 + ceil32(return_data.size) + 128] <= mem[160]:
                                            if 0 < mem[96]:
                                                if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                                    if mem[_82 + ceil32(return_data.size) + 128] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _82 + ceil32(return_data.size) + 96
                                                        t = _82
                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                        continue 
                                                    if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _82 + ceil32(return_data.size) + 96
                                                                t = _82
                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                                        else:
                                            if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                                if 1 < mem[96]:
                                                    mem[160] = mem[_82 + ceil32(return_data.size) + 128]
                                                    if 0 < mem[96]:
                                                        if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                                            if mem[_82 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                idx = idx + 1
                                                                s = _82 + ceil32(return_data.size) + 96
                                                                t = _82
                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                                                            if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                                                if 0 < mem[96]:
                                                                    mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                                                                    if idx < arg1.length:
                                                                        idx = idx + 1
                                                                        s = _82 + ceil32(return_data.size) + 96
                                                                        t = _82
                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
        revert
    _81 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_81]
    mem[_81 + 32] = WBNBAddress
    require 1 < mem[_81]
    mem[_81 + 64] = BUSDAddress
    if address(t) != 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        mem[_81 + 96] = 0x8332a96300000000000000000000000000000000000000000000000000000000
        mem[_81 + 100] = arg2
        mem[_81 + 164] = msg.sender
        mem[_81 + 196] = block.timestamp + 60
        mem[_81 + 132] = 128
        mem[_81 + 228] = mem[_81]
        mem[_81 + 260 len floor32(mem[_81])] = mem[_81 + 32 len floor32(mem[_81])]
        require ext_code.size(address(t))
        call address(t).0x8332a963 with:
           value msg.value wei
             gas gas_remaining wei
            args arg2, 128, msg.sender, block.timestamp + 60, mem[_81 + 228 len (32 * mem[_81]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_81 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _81 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _239 = mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96] <= 4294967296 and mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96]) + 32 <= return_data.size
        mem[_81 + ceil32(return_data.size) + 96] = mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96]
        _251 = mem[_239 + _81 + 96]
        mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_239 + _81 + 96])] = mem[_239 + _81 + 128 len floor32(mem[_239 + _81 + 96])]
        require 0 < mem[_81 + ceil32(return_data.size) + 96]
        _361 = mem[_81 + ceil32(return_data.size) + 128]
        mem[(32 * _251) + _81 + ceil32(return_data.size) + 128] = 0
        mem[(32 * _251) + _81 + ceil32(return_data.size) + 160 len 0] = None
        call msg.sender with:
           value msg.value - _361 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _251) + _81 + ceil32(return_data.size) + 263 len 29]
            mem[(32 * _251) + _81 + ceil32(return_data.size) + 160] = 32
            mem[(32 * _251) + _81 + ceil32(return_data.size) + 192] = mem[_81 + ceil32(return_data.size) + 96]
            mem[(32 * _251) + _81 + ceil32(return_data.size) + 224 len floor32(mem[_81 + ceil32(return_data.size) + 96])] = mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_81 + ceil32(return_data.size) + 96])]
            return 32, mem[(32 * _251) + _81 + ceil32(return_data.size) + 192 len (32 * mem[_81 + ceil32(return_data.size) + 96]) + 32]
        mem[(32 * _251) + _81 + ceil32(return_data.size) + 160] = return_data.size
        mem[(32 * _251) + _81 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[(32 * _251) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
        mem[(32 * _251) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 32
        mem[(32 * _251) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[_81 + ceil32(return_data.size) + 96]
        mem[(32 * _251) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 225 len floor32(mem[_81 + ceil32(return_data.size) + 96])] = mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_81 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _251) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len (32 * mem[_81 + ceil32(return_data.size) + 96]) + 32], 
    mem[_81 + 96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[_81 + 100] = arg2
    mem[_81 + 164] = msg.sender
    mem[_81 + 196] = block.timestamp + 60
    mem[_81 + 132] = 128
    mem[_81 + 228] = mem[_81]
    mem[_81 + 260 len floor32(mem[_81])] = mem[_81 + 32 len floor32(mem[_81])]
    require ext_code.size(address(t))
    call address(t).swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, 128, msg.sender, block.timestamp + 60, mem[_81 + 228 len (32 * mem[_81]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_81 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _81 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    _241 = mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96] <= 4294967296 and mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96]) + 32 <= return_data.size
    mem[_81 + ceil32(return_data.size) + 96] = mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96]
    _252 = mem[_241 + _81 + 96]
    mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_241 + _81 + 96])] = mem[_241 + _81 + 128 len floor32(mem[_241 + _81 + 96])]
    require 0 < mem[_81 + ceil32(return_data.size) + 96]
    _362 = mem[_81 + ceil32(return_data.size) + 128]
    mem[(32 * _252) + _81 + ceil32(return_data.size) + 128] = 0
    mem[(32 * _252) + _81 + ceil32(return_data.size) + 160 len 0] = None
    call msg.sender with:
       value msg.value - _362 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[(32 * _252) + _81 + ceil32(return_data.size) + 263 len 29]
        mem[(32 * _252) + _81 + ceil32(return_data.size) + 160] = 32
        mem[(32 * _252) + _81 + ceil32(return_data.size) + 192] = mem[_81 + ceil32(return_data.size) + 96]
        mem[(32 * _252) + _81 + ceil32(return_data.size) + 224 len floor32(mem[_81 + ceil32(return_data.size) + 96])] = mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_81 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _252) + _81 + ceil32(return_data.size) + 192 len (32 * mem[_81 + ceil32(return_data.size) + 96]) + 32]
    mem[(32 * _252) + _81 + ceil32(return_data.size) + 160] = return_data.size
    mem[(32 * _252) + _81 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                    mem[(32 * _252) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
    mem[(32 * _252) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 32
    mem[(32 * _252) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[_81 + ceil32(return_data.size) + 96]
    mem[(32 * _252) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 225 len floor32(mem[_81 + ceil32(return_data.size) + 96])] = mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_81 + ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _252) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len (32 * mem[_81 + ceil32(return_data.size) + 96]) + 32], 
}

function swapBUSDToTokens(address[] arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = 96
    t = 96
    t = 0
    while idx < arg1.length:
        if not BUSDAddress:
            _506 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_506]
            mem[_506 + 32] = WBNBAddress
            require 1 < mem[_506]
            mem[_506 + 64] = BUSDAddress
            if idx:
                mem[_506 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_506 + 100] = arg3
                mem[_506 + 132] = 64
                mem[_506 + 164] = mem[_506]
                s = 0
                while s < 32 * mem[_506]:
                    mem[_506 + s + 196] = mem[_506 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_506 + 164 len (32 * mem[_506]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_506 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _506 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1139 = mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96] <= 4294967296 and mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96]) + 32 <= return_data.size
                mem[_506 + ceil32(return_data.size) + 96] = mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96]
                _1161 = mem[_1139 + _506 + 96]
                s = 0
                while s < 32 * _1161:
                    mem[_506 + ceil32(return_data.size) + s + 128] = mem[_1139 + _506 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1161) + _506 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_506 + ceil32(return_data.size) + 96]
                if mem[_506 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_506 + ceil32(return_data.size) + 96]
                    if mem[_506 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_506 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_506 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _506 + ceil32(return_data.size) + 96
                    t = _506
                    t = t
                    continue 
                require 1 < mem[_506 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_506 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_506 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_506 + 100] = arg3
                mem[_506 + 132] = 64
                mem[_506 + 164] = mem[_506]
                s = 0
                while s < 32 * mem[_506]:
                    mem[_506 + s + 196] = mem[_506 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_506 + 164 len (32 * mem[_506]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_506 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _506 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1141 = mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96] <= 4294967296 and mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96]) + 32 <= return_data.size
                mem[_506 + ceil32(return_data.size) + 96] = mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96]
                _1162 = mem[_1141 + _506 + 96]
                s = 0
                while s < 32 * _1162:
                    mem[_506 + ceil32(return_data.size) + s + 128] = mem[_1141 + _506 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1162) + _506 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_506 + ceil32(return_data.size) + 96]
                if mem[_506 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_506 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_506 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_506 + ceil32(return_data.size) + 96]
            if mem[_506 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_506 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_506 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _506 + ceil32(return_data.size) + 96
            t = _506
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        if not arg2:
            _509 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_509]
            mem[_509 + 32] = BUSDAddress
            require 1 < mem[_509]
            mem[_509 + 64] = WBNBAddress
            if idx:
                mem[_509 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_509 + 100] = arg3
                mem[_509 + 132] = 64
                mem[_509 + 164] = mem[_509]
                s = 0
                while s < 32 * mem[_509]:
                    mem[_509 + s + 196] = mem[_509 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_509 + 164 len (32 * mem[_509]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_509 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _509 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1135 = mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96] <= 4294967296 and mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96]) + 32 <= return_data.size
                mem[_509 + ceil32(return_data.size) + 96] = mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96]
                _1159 = mem[_1135 + _509 + 96]
                s = 0
                while s < 32 * _1159:
                    mem[_509 + ceil32(return_data.size) + s + 128] = mem[_1135 + _509 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1159) + _509 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_509 + ceil32(return_data.size) + 96]
                if mem[_509 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_509 + ceil32(return_data.size) + 96]
                    if mem[_509 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_509 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_509 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _509 + ceil32(return_data.size) + 96
                    t = _509
                    t = t
                    continue 
                require 1 < mem[_509 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_509 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_509 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_509 + 100] = arg3
                mem[_509 + 132] = 64
                mem[_509 + 164] = mem[_509]
                s = 0
                while s < 32 * mem[_509]:
                    mem[_509 + s + 196] = mem[_509 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_509 + 164 len (32 * mem[_509]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_509 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _509 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1137 = mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96] <= 4294967296 and mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96]) + 32 <= return_data.size
                mem[_509 + ceil32(return_data.size) + 96] = mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96]
                _1160 = mem[_1137 + _509 + 96]
                s = 0
                while s < 32 * _1160:
                    mem[_509 + ceil32(return_data.size) + s + 128] = mem[_1137 + _509 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1160) + _509 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_509 + ceil32(return_data.size) + 96]
                if mem[_509 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_509 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_509 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_509 + ceil32(return_data.size) + 96]
            if mem[_509 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_509 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_509 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _509 + ceil32(return_data.size) + 96
            t = _509
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        _508 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        require 0 < mem[_508]
        mem[_508 + 32] = BUSDAddress
        require 1 < mem[_508]
        mem[_508 + 64] = WBNBAddress
        require 2 < mem[_508]
        mem[_508 + 96] = arg2
        if idx:
            mem[_508 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_508 + 132] = arg3
            mem[_508 + 164] = 64
            mem[_508 + 196] = mem[_508]
            s = 0
            while s < 32 * mem[_508]:
                mem[_508 + s + 228] = mem[_508 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[_508 + 196 len (32 * mem[_508]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_508 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _508 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1131 = mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32
            require mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128] <= 4294967296 and mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128]) + 32 <= return_data.size
            mem[_508 + ceil32(return_data.size) + 128] = mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128]
            _1157 = mem[_1131 + _508 + 128]
            s = 0
            while s < 32 * _1157:
                mem[_508 + ceil32(return_data.size) + s + 160] = mem[_1131 + _508 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1157) + _508 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_508 + ceil32(return_data.size) + 128]
            if mem[_508 + ceil32(return_data.size) + 192] <= mem[160]:
                require 0 < mem[96]
                require 1 < mem[_508 + ceil32(return_data.size) + 128]
                if mem[_508 + ceil32(return_data.size) + 192] < mem[128]:
                    require 1 < mem[_508 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[_508 + ceil32(return_data.size) + 192]
                idx = idx + 1
                s = _508 + ceil32(return_data.size) + 128
                t = _508
                t = t
                continue 
            require 1 < mem[_508 + ceil32(return_data.size) + 128]
            require 1 < mem[96]
            mem[160] = mem[_508 + ceil32(return_data.size) + 192]
            require idx < arg1.length
        else:
            require 0 < mem[s]
            require 1 < mem[96]
            mem[160] = mem[s + 32]
            require 0 < mem[s]
            require 0 < mem[96]
            mem[128] = mem[s + 32]
            require idx < arg1.length
            mem[_508 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_508 + 132] = arg3
            mem[_508 + 164] = 64
            mem[_508 + 196] = mem[_508]
            s = 0
            while s < 32 * mem[_508]:
                mem[_508 + s + 228] = mem[_508 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[_508 + 196 len (32 * mem[_508]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_508 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _508 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1133 = mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32
            require mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128] <= 4294967296 and mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128]) + 32 <= return_data.size
            mem[_508 + ceil32(return_data.size) + 128] = mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128]
            _1158 = mem[_1133 + _508 + 128]
            s = 0
            while s < 32 * _1158:
                mem[_508 + ceil32(return_data.size) + s + 160] = mem[_1133 + _508 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1158) + _508 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_508 + ceil32(return_data.size) + 128]
            if mem[_508 + ceil32(return_data.size) + 192] > mem[160]:
                require 1 < mem[_508 + ceil32(return_data.size) + 128]
                require 1 < mem[96]
                mem[160] = mem[_508 + ceil32(return_data.size) + 192]
                require idx < arg1.length
        require 0 < mem[96]
        require 1 < mem[_508 + ceil32(return_data.size) + 128]
        if mem[_508 + ceil32(return_data.size) + 192] < mem[128]:
            require 1 < mem[_508 + ceil32(return_data.size) + 128]
            require 0 < mem[96]
            mem[128] = mem[_508 + ceil32(return_data.size) + 192]
        idx = idx + 1
        s = _508 + ceil32(return_data.size) + 128
        t = _508
        t = address(cd[((32 * idx) + arg1 + 36)])
        continue 
    _507 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    require 0 < mem[_507]
    mem[_507 + 32] = BUSDAddress
    require 1 < mem[_507]
    mem[_507 + 64] = WBNBAddress
    require 2 < mem[_507]
    mem[_507 + 96] = arg2
    mem[_507 + 164] = address(t)
    mem[_507 + 196] = arg3
    mem[_507 + 128] = 68
    mem[_507 + 164 len 28] = address(t) << 64
    mem[_507 + 160 len 4] = approve(address rg1, uint256 rg2)
    mem[_507 + 228 len 64] = approve(address rg1, uint256 rg2), address(t) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[_507 + 320 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[_507 + 292 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not mem[96]:
            mem[_507 + 264] = msg.sender
            mem[_507 + 296] = this.address
            mem[_507 + 328] = arg3
            mem[_507 + 228] = 100
            mem[64] = _507 + 360
            mem[_507 + 260 len 4] = unknown_0x23b872dd(?????)
            mem[_507 + 360 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
            mem[_507 + 484 len 4] = uint32(arg3)
            call arg2 with:
                 gas gas_remaining wei
                args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_507 + 456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_507 + 464 len 20],
                                uint32(arg3),
                                mem[_507 + 488 len 4]
                if not mem[96]:
                    mem[_507 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_507 + 364] = arg3
                    mem[_507 + 396] = 0
                    mem[_507 + 460] = msg.sender
                    mem[_507 + 492] = block.timestamp + 60
                    mem[_507 + 428] = 160
                    mem[_507 + 524] = mem[_507]
                    mem[_507 + 556 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                    require ext_code.size(address(t))
                    call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + 524 len (32 * mem[_507]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_507 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _507 + ceil32(return_data.size) + 360
                    require return_data.size >= 32
                    _2163 = mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32
                    require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360] <= 4294967296 and mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]) + 32 <= return_data.size
                    mem[_507 + ceil32(return_data.size) + 360] = mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]
                    _2211 = mem[_2163 + _507 + 360]
                    mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_2163 + _507 + 360])] = mem[_2163 + _507 + 392 len floor32(mem[_2163 + _507 + 360])]
                    mem[(32 * _2211) + _507 + ceil32(return_data.size) + 392] = 32
                    mem[(32 * _2211) + _507 + ceil32(return_data.size) + 424] = mem[_507 + ceil32(return_data.size) + 360]
                    mem[(32 * _2211) + _507 + ceil32(return_data.size) + 456 len floor32(mem[_507 + ceil32(return_data.size) + 360])] = mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_507 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _2211) + _507 + ceil32(return_data.size) + 424 len (32 * mem[_507 + ceil32(return_data.size) + 360]) + 32], 
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_507 + 464 len 20],
                                uint32(arg3),
                                mem[_507 + 488 len 4]
                mem[_507 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_507 + 364] = arg3
                mem[_507 + 396] = 0
                mem[_507 + 460] = msg.sender
                mem[_507 + 492] = block.timestamp + 60
                mem[_507 + 428] = 160
                mem[_507 + 524] = mem[_507]
                mem[_507 + 556 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + 524 len (32 * mem[_507]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_507 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _507 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _2165 = mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32
                require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360] <= 4294967296 and mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]) + 32 <= return_data.size
                mem[_507 + ceil32(return_data.size) + 360] = mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]
                _2212 = mem[_2165 + _507 + 360]
                mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_2165 + _507 + 360])] = mem[_2165 + _507 + 392 len floor32(mem[_2165 + _507 + 360])]
                mem[(32 * _2212) + _507 + ceil32(return_data.size) + 392] = 32
                mem[(32 * _2212) + _507 + ceil32(return_data.size) + 424] = mem[_507 + ceil32(return_data.size) + 360]
                mem[(32 * _2212) + _507 + ceil32(return_data.size) + 456 len floor32(mem[_507 + ceil32(return_data.size) + 360])] = mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_507 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _2212) + _507 + ceil32(return_data.size) + 424 len (32 * mem[_507 + ceil32(return_data.size) + 360]) + 32], 
            mem[64] = _507 + ceil32(return_data.size) + 361
            mem[_507 + 360] = return_data.size
            mem[_507 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_507 + ceil32(return_data.size) + 465 len 28]
            if not return_data.size:
                mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_507 + ceil32(return_data.size) + 365] = arg3
                mem[_507 + ceil32(return_data.size) + 397] = 0
                mem[_507 + ceil32(return_data.size) + 461] = msg.sender
                mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_507 + ceil32(return_data.size) + 429] = 160
                mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
                mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _2167 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
                require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
                _2213 = mem[_2167 + _507 + ceil32(return_data.size) + 361]
                mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2167 + _507 + ceil32(return_data.size) + 361])] = mem[_2167 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2167 + _507 + ceil32(return_data.size) + 361])]
                mem[(32 * _2213) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                mem[(32 * _2213) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _2213) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _2213) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            require return_data.size >= 32
            if not mem[_507 + 392]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_507 + ceil32(return_data.size) + 465 len 28]
            mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 365] = arg3
            mem[_507 + ceil32(return_data.size) + 397] = 0
            mem[_507 + ceil32(return_data.size) + 461] = msg.sender
            mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_507 + ceil32(return_data.size) + 429] = 160
            mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
            mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _2169 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
            _2214 = mem[_2169 + _507 + ceil32(return_data.size) + 361]
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2169 + _507 + ceil32(return_data.size) + 361])] = mem[_2169 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2169 + _507 + ceil32(return_data.size) + 361])]
            mem[(32 * _2214) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _2214) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _2214) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _2214) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[_507 + 264] = msg.sender
        mem[_507 + 296] = this.address
        mem[_507 + 328] = arg3
        mem[_507 + 228] = 100
        mem[64] = _507 + 360
        mem[_507 + 260 len 4] = unknown_0x23b872dd(?????)
        mem[_507 + 360 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[_507 + 484 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_507 + 456 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_507 + 464 len 20],
                            uint32(arg3),
                            mem[_507 + 488 len 4]
            if not mem[96]:
                mem[_507 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_507 + 364] = arg3
                mem[_507 + 396] = 0
                mem[_507 + 460] = msg.sender
                mem[_507 + 492] = block.timestamp + 60
                mem[_507 + 428] = 160
                mem[_507 + 524] = mem[_507]
                mem[_507 + 556 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + 524 len (32 * mem[_507]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_507 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _507 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _2171 = mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32
                require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360] <= 4294967296 and mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]) + 32 <= return_data.size
                mem[_507 + ceil32(return_data.size) + 360] = mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]
                _2215 = mem[_2171 + _507 + 360]
                mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_2171 + _507 + 360])] = mem[_2171 + _507 + 392 len floor32(mem[_2171 + _507 + 360])]
                mem[(32 * _2215) + _507 + ceil32(return_data.size) + 392] = 32
                mem[(32 * _2215) + _507 + ceil32(return_data.size) + 424] = mem[_507 + ceil32(return_data.size) + 360]
                mem[(32 * _2215) + _507 + ceil32(return_data.size) + 456 len floor32(mem[_507 + ceil32(return_data.size) + 360])] = mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_507 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _2215) + _507 + ceil32(return_data.size) + 424 len (32 * mem[_507 + ceil32(return_data.size) + 360]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_507 + 464 len 20],
                            uint32(arg3),
                            mem[_507 + 488 len 4]
            mem[_507 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + 364] = arg3
            mem[_507 + 396] = 0
            mem[_507 + 460] = msg.sender
            mem[_507 + 492] = block.timestamp + 60
            mem[_507 + 428] = 160
            mem[_507 + 524] = mem[_507]
            mem[_507 + 556 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + 524 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + 360
            require return_data.size >= 32
            _2173 = mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360] <= 4294967296 and mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + 360] = mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]
            _2216 = mem[_2173 + _507 + 360]
            mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_2173 + _507 + 360])] = mem[_2173 + _507 + 392 len floor32(mem[_2173 + _507 + 360])]
            mem[(32 * _2216) + _507 + ceil32(return_data.size) + 392] = 32
            mem[(32 * _2216) + _507 + ceil32(return_data.size) + 424] = mem[_507 + ceil32(return_data.size) + 360]
            mem[(32 * _2216) + _507 + ceil32(return_data.size) + 456 len floor32(mem[_507 + ceil32(return_data.size) + 360])] = mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_507 + ceil32(return_data.size) + 360])]
            return 32, mem[(32 * _2216) + _507 + ceil32(return_data.size) + 424 len (32 * mem[_507 + ceil32(return_data.size) + 360]) + 32], 
        mem[64] = _507 + ceil32(return_data.size) + 361
        mem[_507 + 360] = return_data.size
        mem[_507 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_507 + ceil32(return_data.size) + 465 len 28]
        if not return_data.size:
            mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 365] = arg3
            mem[_507 + ceil32(return_data.size) + 397] = 0
            mem[_507 + ceil32(return_data.size) + 461] = msg.sender
            mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_507 + ceil32(return_data.size) + 429] = 160
            mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
            mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _2175 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
            _2217 = mem[_2175 + _507 + ceil32(return_data.size) + 361]
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2175 + _507 + ceil32(return_data.size) + 361])] = mem[_2175 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2175 + _507 + ceil32(return_data.size) + 361])]
            mem[(32 * _2217) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _2217) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _2217) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _2217) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require return_data.size >= 32
        if not mem[_507 + 392]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_507 + ceil32(return_data.size) + 465 len 28]
        mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_507 + ceil32(return_data.size) + 365] = arg3
        mem[_507 + ceil32(return_data.size) + 397] = 0
        mem[_507 + ceil32(return_data.size) + 461] = msg.sender
        mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_507 + ceil32(return_data.size) + 429] = 160
        mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
        mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _2177 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
        require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
        _2218 = mem[_2177 + _507 + ceil32(return_data.size) + 361]
        mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2177 + _507 + ceil32(return_data.size) + 361])] = mem[_2177 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2177 + _507 + ceil32(return_data.size) + 361])]
        mem[(32 * _2218) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[(32 * _2218) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _2218) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
        return 32, mem[(32 * _2218) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
    mem[_507 + 228] = return_data.size
    mem[_507 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    if not return_data.size:
        mem[_507 + ceil32(return_data.size) + 265] = msg.sender
        mem[_507 + ceil32(return_data.size) + 297] = this.address
        mem[_507 + ceil32(return_data.size) + 329] = arg3
        mem[_507 + ceil32(return_data.size) + 229] = 100
        mem[64] = _507 + ceil32(return_data.size) + 361
        mem[_507 + ceil32(return_data.size) + 261 len 4] = unknown_0x23b872dd(?????)
        mem[_507 + ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[_507 + ceil32(return_data.size) + 485 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_507 + ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_507 + ceil32(return_data.size) + 465 len 20],
                            uint32(arg3),
                            mem[_507 + ceil32(return_data.size) + 489 len 4]
            if not mem[96]:
                mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_507 + ceil32(return_data.size) + 365] = arg3
                mem[_507 + ceil32(return_data.size) + 397] = 0
                mem[_507 + ceil32(return_data.size) + 461] = msg.sender
                mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_507 + ceil32(return_data.size) + 429] = 160
                mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
                mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _2179 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
                require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
                _2219 = mem[_2179 + _507 + ceil32(return_data.size) + 361]
                mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2179 + _507 + ceil32(return_data.size) + 361])] = mem[_2179 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2179 + _507 + ceil32(return_data.size) + 361])]
                mem[(32 * _2219) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                mem[(32 * _2219) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _2219) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _2219) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_507 + ceil32(return_data.size) + 465 len 20],
                            uint32(arg3),
                            mem[_507 + ceil32(return_data.size) + 489 len 4]
            mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 365] = arg3
            mem[_507 + ceil32(return_data.size) + 397] = 0
            mem[_507 + ceil32(return_data.size) + 461] = msg.sender
            mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_507 + ceil32(return_data.size) + 429] = 160
            mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
            mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _2181 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
            _2220 = mem[_2181 + _507 + ceil32(return_data.size) + 361]
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2181 + _507 + ceil32(return_data.size) + 361])] = mem[_2181 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2181 + _507 + ceil32(return_data.size) + 361])]
            mem[(32 * _2220) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _2220) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _2220) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _2220) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        mem[64] = _507 + (2 * ceil32(return_data.size)) + 362
        mem[_507 + ceil32(return_data.size) + 361] = return_data.size
        mem[_507 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_507 + (2 * ceil32(return_data.size)) + 466 len 28]
        if not return_data.size:
            mem[_507 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + (2 * ceil32(return_data.size)) + 366] = arg3
            mem[_507 + (2 * ceil32(return_data.size)) + 398] = 0
            mem[_507 + (2 * ceil32(return_data.size)) + 462] = msg.sender
            mem[_507 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
            mem[_507 + (2 * ceil32(return_data.size)) + 430] = 160
            mem[_507 + (2 * ceil32(return_data.size)) + 526] = mem[_507]
            mem[_507 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + (4 * ceil32(return_data.size)) + 362
            require return_data.size >= 32
            _2183 = mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
            mem[_507 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]
            _2221 = mem[_2183 + _507 + (2 * ceil32(return_data.size)) + 362]
            mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_2183 + _507 + (2 * ceil32(return_data.size)) + 362])] = mem[_2183 + _507 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_2183 + _507 + (2 * ceil32(return_data.size)) + 362])]
            mem[(32 * _2221) + _507 + (4 * ceil32(return_data.size)) + 394] = 32
            mem[(32 * _2221) + _507 + (4 * ceil32(return_data.size)) + 426] = mem[_507 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _2221) + _507 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])] = mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])]
            return 32, mem[(32 * _2221) + _507 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_507 + (4 * ceil32(return_data.size)) + 362]) + 32], 
        require return_data.size >= 32
        if not mem[_507 + ceil32(return_data.size) + 393]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_507 + (2 * ceil32(return_data.size)) + 466 len 28]
        mem[_507 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_507 + (2 * ceil32(return_data.size)) + 366] = arg3
        mem[_507 + (2 * ceil32(return_data.size)) + 398] = 0
        mem[_507 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_507 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_507 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_507 + (2 * ceil32(return_data.size)) + 526] = mem[_507]
        mem[_507 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_507]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_507 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _507 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _2185 = mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
        require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_507 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]
        _2222 = mem[_2185 + _507 + (2 * ceil32(return_data.size)) + 362]
        mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_2185 + _507 + (2 * ceil32(return_data.size)) + 362])] = mem[_2185 + _507 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_2185 + _507 + (2 * ceil32(return_data.size)) + 362])]
        mem[(32 * _2222) + _507 + (4 * ceil32(return_data.size)) + 394] = 32
        mem[(32 * _2222) + _507 + (4 * ceil32(return_data.size)) + 426] = mem[_507 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _2222) + _507 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])] = mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])]
        return 32, mem[(32 * _2222) + _507 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_507 + (4 * ceil32(return_data.size)) + 362]) + 32], 
    require return_data.size >= 32
    if not mem[_507 + 260]:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    mem[_507 + ceil32(return_data.size) + 265] = msg.sender
    mem[_507 + ceil32(return_data.size) + 297] = this.address
    mem[_507 + ceil32(return_data.size) + 329] = arg3
    mem[_507 + ceil32(return_data.size) + 229] = 100
    mem[64] = _507 + ceil32(return_data.size) + 361
    mem[_507 + ceil32(return_data.size) + 261 len 4] = unknown_0x23b872dd(?????)
    mem[_507 + ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[_507 + ceil32(return_data.size) + 485 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_507 + ceil32(return_data.size) + 457 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_507 + ceil32(return_data.size) + 465 len 20],
                        uint32(arg3),
                        mem[_507 + ceil32(return_data.size) + 489 len 4]
        if not mem[96]:
            mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 365] = arg3
            mem[_507 + ceil32(return_data.size) + 397] = 0
            mem[_507 + ceil32(return_data.size) + 461] = msg.sender
            mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_507 + ceil32(return_data.size) + 429] = 160
            mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
            mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _2187 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
            _2223 = mem[_2187 + _507 + ceil32(return_data.size) + 361]
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2187 + _507 + ceil32(return_data.size) + 361])] = mem[_2187 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2187 + _507 + ceil32(return_data.size) + 361])]
            mem[(32 * _2223) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _2223) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _2223) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _2223) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_507 + ceil32(return_data.size) + 465 len 20],
                        uint32(arg3),
                        mem[_507 + ceil32(return_data.size) + 489 len 4]
        mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_507 + ceil32(return_data.size) + 365] = arg3
        mem[_507 + ceil32(return_data.size) + 397] = 0
        mem[_507 + ceil32(return_data.size) + 461] = msg.sender
        mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_507 + ceil32(return_data.size) + 429] = 160
        mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
        mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _2189 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
        require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
        _2224 = mem[_2189 + _507 + ceil32(return_data.size) + 361]
        mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2189 + _507 + ceil32(return_data.size) + 361])] = mem[_2189 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2189 + _507 + ceil32(return_data.size) + 361])]
        mem[(32 * _2224) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[(32 * _2224) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _2224) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
        return 32, mem[(32 * _2224) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
    mem[64] = _507 + (2 * ceil32(return_data.size)) + 362
    mem[_507 + ceil32(return_data.size) + 361] = return_data.size
    mem[_507 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_507 + (2 * ceil32(return_data.size)) + 466 len 28]
    if not return_data.size:
        mem[_507 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_507 + (2 * ceil32(return_data.size)) + 366] = arg3
        mem[_507 + (2 * ceil32(return_data.size)) + 398] = 0
        mem[_507 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_507 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_507 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_507 + (2 * ceil32(return_data.size)) + 526] = mem[_507]
        mem[_507 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_507]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_507 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _507 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _2191 = mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
        require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_507 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]
        _2225 = mem[_2191 + _507 + (2 * ceil32(return_data.size)) + 362]
        mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_2191 + _507 + (2 * ceil32(return_data.size)) + 362])] = mem[_2191 + _507 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_2191 + _507 + (2 * ceil32(return_data.size)) + 362])]
        mem[(32 * _2225) + _507 + (4 * ceil32(return_data.size)) + 394] = 32
        mem[(32 * _2225) + _507 + (4 * ceil32(return_data.size)) + 426] = mem[_507 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _2225) + _507 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])] = mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])]
        return 32, mem[(32 * _2225) + _507 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_507 + (4 * ceil32(return_data.size)) + 362]) + 32], 
    require return_data.size >= 32
    if not mem[_507 + ceil32(return_data.size) + 393]:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_507 + (2 * ceil32(return_data.size)) + 466 len 28]
    mem[_507 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_507 + (2 * ceil32(return_data.size)) + 366] = arg3
    mem[_507 + (2 * ceil32(return_data.size)) + 398] = 0
    mem[_507 + (2 * ceil32(return_data.size)) + 462] = msg.sender
    mem[_507 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
    mem[_507 + (2 * ceil32(return_data.size)) + 430] = 160
    mem[_507 + (2 * ceil32(return_data.size)) + 526] = mem[_507]
    mem[_507 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
    require ext_code.size(address(t))
    call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_507]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_507 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _507 + (4 * ceil32(return_data.size)) + 362
    require return_data.size >= 32
    _2193 = mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
    require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
    mem[_507 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]
    _2226 = mem[_2193 + _507 + (2 * ceil32(return_data.size)) + 362]
    mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_2193 + _507 + (2 * ceil32(return_data.size)) + 362])] = mem[_2193 + _507 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_2193 + _507 + (2 * ceil32(return_data.size)) + 362])]
    mem[(32 * _2226) + _507 + (4 * ceil32(return_data.size)) + 394] = 32
    mem[(32 * _2226) + _507 + (4 * ceil32(return_data.size)) + 426] = mem[_507 + (4 * ceil32(return_data.size)) + 362]
    mem[(32 * _2226) + _507 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])] = mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])]
    return 32, mem[(32 * _2226) + _507 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_507 + (4 * ceil32(return_data.size)) + 362]) + 32], 
}

function bestTrade(address[] arg1, address arg2, address arg3, uint256 arg4, bool arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = 96
    t = 96
    t = 0
    while idx < arg1.length:
        if arg2:
            if arg3:
                _306 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if not arg5:
                    require 0 < mem[_306]
                    mem[_306 + 32] = BUSDAddress
                    require 1 < mem[_306]
                    mem[_306 + 64] = WBNBAddress
                    require 2 < mem[_306]
                    mem[_306 + 96] = arg3
                    if idx:
                        if not arg5:
                            mem[_306 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_306 + 132] = arg4
                            mem[_306 + 164] = 64
                            mem[_306 + 196] = mem[_306]
                            s = 0
                            while s < 32 * mem[_306]:
                                mem[_306 + s + 228] = mem[_306 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_306 + 196 len (32 * mem[_306]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_306 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _306 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _904 = mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128] <= 4294967296 and mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]) + 32 <= return_data.size
                                mem[_306 + ceil32(return_data.size) + 128] = mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]
                                _952 = mem[_904 + _306 + 128]
                                s = 0
                                while s < 32 * _952:
                                    mem[_306 + ceil32(return_data.size) + s + 160] = mem[_904 + _306 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _952) + _306 + ceil32(return_data.size) + 160
                                require 1 < mem[96]
                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                if mem[_306 + ceil32(return_data.size) + 192] <= mem[160]:
                                    require 0 < mem[96]
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 192] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = t
                                        continue 
                                    else:
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = t
                                        continue 
                                else:
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    require 1 < mem[96]
                                    mem[160] = mem[_306 + ceil32(return_data.size) + 192]
                                    require idx < arg1.length
                                    require 0 < mem[96]
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 192] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                        else:
                            mem[_306 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[_306 + 132] = arg4
                            mem[_306 + 164] = 64
                            mem[_306 + 196] = mem[_306]
                            s = 0
                            while s < 32 * mem[_306]:
                                mem[_306 + s + 228] = mem[_306 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_306 + 196 len (32 * mem[_306]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_306 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _306 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _906 = mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128] <= 4294967296 and mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]) + 32 <= return_data.size
                                mem[_306 + ceil32(return_data.size) + 128] = mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]
                                _953 = mem[_906 + _306 + 128]
                                s = 0
                                while s < 32 * _953:
                                    mem[_306 + ceil32(return_data.size) + s + 160] = mem[_906 + _306 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _953) + _306 + ceil32(return_data.size) + 160
                                require 1 < mem[96]
                                require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                if mem[_306 + ceil32(return_data.size) + 160] <= mem[160]:
                                    require 0 < mem[96]
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = t
                                        continue 
                                    else:
                                        require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                        require idx < arg1.length
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                else:
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    require 1 < mem[96]
                                    mem[160] = mem[_306 + ceil32(return_data.size) + 160]
                                    require 0 < mem[96]
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = t
                                        continue 
                                    else:
                                        require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                        require idx < arg1.length
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                    else:
                        require 0 < mem[s]
                        require 1 < mem[96]
                        mem[160] = mem[s + 32]
                        require 0 < mem[s]
                        require 0 < mem[96]
                        mem[128] = mem[s + 32]
                        require idx < arg1.length
                        if not arg5:
                            mem[_306 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_306 + 132] = arg4
                            mem[_306 + 164] = 64
                            mem[_306 + 196] = mem[_306]
                            s = 0
                            while s < 32 * mem[_306]:
                                mem[_306 + s + 228] = mem[_306 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_306 + 196 len (32 * mem[_306]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_306 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _306 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _908 = mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128] <= 4294967296 and mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]) + 32 <= return_data.size
                                mem[_306 + ceil32(return_data.size) + 128] = mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]
                                _954 = mem[_908 + _306 + 128]
                                s = 0
                                while s < 32 * _954:
                                    mem[_306 + ceil32(return_data.size) + s + 160] = mem[_908 + _306 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _954) + _306 + ceil32(return_data.size) + 160
                                require 1 < mem[96]
                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                if mem[_306 + ceil32(return_data.size) + 192] <= mem[160]:
                                    require 0 < mem[96]
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 192] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                else:
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    require 1 < mem[96]
                                    mem[160] = mem[_306 + ceil32(return_data.size) + 192]
                                    require idx < arg1.length
                                    require 0 < mem[96]
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 192] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                        else:
                            mem[_306 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[_306 + 132] = arg4
                            mem[_306 + 164] = 64
                            mem[_306 + 196] = mem[_306]
                            s = 0
                            while s < 32 * mem[_306]:
                                mem[_306 + s + 228] = mem[_306 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_306 + 196 len (32 * mem[_306]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_306 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _306 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _910 = mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128] <= 4294967296 and mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]) + 32 <= return_data.size
                                mem[_306 + ceil32(return_data.size) + 128] = mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]
                                _955 = mem[_910 + _306 + 128]
                                s = 0
                                while s < 32 * _955:
                                    mem[_306 + ceil32(return_data.size) + s + 160] = mem[_910 + _306 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _955) + _306 + ceil32(return_data.size) + 160
                                require 1 < mem[96]
                                require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                if mem[_306 + ceil32(return_data.size) + 160] <= mem[160]:
                                    require 0 < mem[96]
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                        require idx < arg1.length
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                else:
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    require 1 < mem[96]
                                    mem[160] = mem[_306 + ceil32(return_data.size) + 160]
                                    require 0 < mem[96]
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                        require idx < arg1.length
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                else:
                    require 0 < mem[_306]
                    mem[_306 + 32] = arg2
                    require 1 < mem[_306]
                    mem[_306 + 64] = WBNBAddress
                    require 2 < mem[_306]
                    mem[_306 + 96] = BUSDAddress
                    if idx:
                        if not arg5:
                            mem[_306 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_306 + 132] = arg4
                            mem[_306 + 164] = 64
                            mem[_306 + 196] = mem[_306]
                            s = 0
                            while s < 32 * mem[_306]:
                                mem[_306 + s + 228] = mem[_306 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_306 + 196 len (32 * mem[_306]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_306 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _306 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _912 = mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128] <= 4294967296 and mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]) + 32 <= return_data.size
                                mem[_306 + ceil32(return_data.size) + 128] = mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]
                                _956 = mem[_912 + _306 + 128]
                                s = 0
                                while s < 32 * _956:
                                    mem[_306 + ceil32(return_data.size) + s + 160] = mem[_912 + _306 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _956) + _306 + ceil32(return_data.size) + 160
                                require 1 < mem[96]
                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                if mem[_306 + ceil32(return_data.size) + 192] <= mem[160]:
                                    require 0 < mem[96]
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 192] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = t
                                        continue 
                                    else:
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = t
                                        continue 
                                else:
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    require 1 < mem[96]
                                    mem[160] = mem[_306 + ceil32(return_data.size) + 192]
                                    require idx < arg1.length
                                    require 0 < mem[96]
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 192] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                        else:
                            mem[_306 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[_306 + 132] = arg4
                            mem[_306 + 164] = 64
                            mem[_306 + 196] = mem[_306]
                            s = 0
                            while s < 32 * mem[_306]:
                                mem[_306 + s + 228] = mem[_306 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_306 + 196 len (32 * mem[_306]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_306 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _306 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _914 = mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128] <= 4294967296 and mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]) + 32 <= return_data.size
                                mem[_306 + ceil32(return_data.size) + 128] = mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]
                                _957 = mem[_914 + _306 + 128]
                                s = 0
                                while s < 32 * _957:
                                    mem[_306 + ceil32(return_data.size) + s + 160] = mem[_914 + _306 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _957) + _306 + ceil32(return_data.size) + 160
                                require 1 < mem[96]
                                require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                if mem[_306 + ceil32(return_data.size) + 160] <= mem[160]:
                                    require 0 < mem[96]
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = t
                                        continue 
                                    else:
                                        require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                        require idx < arg1.length
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                else:
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    require 1 < mem[96]
                                    mem[160] = mem[_306 + ceil32(return_data.size) + 160]
                                    require 0 < mem[96]
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = t
                                        continue 
                                    else:
                                        require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                        require idx < arg1.length
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                    else:
                        require 0 < mem[s]
                        require 1 < mem[96]
                        mem[160] = mem[s + 32]
                        require 0 < mem[s]
                        require 0 < mem[96]
                        mem[128] = mem[s + 32]
                        require idx < arg1.length
                        if not arg5:
                            mem[_306 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_306 + 132] = arg4
                            mem[_306 + 164] = 64
                            mem[_306 + 196] = mem[_306]
                            s = 0
                            while s < 32 * mem[_306]:
                                mem[_306 + s + 228] = mem[_306 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_306 + 196 len (32 * mem[_306]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_306 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _306 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _916 = mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128] <= 4294967296 and mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]) + 32 <= return_data.size
                                mem[_306 + ceil32(return_data.size) + 128] = mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]
                                _958 = mem[_916 + _306 + 128]
                                s = 0
                                while s < 32 * _958:
                                    mem[_306 + ceil32(return_data.size) + s + 160] = mem[_916 + _306 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _958) + _306 + ceil32(return_data.size) + 160
                                require 1 < mem[96]
                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                if mem[_306 + ceil32(return_data.size) + 192] <= mem[160]:
                                    require 0 < mem[96]
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 192] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                else:
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    require 1 < mem[96]
                                    mem[160] = mem[_306 + ceil32(return_data.size) + 192]
                                    require idx < arg1.length
                                    require 0 < mem[96]
                                    require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 192] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                        else:
                            mem[_306 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[_306 + 132] = arg4
                            mem[_306 + 164] = 64
                            mem[_306 + 196] = mem[_306]
                            s = 0
                            while s < 32 * mem[_306]:
                                mem[_306 + s + 228] = mem[_306 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_306 + 196 len (32 * mem[_306]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_306 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _306 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _918 = mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128] <= 4294967296 and mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]) + 32 <= return_data.size
                                mem[_306 + ceil32(return_data.size) + 128] = mem[mem[_306 + 128 len 4], Mask(224, 32, arg4) >> 32 + _306 + 128]
                                _959 = mem[_918 + _306 + 128]
                                s = 0
                                while s < 32 * _959:
                                    mem[_306 + ceil32(return_data.size) + s + 160] = mem[_918 + _306 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _959) + _306 + ceil32(return_data.size) + 160
                                require 1 < mem[96]
                                require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                if mem[_306 + ceil32(return_data.size) + 160] <= mem[160]:
                                    require 0 < mem[96]
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                        require idx < arg1.length
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                else:
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    require 1 < mem[96]
                                    mem[160] = mem[_306 + ceil32(return_data.size) + 160]
                                    require 0 < mem[96]
                                    require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
                                    else:
                                        require 0 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                        require idx < arg1.length
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
            else:
                _307 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_307]
                mem[_307 + 32] = BUSDAddress
                require 1 < mem[_307]
                mem[_307 + 64] = WBNBAddress
                if idx:
                    if not arg5:
                        mem[_307 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_307 + 100] = arg4
                        mem[_307 + 132] = 64
                        mem[_307 + 164] = mem[_307]
                        s = 0
                        while s < 32 * mem[_307]:
                            mem[_307 + s + 196] = mem[_307 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[_307 + 164 len (32 * mem[_307]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_307 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _307 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _920 = mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32
                            require mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                            require mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                            require mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96] <= 4294967296 and mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96]) + 32 <= return_data.size
                            mem[_307 + ceil32(return_data.size) + 96] = mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96]
                            _960 = mem[_920 + _307 + 96]
                            s = 0
                            while s < 32 * _960:
                                mem[_307 + ceil32(return_data.size) + s + 128] = mem[_920 + _307 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _960) + _307 + ceil32(return_data.size) + 128
                            require 1 < mem[96]
                            require 1 < mem[_307 + ceil32(return_data.size) + 96]
                            if mem[_307 + ceil32(return_data.size) + 160] <= mem[160]:
                                require 0 < mem[96]
                                require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 160] >= mem[128]:
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = t
                                    continue 
                                else:
                                    require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 160]
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = t
                                    continue 
                            else:
                                require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                require 1 < mem[96]
                                mem[160] = mem[_307 + ceil32(return_data.size) + 160]
                                require idx < arg1.length
                                require 0 < mem[96]
                                require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 160] >= mem[128]:
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                                else:
                                    require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 160]
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                    else:
                        mem[_307 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_307 + 100] = arg4
                        mem[_307 + 132] = 64
                        mem[_307 + 164] = mem[_307]
                        s = 0
                        while s < 32 * mem[_307]:
                            mem[_307 + s + 196] = mem[_307 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[_307 + 164 len (32 * mem[_307]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_307 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _307 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _922 = mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32
                            require mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                            require mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                            require mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96] <= 4294967296 and mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96]) + 32 <= return_data.size
                            mem[_307 + ceil32(return_data.size) + 96] = mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96]
                            _961 = mem[_922 + _307 + 96]
                            s = 0
                            while s < 32 * _961:
                                mem[_307 + ceil32(return_data.size) + s + 128] = mem[_922 + _307 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _961) + _307 + ceil32(return_data.size) + 128
                            require 1 < mem[96]
                            require 0 < mem[_307 + ceil32(return_data.size) + 96]
                            if mem[_307 + ceil32(return_data.size) + 128] <= mem[160]:
                                require 0 < mem[96]
                                require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 128] >= mem[128]:
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = t
                                    continue 
                                else:
                                    require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 128]
                                    require idx < arg1.length
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                            else:
                                require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                require 1 < mem[96]
                                mem[160] = mem[_307 + ceil32(return_data.size) + 128]
                                require 0 < mem[96]
                                require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 128] >= mem[128]:
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = t
                                    continue 
                                else:
                                    require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 128]
                                    require idx < arg1.length
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                else:
                    require 0 < mem[s]
                    require 1 < mem[96]
                    mem[160] = mem[s + 32]
                    require 0 < mem[s]
                    require 0 < mem[96]
                    mem[128] = mem[s + 32]
                    require idx < arg1.length
                    if not arg5:
                        mem[_307 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_307 + 100] = arg4
                        mem[_307 + 132] = 64
                        mem[_307 + 164] = mem[_307]
                        s = 0
                        while s < 32 * mem[_307]:
                            mem[_307 + s + 196] = mem[_307 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[_307 + 164 len (32 * mem[_307]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_307 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _307 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _924 = mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32
                            require mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                            require mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                            require mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96] <= 4294967296 and mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96]) + 32 <= return_data.size
                            mem[_307 + ceil32(return_data.size) + 96] = mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96]
                            _962 = mem[_924 + _307 + 96]
                            s = 0
                            while s < 32 * _962:
                                mem[_307 + ceil32(return_data.size) + s + 128] = mem[_924 + _307 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _962) + _307 + ceil32(return_data.size) + 128
                            require 1 < mem[96]
                            require 1 < mem[_307 + ceil32(return_data.size) + 96]
                            if mem[_307 + ceil32(return_data.size) + 160] <= mem[160]:
                                require 0 < mem[96]
                                require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 160] >= mem[128]:
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                                else:
                                    require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 160]
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                            else:
                                require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                require 1 < mem[96]
                                mem[160] = mem[_307 + ceil32(return_data.size) + 160]
                                require idx < arg1.length
                                require 0 < mem[96]
                                require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 160] >= mem[128]:
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                                else:
                                    require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 160]
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                    else:
                        mem[_307 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_307 + 100] = arg4
                        mem[_307 + 132] = 64
                        mem[_307 + 164] = mem[_307]
                        s = 0
                        while s < 32 * mem[_307]:
                            mem[_307 + s + 196] = mem[_307 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[_307 + 164 len (32 * mem[_307]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_307 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _307 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _926 = mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32
                            require mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                            require mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                            require mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96] <= 4294967296 and mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96]) + 32 <= return_data.size
                            mem[_307 + ceil32(return_data.size) + 96] = mem[mem[_307 + 96 len 4], Mask(224, 32, arg4) >> 32 + _307 + 96]
                            _963 = mem[_926 + _307 + 96]
                            s = 0
                            while s < 32 * _963:
                                mem[_307 + ceil32(return_data.size) + s + 128] = mem[_926 + _307 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _963) + _307 + ceil32(return_data.size) + 128
                            require 1 < mem[96]
                            require 0 < mem[_307 + ceil32(return_data.size) + 96]
                            if mem[_307 + ceil32(return_data.size) + 128] <= mem[160]:
                                require 0 < mem[96]
                                require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 128] >= mem[128]:
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                                else:
                                    require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 128]
                                    require idx < arg1.length
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                            else:
                                require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                require 1 < mem[96]
                                mem[160] = mem[_307 + ceil32(return_data.size) + 128]
                                require 0 < mem[96]
                                require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 128] >= mem[128]:
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                                else:
                                    require 0 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 128]
                                    require idx < arg1.length
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
        else:
            _303 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_303]
            mem[_303 + 32] = WBNBAddress
            require 1 < mem[_303]
            mem[_303 + 64] = BUSDAddress
            if idx:
                if not arg5:
                    mem[_303 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_303 + 100] = arg4
                    mem[_303 + 132] = 64
                    mem[_303 + 164] = mem[_303]
                    s = 0
                    while s < 32 * mem[_303]:
                        mem[_303 + s + 196] = mem[_303 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[_303 + 164 len (32 * mem[_303]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_303 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _303 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _928 = mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32
                        require mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96] <= 4294967296 and mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96]) + 32 <= return_data.size
                        mem[_303 + ceil32(return_data.size) + 96] = mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96]
                        _964 = mem[_928 + _303 + 96]
                        s = 0
                        while s < 32 * _964:
                            mem[_303 + ceil32(return_data.size) + s + 128] = mem[_928 + _303 + s + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _964) + _303 + ceil32(return_data.size) + 128
                        require 1 < mem[96]
                        require 1 < mem[_303 + ceil32(return_data.size) + 96]
                        if mem[_303 + ceil32(return_data.size) + 160] <= mem[160]:
                            require 0 < mem[96]
                            require 1 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 160] >= mem[128]:
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = t
                                continue 
                            else:
                                require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 160]
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = t
                                continue 
                        else:
                            require 1 < mem[_303 + ceil32(return_data.size) + 96]
                            require 1 < mem[96]
                            mem[160] = mem[_303 + ceil32(return_data.size) + 160]
                            require idx < arg1.length
                            require 0 < mem[96]
                            require 1 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 160] >= mem[128]:
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                            else:
                                require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 160]
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                else:
                    mem[_303 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_303 + 100] = arg4
                    mem[_303 + 132] = 64
                    mem[_303 + 164] = mem[_303]
                    s = 0
                    while s < 32 * mem[_303]:
                        mem[_303 + s + 196] = mem[_303 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[_303 + 164 len (32 * mem[_303]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_303 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _303 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _930 = mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32
                        require mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96] <= 4294967296 and mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96]) + 32 <= return_data.size
                        mem[_303 + ceil32(return_data.size) + 96] = mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96]
                        _965 = mem[_930 + _303 + 96]
                        s = 0
                        while s < 32 * _965:
                            mem[_303 + ceil32(return_data.size) + s + 128] = mem[_930 + _303 + s + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _965) + _303 + ceil32(return_data.size) + 128
                        require 1 < mem[96]
                        require 0 < mem[_303 + ceil32(return_data.size) + 96]
                        if mem[_303 + ceil32(return_data.size) + 128] <= mem[160]:
                            require 0 < mem[96]
                            require 0 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 128] >= mem[128]:
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = t
                                continue 
                            else:
                                require 0 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 128]
                                require idx < arg1.length
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                        else:
                            require 0 < mem[_303 + ceil32(return_data.size) + 96]
                            require 1 < mem[96]
                            mem[160] = mem[_303 + ceil32(return_data.size) + 128]
                            require 0 < mem[96]
                            require 0 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 128] >= mem[128]:
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = t
                                continue 
                            else:
                                require 0 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 128]
                                require idx < arg1.length
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                if not arg5:
                    mem[_303 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_303 + 100] = arg4
                    mem[_303 + 132] = 64
                    mem[_303 + 164] = mem[_303]
                    s = 0
                    while s < 32 * mem[_303]:
                        mem[_303 + s + 196] = mem[_303 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[_303 + 164 len (32 * mem[_303]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_303 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _303 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _932 = mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32
                        require mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96] <= 4294967296 and mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96]) + 32 <= return_data.size
                        mem[_303 + ceil32(return_data.size) + 96] = mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96]
                        _966 = mem[_932 + _303 + 96]
                        s = 0
                        while s < 32 * _966:
                            mem[_303 + ceil32(return_data.size) + s + 128] = mem[_932 + _303 + s + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _966) + _303 + ceil32(return_data.size) + 128
                        require 1 < mem[96]
                        require 1 < mem[_303 + ceil32(return_data.size) + 96]
                        if mem[_303 + ceil32(return_data.size) + 160] <= mem[160]:
                            require 0 < mem[96]
                            require 1 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 160] >= mem[128]:
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                            else:
                                require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 160]
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                        else:
                            require 1 < mem[_303 + ceil32(return_data.size) + 96]
                            require 1 < mem[96]
                            mem[160] = mem[_303 + ceil32(return_data.size) + 160]
                            require idx < arg1.length
                            require 0 < mem[96]
                            require 1 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 160] >= mem[128]:
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                            else:
                                require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 160]
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                else:
                    mem[_303 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_303 + 100] = arg4
                    mem[_303 + 132] = 64
                    mem[_303 + 164] = mem[_303]
                    s = 0
                    while s < 32 * mem[_303]:
                        mem[_303 + s + 196] = mem[_303 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[_303 + 164 len (32 * mem[_303]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_303 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _303 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _934 = mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32
                        require mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96] <= 4294967296 and mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96]) + 32 <= return_data.size
                        mem[_303 + ceil32(return_data.size) + 96] = mem[mem[_303 + 96 len 4], Mask(224, 32, arg4) >> 32 + _303 + 96]
                        _967 = mem[_934 + _303 + 96]
                        s = 0
                        while s < 32 * _967:
                            mem[_303 + ceil32(return_data.size) + s + 128] = mem[_934 + _303 + s + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _967) + _303 + ceil32(return_data.size) + 128
                        require 1 < mem[96]
                        require 0 < mem[_303 + ceil32(return_data.size) + 96]
                        if mem[_303 + ceil32(return_data.size) + 128] <= mem[160]:
                            require 0 < mem[96]
                            require 0 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 128] >= mem[128]:
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                            else:
                                require 0 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 128]
                                require idx < arg1.length
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                        else:
                            require 0 < mem[_303 + ceil32(return_data.size) + 96]
                            require 1 < mem[96]
                            mem[160] = mem[_303 + ceil32(return_data.size) + 128]
                            require 0 < mem[96]
                            require 0 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 128] >= mem[128]:
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
                            else:
                                require 0 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 128]
                                require idx < arg1.length
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
    mem[mem[64] + 32] = address(t)
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 64, address(t), mem[mem[64] + 64 len (32 * mem[96]) + 32]
}

function swapTokensToBUSD(address[] arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    s = 96
    t = 96
    t = 0
    while idx < arg1.length:
        if not arg2:
            _1162 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_1162]:
                mem[_1162 + 32] = WBNBAddress
                if 1 < mem[_1162]:
                    mem[_1162 + 64] = BUSDAddress
                    if idx:
                        mem[_1162 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_1162 + 100] = arg4
                        mem[_1162 + 132] = 64
                        mem[_1162 + 164] = mem[_1162]
                        s = 0
                        while s < 32 * mem[_1162]:
                            mem[_1162 + s + 196] = mem[_1162 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[_1162 + 164 len (32 * mem[_1162]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1162 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1162 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2451 = mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32
                        require mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96] <= 4294967296 and mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96]) + 32 <= return_data.size
                        mem[_1162 + ceil32(return_data.size) + 96] = mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96]
                        _2473 = mem[_2451 + _1162 + 96]
                        s = 0
                        while s < 32 * _2473:
                            mem[_1162 + ceil32(return_data.size) + s + 128] = mem[_2451 + _1162 + s + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2473) + _1162 + ceil32(return_data.size) + 128
                        if 1 < mem[96]:
                            if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                if mem[_1162 + ceil32(return_data.size) + 128] <= mem[160]:
                                    if 0 < mem[96]:
                                        if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                            if mem[_1162 + ceil32(return_data.size) + 128] >= mem[128]:
                                                idx = idx + 1
                                                s = _1162 + ceil32(return_data.size) + 96
                                                t = _1162
                                                t = t
                                                continue 
                                            if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                if 0 < mem[96]:
                                                    mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                                    if idx < arg1.length:
                                                        idx = idx + 1
                                                        s = _1162 + ceil32(return_data.size) + 96
                                                        t = _1162
                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                        continue 
                                else:
                                    if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                        if 1 < mem[96]:
                                            mem[160] = mem[_1162 + ceil32(return_data.size) + 128]
                                            if 0 < mem[96]:
                                                if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                    if mem[_1162 + ceil32(return_data.size) + 128] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _1162 + ceil32(return_data.size) + 96
                                                        t = _1162
                                                        t = t
                                                        continue 
                                                    if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _1162 + ceil32(return_data.size) + 96
                                                                t = _1162
                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                    else:
                        if 0 < mem[s]:
                            if 1 < mem[96]:
                                mem[160] = mem[s + 32]
                                if 0 < mem[s]:
                                    if 0 < mem[96]:
                                        mem[128] = mem[s + 32]
                                        if idx < arg1.length:
                                            mem[_1162 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[_1162 + 100] = arg4
                                            mem[_1162 + 132] = 64
                                            mem[_1162 + 164] = mem[_1162]
                                            s = 0
                                            while s < 32 * mem[_1162]:
                                                mem[_1162 + s + 196] = mem[_1162 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args arg4, 64, mem[_1162 + 164 len (32 * mem[_1162]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_1162 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _1162 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            _2453 = mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32
                                            require mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                            require mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                            require mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96] <= 4294967296 and mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96]) + 32 <= return_data.size
                                            mem[_1162 + ceil32(return_data.size) + 96] = mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96]
                                            _2474 = mem[_2453 + _1162 + 96]
                                            s = 0
                                            while s < 32 * _2474:
                                                mem[_1162 + ceil32(return_data.size) + s + 128] = mem[_2453 + _1162 + s + 128]
                                                s = s + 32
                                                continue 
                                            mem[64] = (32 * _2474) + _1162 + ceil32(return_data.size) + 128
                                            if 1 < mem[96]:
                                                if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                    if mem[_1162 + ceil32(return_data.size) + 128] <= mem[160]:
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                                if mem[_1162 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _1162 + ceil32(return_data.size) + 96
                                                                    t = _1162
                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                                                if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _1162 + ceil32(return_data.size) + 96
                                                                            t = _1162
                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                    else:
                                                        if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                            if 1 < mem[96]:
                                                                mem[160] = mem[_1162 + ceil32(return_data.size) + 128]
                                                                if 0 < mem[96]:
                                                                    if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                                        if mem[_1162 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                            idx = idx + 1
                                                                            s = _1162 + ceil32(return_data.size) + 96
                                                                            t = _1162
                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                                        if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                                            if 0 < mem[96]:
                                                                                mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                                                                if idx < arg1.length:
                                                                                    idx = idx + 1
                                                                                    s = _1162 + ceil32(return_data.size) + 96
                                                                                    t = _1162
                                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
        else:
            if not BUSDAddress:
                _1165 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_1165]:
                    mem[_1165 + 32] = BUSDAddress
                    if 1 < mem[_1165]:
                        mem[_1165 + 64] = WBNBAddress
                        if idx:
                            mem[_1165 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[_1165 + 100] = arg4
                            mem[_1165 + 132] = 64
                            mem[_1165 + 164] = mem[_1165]
                            s = 0
                            while s < 32 * mem[_1165]:
                                mem[_1165 + s + 196] = mem[_1165 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_1165 + 164 len (32 * mem[_1165]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1165 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1165 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2447 = mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32
                            require mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                            require mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                            require mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96] <= 4294967296 and mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96]) + 32 <= return_data.size
                            mem[_1165 + ceil32(return_data.size) + 96] = mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96]
                            _2471 = mem[_2447 + _1165 + 96]
                            s = 0
                            while s < 32 * _2471:
                                mem[_1165 + ceil32(return_data.size) + s + 128] = mem[_2447 + _1165 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2471) + _1165 + ceil32(return_data.size) + 128
                            if 1 < mem[96]:
                                if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                    if mem[_1165 + ceil32(return_data.size) + 128] <= mem[160]:
                                        if 0 < mem[96]:
                                            if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                if mem[_1165 + ceil32(return_data.size) + 128] >= mem[128]:
                                                    idx = idx + 1
                                                    s = _1165 + ceil32(return_data.size) + 96
                                                    t = _1165
                                                    t = t
                                                    continue 
                                                if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                    if 0 < mem[96]:
                                                        mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                                        if idx < arg1.length:
                                                            idx = idx + 1
                                                            s = _1165 + ceil32(return_data.size) + 96
                                                            t = _1165
                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                            continue 
                                    else:
                                        if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                            if 1 < mem[96]:
                                                mem[160] = mem[_1165 + ceil32(return_data.size) + 128]
                                                if 0 < mem[96]:
                                                    if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                        if mem[_1165 + ceil32(return_data.size) + 128] >= mem[128]:
                                                            idx = idx + 1
                                                            s = _1165 + ceil32(return_data.size) + 96
                                                            t = _1165
                                                            t = t
                                                            continue 
                                                        if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _1165 + ceil32(return_data.size) + 96
                                                                    t = _1165
                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                        else:
                            if 0 < mem[s]:
                                if 1 < mem[96]:
                                    mem[160] = mem[s + 32]
                                    if 0 < mem[s]:
                                        if 0 < mem[96]:
                                            mem[128] = mem[s + 32]
                                            if idx < arg1.length:
                                                mem[_1165 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[_1165 + 100] = arg4
                                                mem[_1165 + 132] = 64
                                                mem[_1165 + 164] = mem[_1165]
                                                s = 0
                                                while s < 32 * mem[_1165]:
                                                    mem[_1165 + s + 196] = mem[_1165 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args arg4, 64, mem[_1165 + 164 len (32 * mem[_1165]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1165 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = _1165 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                _2449 = mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32
                                                require mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                                require mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                                require mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96] <= 4294967296 and mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96]) + 32 <= return_data.size
                                                mem[_1165 + ceil32(return_data.size) + 96] = mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96]
                                                _2472 = mem[_2449 + _1165 + 96]
                                                s = 0
                                                while s < 32 * _2472:
                                                    mem[_1165 + ceil32(return_data.size) + s + 128] = mem[_2449 + _1165 + s + 128]
                                                    s = s + 32
                                                    continue 
                                                mem[64] = (32 * _2472) + _1165 + ceil32(return_data.size) + 128
                                                if 1 < mem[96]:
                                                    if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                        if mem[_1165 + ceil32(return_data.size) + 128] <= mem[160]:
                                                            if 0 < mem[96]:
                                                                if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                                    if mem[_1165 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                        idx = idx + 1
                                                                        s = _1165 + ceil32(return_data.size) + 96
                                                                        t = _1165
                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
                                                                    if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                                        if 0 < mem[96]:
                                                                            mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                                                            if idx < arg1.length:
                                                                                idx = idx + 1
                                                                                s = _1165 + ceil32(return_data.size) + 96
                                                                                t = _1165
                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                        else:
                                                            if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                                if 1 < mem[96]:
                                                                    mem[160] = mem[_1165 + ceil32(return_data.size) + 128]
                                                                    if 0 < mem[96]:
                                                                        if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                                            if mem[_1165 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                                idx = idx + 1
                                                                                s = _1165 + ceil32(return_data.size) + 96
                                                                                t = _1165
                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _1165 + ceil32(return_data.size) + 96
                                                                                        t = _1165
                                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
            else:
                _1164 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 < mem[_1164]:
                    mem[_1164 + 32] = arg2
                    if 1 < mem[_1164]:
                        mem[_1164 + 64] = WBNBAddress
                        if 2 < mem[_1164]:
                            mem[_1164 + 96] = BUSDAddress
                            if idx:
                                mem[_1164 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[_1164 + 132] = arg4
                                mem[_1164 + 164] = 64
                                mem[_1164 + 196] = mem[_1164]
                                s = 0
                                while s < 32 * mem[_1164]:
                                    mem[_1164 + s + 228] = mem[_1164 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg4, 64, mem[_1164 + 196 len (32 * mem[_1164]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1164 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1164 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _2443 = mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128] <= 4294967296 and mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128]) + 32 <= return_data.size
                                mem[_1164 + ceil32(return_data.size) + 128] = mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128]
                                _2469 = mem[_2443 + _1164 + 128]
                                s = 0
                                while s < 32 * _2469:
                                    mem[_1164 + ceil32(return_data.size) + s + 160] = mem[_2443 + _1164 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2469) + _1164 + ceil32(return_data.size) + 160
                                if 1 < mem[96]:
                                    if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                        if mem[_1164 + ceil32(return_data.size) + 160] <= mem[160]:
                                            if 0 < mem[96]:
                                                if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                    if mem[_1164 + ceil32(return_data.size) + 160] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _1164 + ceil32(return_data.size) + 128
                                                        t = _1164
                                                        t = t
                                                        continue 
                                                    if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _1164 + ceil32(return_data.size) + 128
                                                                t = _1164
                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                                        else:
                                            if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                if 1 < mem[96]:
                                                    mem[160] = mem[_1164 + ceil32(return_data.size) + 160]
                                                    if 0 < mem[96]:
                                                        if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                            if mem[_1164 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                idx = idx + 1
                                                                s = _1164 + ceil32(return_data.size) + 128
                                                                t = _1164
                                                                t = t
                                                                continue 
                                                            if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                if 0 < mem[96]:
                                                                    mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                                    if idx < arg1.length:
                                                                        idx = idx + 1
                                                                        s = _1164 + ceil32(return_data.size) + 128
                                                                        t = _1164
                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
                            else:
                                if 0 < mem[s]:
                                    if 1 < mem[96]:
                                        mem[160] = mem[s + 32]
                                        if 0 < mem[s]:
                                            if 0 < mem[96]:
                                                mem[128] = mem[s + 32]
                                                if idx < arg1.length:
                                                    mem[_1164 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[_1164 + 132] = arg4
                                                    mem[_1164 + 164] = 64
                                                    mem[_1164 + 196] = mem[_1164]
                                                    s = 0
                                                    while s < 32 * mem[_1164]:
                                                        mem[_1164 + s + 228] = mem[_1164 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args arg4, 64, mem[_1164 + 196 len (32 * mem[_1164]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_1164 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _1164 + ceil32(return_data.size) + 128
                                                    require return_data.size >= 32
                                                    _2445 = mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32
                                                    require mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                                    require mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                                    require mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128] <= 4294967296 and mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128]) + 32 <= return_data.size
                                                    mem[_1164 + ceil32(return_data.size) + 128] = mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128]
                                                    _2470 = mem[_2445 + _1164 + 128]
                                                    s = 0
                                                    while s < 32 * _2470:
                                                        mem[_1164 + ceil32(return_data.size) + s + 160] = mem[_2445 + _1164 + s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[64] = (32 * _2470) + _1164 + ceil32(return_data.size) + 160
                                                    if 1 < mem[96]:
                                                        if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                            if mem[_1164 + ceil32(return_data.size) + 160] <= mem[160]:
                                                                if 0 < mem[96]:
                                                                    if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                        if mem[_1164 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                            idx = idx + 1
                                                                            s = _1164 + ceil32(return_data.size) + 128
                                                                            t = _1164
                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                                        if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                            if 0 < mem[96]:
                                                                                mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                                                if idx < arg1.length:
                                                                                    idx = idx + 1
                                                                                    s = _1164 + ceil32(return_data.size) + 128
                                                                                    t = _1164
                                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
                                                            else:
                                                                if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                    if 1 < mem[96]:
                                                                        mem[160] = mem[_1164 + ceil32(return_data.size) + 160]
                                                                        if 0 < mem[96]:
                                                                            if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                                if mem[_1164 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                                    idx = idx + 1
                                                                                    s = _1164 + ceil32(return_data.size) + 128
                                                                                    t = _1164
                                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
                                                                                if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                                    if 0 < mem[96]:
                                                                                        mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                                                        if idx < arg1.length:
                                                                                            idx = idx + 1
                                                                                            s = _1164 + ceil32(return_data.size) + 128
                                                                                            t = _1164
                                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                            continue 
        revert
    _1163 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    require 0 < mem[_1163]
    mem[_1163 + 32] = arg2
    require 1 < mem[_1163]
    mem[_1163 + 64] = WBNBAddress
    require 2 < mem[_1163]
    mem[_1163 + 96] = BUSDAddress
    mem[_1163 + 164] = address(t)
    mem[_1163 + 196] = arg3
    mem[_1163 + 128] = 68
    mem[_1163 + 164 len 28] = address(t) << 64
    mem[_1163 + 160 len 4] = approve(address rg1, uint256 rg2)
    mem[_1163 + 228 len 64] = approve(address rg1, uint256 rg2), address(t) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[_1163 + 320 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[_1163 + 292 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not mem[96]:
            mem[_1163 + 264] = msg.sender
            mem[_1163 + 296] = this.address
            mem[_1163 + 328] = arg3
            mem[_1163 + 228] = 100
            mem[64] = _1163 + 360
            mem[_1163 + 260 len 4] = unknown_0x23b872dd(?????)
            mem[_1163 + 360 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
            mem[_1163 + 484 len 4] = uint32(arg3)
            call arg2 with:
                 gas gas_remaining wei
                args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_1163 + 456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_1163 + 464 len 20],
                                uint32(arg3),
                                mem[_1163 + 488 len 4]
                if not mem[96]:
                    mem[_1163 + 360] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[_1163 + 364] = arg4
                    mem[_1163 + 396] = arg3
                    mem[_1163 + 460] = msg.sender
                    mem[_1163 + 492] = block.timestamp + 60
                    mem[_1163 + 428] = 160
                    mem[_1163 + 524] = mem[_1163]
                    mem[_1163 + 556 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
                    require ext_code.size(address(t))
                    call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + 524 len (32 * mem[_1163]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1163 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1163 + ceil32(return_data.size) + 360
                    require return_data.size >= 32
                    _4787 = mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32
                    require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360] <= 4294967296 and mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]) + 32 <= return_data.size
                    mem[_1163 + ceil32(return_data.size) + 360] = mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]
                    _4835 = mem[_4787 + _1163 + 360]
                    mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_4787 + _1163 + 360])] = mem[_4787 + _1163 + 392 len floor32(mem[_4787 + _1163 + 360])]
                    require 0 < mem[_1163 + ceil32(return_data.size) + 360]
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 428] = msg.sender
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 460] = arg3 - mem[_1163 + ceil32(return_data.size) + 392]
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 392] = 68
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 428 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 424 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 492 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 460 len 28]
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 584 len 4] = mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 480 len 4]
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 460 len 28]) << 256, mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 556 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 492] = 32
                        mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 524] = mem[_1163 + ceil32(return_data.size) + 360]
                        mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 556 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                        return 32, mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 524 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 492] = return_data.size
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _4835) + _1163 + ceil32(return_data.size) + 524]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + 360]
                    mem[(32 * _4835) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _4835) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_1163 + 464 len 20],
                                uint32(arg3),
                                mem[_1163 + 488 len 4]
                mem[_1163 + 360] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_1163 + 364] = arg4
                mem[_1163 + 396] = arg3
                mem[_1163 + 460] = msg.sender
                mem[_1163 + 492] = block.timestamp + 60
                mem[_1163 + 428] = 160
                mem[_1163 + 524] = mem[_1163]
                mem[_1163 + 556 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
                require ext_code.size(address(t))
                call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + 524 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _4789 = mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32
                require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360] <= 4294967296 and mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + 360] = mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]
                _4836 = mem[_4789 + _1163 + 360]
                mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_4789 + _1163 + 360])] = mem[_4789 + _1163 + 392 len floor32(mem[_4789 + _1163 + 360])]
                require 0 < mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 428] = msg.sender
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 460] = arg3 - mem[_1163 + ceil32(return_data.size) + 392]
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 392] = 68
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 428 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 424 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 492 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 460 len 28]
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 584 len 4] = mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 480 len 4]
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 460 len 28]) << 256, mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 556 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 492] = 32
                    mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 524] = mem[_1163 + ceil32(return_data.size) + 360]
                    mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 556 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 524 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 492] = return_data.size
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _4836) + _1163 + ceil32(return_data.size) + 524]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4836) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _4836) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
            mem[64] = _1163 + ceil32(return_data.size) + 361
            mem[_1163 + 360] = return_data.size
            mem[_1163 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_1163 + ceil32(return_data.size) + 465 len 28]
            if not return_data.size:
                mem[_1163 + ceil32(return_data.size) + 361] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_1163 + ceil32(return_data.size) + 365] = arg4
                mem[_1163 + ceil32(return_data.size) + 397] = arg3
                mem[_1163 + ceil32(return_data.size) + 461] = msg.sender
                mem[_1163 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_1163 + ceil32(return_data.size) + 429] = 160
                mem[_1163 + ceil32(return_data.size) + 525] = mem[_1163]
                mem[_1163 + ceil32(return_data.size) + 557 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
                require ext_code.size(address(t))
                call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _4791 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
                require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
                _4837 = mem[_4791 + _1163 + ceil32(return_data.size) + 361]
                mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4791 + _1163 + ceil32(return_data.size) + 361])] = mem[_4791 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4791 + _1163 + ceil32(return_data.size) + 361])]
                require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                    mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return 32, mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
                mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if not return_data.size:
                        mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                        mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                        return memory
                          from (32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                    require return_data.size >= 32
                    if mem[(32 * _4837) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                        mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                        mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                        return memory
                          from (32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
                mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
                mem[(32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
                revert with memory
                  from (32 * _4837) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require return_data.size >= 32
            if not mem[_1163 + 392]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_1163 + ceil32(return_data.size) + 465 len 28]
            mem[_1163 + ceil32(return_data.size) + 361] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[_1163 + ceil32(return_data.size) + 365] = arg4
            mem[_1163 + ceil32(return_data.size) + 397] = arg3
            mem[_1163 + ceil32(return_data.size) + 461] = msg.sender
            mem[_1163 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_1163 + ceil32(return_data.size) + 429] = 160
            mem[_1163 + ceil32(return_data.size) + 525] = mem[_1163]
            mem[_1163 + ceil32(return_data.size) + 557 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
            require ext_code.size(address(t))
            call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _4793 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
            _4838 = mem[_4793 + _1163 + ceil32(return_data.size) + 361]
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4793 + _1163 + ceil32(return_data.size) + 361])] = mem[_4793 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4793 + _1163 + ceil32(return_data.size) + 361])]
            require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
            mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4838) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                    mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4838) + _1163 + (4 * ceil32(return_data.size)) + 494
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[_1163 + 264] = msg.sender
        mem[_1163 + 296] = this.address
        mem[_1163 + 328] = arg3
        mem[_1163 + 228] = 100
        mem[64] = _1163 + 360
        mem[_1163 + 260 len 4] = unknown_0x23b872dd(?????)
        mem[_1163 + 360 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[_1163 + 484 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_1163 + 456 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_1163 + 464 len 20],
                            uint32(arg3),
                            mem[_1163 + 488 len 4]
            if not mem[96]:
                mem[_1163 + 360] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_1163 + 364] = arg4
                mem[_1163 + 396] = arg3
                mem[_1163 + 460] = msg.sender
                mem[_1163 + 492] = block.timestamp + 60
                mem[_1163 + 428] = 160
                mem[_1163 + 524] = mem[_1163]
                mem[_1163 + 556 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
                require ext_code.size(address(t))
                call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + 524 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _4795 = mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32
                require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360] <= 4294967296 and mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + 360] = mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]
                _4839 = mem[_4795 + _1163 + 360]
                mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_4795 + _1163 + 360])] = mem[_4795 + _1163 + 392 len floor32(mem[_4795 + _1163 + 360])]
                require 0 < mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 428] = msg.sender
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 460] = arg3 - mem[_1163 + ceil32(return_data.size) + 392]
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 392] = 68
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 428 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 424 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 492 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 460 len 28]
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 584 len 4] = mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 480 len 4]
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 460 len 28]) << 256, mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 556 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 492] = 32
                    mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 524] = mem[_1163 + ceil32(return_data.size) + 360]
                    mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 556 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 524 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 492] = return_data.size
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _4839) + _1163 + ceil32(return_data.size) + 524]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4839) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _4839) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_1163 + 464 len 20],
                            uint32(arg3),
                            mem[_1163 + 488 len 4]
            mem[_1163 + 360] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[_1163 + 364] = arg4
            mem[_1163 + 396] = arg3
            mem[_1163 + 460] = msg.sender
            mem[_1163 + 492] = block.timestamp + 60
            mem[_1163 + 428] = 160
            mem[_1163 + 524] = mem[_1163]
            mem[_1163 + 556 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
            require ext_code.size(address(t))
            call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + 524 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + 360
            require return_data.size >= 32
            _4797 = mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360] <= 4294967296 and mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + 360] = mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]
            _4840 = mem[_4797 + _1163 + 360]
            mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_4797 + _1163 + 360])] = mem[_4797 + _1163 + 392 len floor32(mem[_4797 + _1163 + 360])]
            require 0 < mem[_1163 + ceil32(return_data.size) + 360]
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 428] = msg.sender
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 460] = arg3 - mem[_1163 + ceil32(return_data.size) + 392]
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 392] = 68
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 428 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 424 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 492 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 460 len 28]
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 584 len 4] = mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 480 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 460 len 28]) << 256, mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 556 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 492] = 32
                mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 524] = mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 556 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 524 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 492] = return_data.size
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _4840) + _1163 + ceil32(return_data.size) + 524]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + 360]
            mem[(32 * _4840) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
            return 32, mem[(32 * _4840) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
        mem[64] = _1163 + ceil32(return_data.size) + 361
        mem[_1163 + 360] = return_data.size
        mem[_1163 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_1163 + ceil32(return_data.size) + 465 len 28]
        if not return_data.size:
            mem[_1163 + ceil32(return_data.size) + 361] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[_1163 + ceil32(return_data.size) + 365] = arg4
            mem[_1163 + ceil32(return_data.size) + 397] = arg3
            mem[_1163 + ceil32(return_data.size) + 461] = msg.sender
            mem[_1163 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_1163 + ceil32(return_data.size) + 429] = 160
            mem[_1163 + ceil32(return_data.size) + 525] = mem[_1163]
            mem[_1163 + ceil32(return_data.size) + 557 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
            require ext_code.size(address(t))
            call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _4799 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
            _4841 = mem[_4799 + _1163 + ceil32(return_data.size) + 361]
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4799 + _1163 + ceil32(return_data.size) + 361])] = mem[_4799 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4799 + _1163 + ceil32(return_data.size) + 361])]
            require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
            mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4841) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                    mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4841) + _1163 + (4 * ceil32(return_data.size)) + 494
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        require return_data.size >= 32
        if not mem[_1163 + 392]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_1163 + ceil32(return_data.size) + 465 len 28]
        mem[_1163 + ceil32(return_data.size) + 361] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[_1163 + ceil32(return_data.size) + 365] = arg4
        mem[_1163 + ceil32(return_data.size) + 397] = arg3
        mem[_1163 + ceil32(return_data.size) + 461] = msg.sender
        mem[_1163 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_1163 + ceil32(return_data.size) + 429] = 160
        mem[_1163 + ceil32(return_data.size) + 525] = mem[_1163]
        mem[_1163 + ceil32(return_data.size) + 557 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
        require ext_code.size(address(t))
        call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _4801 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
        require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
        _4842 = mem[_4801 + _1163 + ceil32(return_data.size) + 361]
        mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4801 + _1163 + ceil32(return_data.size) + 361])] = mem[_4801 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4801 + _1163 + ceil32(return_data.size) + 361])]
        require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
        call arg2 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
            mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
        mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return memory
                  from (32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            if mem[(32 * _4842) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return memory
                  from (32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
        mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
        mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
        mem[(32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4842) + _1163 + (4 * ceil32(return_data.size)) + 494
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[_1163 + 228] = return_data.size
    mem[_1163 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    if not return_data.size:
        mem[_1163 + ceil32(return_data.size) + 265] = msg.sender
        mem[_1163 + ceil32(return_data.size) + 297] = this.address
        mem[_1163 + ceil32(return_data.size) + 329] = arg3
        mem[_1163 + ceil32(return_data.size) + 229] = 100
        mem[64] = _1163 + ceil32(return_data.size) + 361
        mem[_1163 + ceil32(return_data.size) + 261 len 4] = unknown_0x23b872dd(?????)
        mem[_1163 + ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[_1163 + ceil32(return_data.size) + 485 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_1163 + ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_1163 + ceil32(return_data.size) + 465 len 20],
                            uint32(arg3),
                            mem[_1163 + ceil32(return_data.size) + 489 len 4]
            if not mem[96]:
                mem[_1163 + ceil32(return_data.size) + 361] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_1163 + ceil32(return_data.size) + 365] = arg4
                mem[_1163 + ceil32(return_data.size) + 397] = arg3
                mem[_1163 + ceil32(return_data.size) + 461] = msg.sender
                mem[_1163 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_1163 + ceil32(return_data.size) + 429] = 160
                mem[_1163 + ceil32(return_data.size) + 525] = mem[_1163]
                mem[_1163 + ceil32(return_data.size) + 557 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
                require ext_code.size(address(t))
                call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _4803 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
                require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
                _4843 = mem[_4803 + _1163 + ceil32(return_data.size) + 361]
                mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4803 + _1163 + ceil32(return_data.size) + 361])] = mem[_4803 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4803 + _1163 + ceil32(return_data.size) + 361])]
                require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                    mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return 32, mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
                mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if not return_data.size:
                        mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                        mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                        return memory
                          from (32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                    require return_data.size >= 32
                    if mem[(32 * _4843) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                        mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                        mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                        return memory
                          from (32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
                mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
                mem[(32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
                revert with memory
                  from (32 * _4843) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_1163 + ceil32(return_data.size) + 465 len 20],
                            uint32(arg3),
                            mem[_1163 + ceil32(return_data.size) + 489 len 4]
            mem[_1163 + ceil32(return_data.size) + 361] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[_1163 + ceil32(return_data.size) + 365] = arg4
            mem[_1163 + ceil32(return_data.size) + 397] = arg3
            mem[_1163 + ceil32(return_data.size) + 461] = msg.sender
            mem[_1163 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_1163 + ceil32(return_data.size) + 429] = 160
            mem[_1163 + ceil32(return_data.size) + 525] = mem[_1163]
            mem[_1163 + ceil32(return_data.size) + 557 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
            require ext_code.size(address(t))
            call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _4805 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
            _4844 = mem[_4805 + _1163 + ceil32(return_data.size) + 361]
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4805 + _1163 + ceil32(return_data.size) + 361])] = mem[_4805 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4805 + _1163 + ceil32(return_data.size) + 361])]
            require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
            mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4844) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                    mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4844) + _1163 + (4 * ceil32(return_data.size)) + 494
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        mem[64] = _1163 + (2 * ceil32(return_data.size)) + 362
        mem[_1163 + ceil32(return_data.size) + 361] = return_data.size
        mem[_1163 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_1163 + (2 * ceil32(return_data.size)) + 466 len 28]
        if not return_data.size:
            mem[_1163 + (2 * ceil32(return_data.size)) + 362] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[_1163 + (2 * ceil32(return_data.size)) + 366] = arg4
            mem[_1163 + (2 * ceil32(return_data.size)) + 398] = arg3
            mem[_1163 + (2 * ceil32(return_data.size)) + 462] = msg.sender
            mem[_1163 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
            mem[_1163 + (2 * ceil32(return_data.size)) + 430] = 160
            mem[_1163 + (2 * ceil32(return_data.size)) + 526] = mem[_1163]
            mem[_1163 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
            require ext_code.size(address(t))
            call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + (4 * ceil32(return_data.size)) + 362
            require return_data.size >= 32
            _4807 = mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
            mem[_1163 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]
            _4845 = mem[_4807 + _1163 + (2 * ceil32(return_data.size)) + 362]
            mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_4807 + _1163 + (2 * ceil32(return_data.size)) + 362])] = mem[_4807 + _1163 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_4807 + _1163 + (2 * ceil32(return_data.size)) + 362])]
            require 0 < mem[_1163 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 430] = msg.sender
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 462] = arg3 - mem[_1163 + (4 * ceil32(return_data.size)) + 394]
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 394] = 68
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 430 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 426 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 494 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 586 len 4] = mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 482 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]) << 256, mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 558 len 4]
            if not return_data.size:
                if ext_call.success:
                    if not mem[96]:
                        mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                        mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                        return memory
                          from (32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                    require mem[96] >= 32
                    if mem[128]:
                        mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                        mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                        return memory
                          from (32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
                mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
                mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
                revert with memory
                  from (32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (5 * ceil32(return_data.size)) + 100
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 494] = return_data.size
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                    mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + 526]:
                    mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                    mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 32
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 31
            mem[(32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4845) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
               len (5 * ceil32(return_data.size)) + 100
        require return_data.size >= 32
        if not mem[_1163 + ceil32(return_data.size) + 393]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_1163 + (2 * ceil32(return_data.size)) + 466 len 28]
        mem[_1163 + (2 * ceil32(return_data.size)) + 362] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[_1163 + (2 * ceil32(return_data.size)) + 366] = arg4
        mem[_1163 + (2 * ceil32(return_data.size)) + 398] = arg3
        mem[_1163 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_1163 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_1163 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_1163 + (2 * ceil32(return_data.size)) + 526] = mem[_1163]
        mem[_1163 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
        require ext_code.size(address(t))
        call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_1163]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1163 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1163 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _4809 = mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32
        require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_1163 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]
        _4846 = mem[_4809 + _1163 + (2 * ceil32(return_data.size)) + 362]
        mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_4809 + _1163 + (2 * ceil32(return_data.size)) + 362])] = mem[_4809 + _1163 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_4809 + _1163 + (2 * ceil32(return_data.size)) + 362])]
        require 0 < mem[_1163 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 430] = msg.sender
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 462] = arg3 - mem[_1163 + (4 * ceil32(return_data.size)) + 394]
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 394] = 68
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 430 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 426 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 494 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 586 len 4] = mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 482 len 4]
        call arg2 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]) << 256, mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 558 len 4]
        if not return_data.size:
            if ext_call.success:
                if not mem[96]:
                    mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                require mem[96] >= 32
                if mem[128]:
                    mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 494
               len (5 * ceil32(return_data.size)) + 100
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 494] = return_data.size
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            if mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + 526]:
                mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 32
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 31
        mem[(32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4846) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
           len (5 * ceil32(return_data.size)) + 100
    require return_data.size >= 32
    if not mem[_1163 + 260]:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    mem[_1163 + ceil32(return_data.size) + 265] = msg.sender
    mem[_1163 + ceil32(return_data.size) + 297] = this.address
    mem[_1163 + ceil32(return_data.size) + 329] = arg3
    mem[_1163 + ceil32(return_data.size) + 229] = 100
    mem[64] = _1163 + ceil32(return_data.size) + 361
    mem[_1163 + ceil32(return_data.size) + 261 len 4] = unknown_0x23b872dd(?????)
    mem[_1163 + ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[_1163 + ceil32(return_data.size) + 485 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_1163 + ceil32(return_data.size) + 457 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_1163 + ceil32(return_data.size) + 465 len 20],
                        uint32(arg3),
                        mem[_1163 + ceil32(return_data.size) + 489 len 4]
        if not mem[96]:
            mem[_1163 + ceil32(return_data.size) + 361] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[_1163 + ceil32(return_data.size) + 365] = arg4
            mem[_1163 + ceil32(return_data.size) + 397] = arg3
            mem[_1163 + ceil32(return_data.size) + 461] = msg.sender
            mem[_1163 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_1163 + ceil32(return_data.size) + 429] = 160
            mem[_1163 + ceil32(return_data.size) + 525] = mem[_1163]
            mem[_1163 + ceil32(return_data.size) + 557 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
            require ext_code.size(address(t))
            call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _4811 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
            _4847 = mem[_4811 + _1163 + ceil32(return_data.size) + 361]
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4811 + _1163 + ceil32(return_data.size) + 361])] = mem[_4811 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4811 + _1163 + ceil32(return_data.size) + 361])]
            require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
            mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4847) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                    mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4847) + _1163 + (4 * ceil32(return_data.size)) + 494
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_1163 + ceil32(return_data.size) + 465 len 20],
                        uint32(arg3),
                        mem[_1163 + ceil32(return_data.size) + 489 len 4]
        mem[_1163 + ceil32(return_data.size) + 361] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[_1163 + ceil32(return_data.size) + 365] = arg4
        mem[_1163 + ceil32(return_data.size) + 397] = arg3
        mem[_1163 + ceil32(return_data.size) + 461] = msg.sender
        mem[_1163 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_1163 + ceil32(return_data.size) + 429] = 160
        mem[_1163 + ceil32(return_data.size) + 525] = mem[_1163]
        mem[_1163 + ceil32(return_data.size) + 557 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
        require ext_code.size(address(t))
        call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _4813 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
        require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
        _4848 = mem[_4813 + _1163 + ceil32(return_data.size) + 361]
        mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4813 + _1163 + ceil32(return_data.size) + 361])] = mem[_4813 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4813 + _1163 + ceil32(return_data.size) + 361])]
        require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
        call arg2 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
            mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
        mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return memory
                  from (32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            if mem[(32 * _4848) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return memory
                  from (32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
        mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
        mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
        mem[(32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4848) + _1163 + (4 * ceil32(return_data.size)) + 494
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[64] = _1163 + (2 * ceil32(return_data.size)) + 362
    mem[_1163 + ceil32(return_data.size) + 361] = return_data.size
    mem[_1163 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_1163 + (2 * ceil32(return_data.size)) + 466 len 28]
    if not return_data.size:
        mem[_1163 + (2 * ceil32(return_data.size)) + 362] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[_1163 + (2 * ceil32(return_data.size)) + 366] = arg4
        mem[_1163 + (2 * ceil32(return_data.size)) + 398] = arg3
        mem[_1163 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_1163 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_1163 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_1163 + (2 * ceil32(return_data.size)) + 526] = mem[_1163]
        mem[_1163 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
        require ext_code.size(address(t))
        call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_1163]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1163 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1163 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _4815 = mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32
        require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_1163 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]
        _4849 = mem[_4815 + _1163 + (2 * ceil32(return_data.size)) + 362]
        mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_4815 + _1163 + (2 * ceil32(return_data.size)) + 362])] = mem[_4815 + _1163 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_4815 + _1163 + (2 * ceil32(return_data.size)) + 362])]
        require 0 < mem[_1163 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 430] = msg.sender
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 462] = arg3 - mem[_1163 + (4 * ceil32(return_data.size)) + 394]
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 394] = 68
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 430 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 426 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 494 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 586 len 4] = mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 482 len 4]
        call arg2 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]) << 256, mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 558 len 4]
        if not return_data.size:
            if ext_call.success:
                if not mem[96]:
                    mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                require mem[96] >= 32
                if mem[128]:
                    mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 494
               len (5 * ceil32(return_data.size)) + 100
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 494] = return_data.size
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            if mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + 526]:
                mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 32
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 31
        mem[(32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4849) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
           len (5 * ceil32(return_data.size)) + 100
    require return_data.size >= 32
    if not mem[_1163 + ceil32(return_data.size) + 393]:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_1163 + (2 * ceil32(return_data.size)) + 466 len 28]
    mem[_1163 + (2 * ceil32(return_data.size)) + 362] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[_1163 + (2 * ceil32(return_data.size)) + 366] = arg4
    mem[_1163 + (2 * ceil32(return_data.size)) + 398] = arg3
    mem[_1163 + (2 * ceil32(return_data.size)) + 462] = msg.sender
    mem[_1163 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
    mem[_1163 + (2 * ceil32(return_data.size)) + 430] = 160
    mem[_1163 + (2 * ceil32(return_data.size)) + 526] = mem[_1163]
    mem[_1163 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_1163])] = mem[_1163 + 32 len floor32(mem[_1163])]
    require ext_code.size(address(t))
    call address(t).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_1163]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1163 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _1163 + (4 * ceil32(return_data.size)) + 362
    require return_data.size >= 32
    _4817 = mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32
    require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
    mem[_1163 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]
    _4850 = mem[_4817 + _1163 + (2 * ceil32(return_data.size)) + 362]
    mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_4817 + _1163 + (2 * ceil32(return_data.size)) + 362])] = mem[_4817 + _1163 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_4817 + _1163 + (2 * ceil32(return_data.size)) + 362])]
    require 0 < mem[_1163 + (4 * ceil32(return_data.size)) + 362]
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 430] = msg.sender
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 462] = arg3 - mem[_1163 + (4 * ceil32(return_data.size)) + 394]
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 394] = 68
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 430 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 426 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 494 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 586 len 4] = mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 482 len 4]
    call arg2 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]) << 256, mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 558 len 4]
    if not return_data.size:
        if ext_call.success:
            if not mem[96]:
                mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            require mem[96] >= 32
            if mem[128]:
                mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
        mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
        mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
        mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 494
           len (5 * ceil32(return_data.size)) + 100
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 494] = return_data.size
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        if not return_data.size:
            mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
            mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
            return memory
              from (32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
               len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
        require return_data.size >= 32
        if mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + 526]:
            mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
            mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
            return memory
              from (32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
               len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 32
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 31
    mem[(32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 'TransferHelper: TRANSFER_FAILED'
    revert with memory
      from (32 * _4850) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
       len (5 * ceil32(return_data.size)) + 100
}



}
