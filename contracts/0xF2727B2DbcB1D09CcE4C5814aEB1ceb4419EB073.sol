contract main {




// =====================  Runtime code  =====================


#
#  - swapTokensToBUSD(address[] arg1, address arg2, uint256 arg3, uint256 arg4)
#
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
        mem[_111 + 64] = 0
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
            mem[_506 + 64] = arg2
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
        if not arg2:
            _614 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_614]
            mem[_614 + 32] = WBNBAddress
            require 1 < mem[_614]
            mem[_614 + 64] = arg3
            if idx:
                if not arg5:
                    mem[_614 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_614 + 100] = arg4
                    mem[_614 + 132] = 64
                    mem[_614 + 164] = mem[_614]
                    s = 0
                    while s < 32 * mem[_614]:
                        mem[_614 + s + 196] = mem[_614 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[_614 + 164 len (32 * mem[_614]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_614 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _614 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1850 = mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32
                    require mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96] <= 4294967296 and mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96]) + 32 <= return_data.size
                    mem[_614 + ceil32(return_data.size) + 96] = mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96]
                    _1878 = mem[_1850 + _614 + 96]
                    s = 0
                    while s < 32 * _1878:
                        mem[_614 + ceil32(return_data.size) + s + 128] = mem[_1850 + _614 + s + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1878) + _614 + ceil32(return_data.size) + 128
                    require 1 < mem[96]
                    require 1 < mem[_614 + ceil32(return_data.size) + 96]
                    if mem[_614 + ceil32(return_data.size) + 160] <= mem[160]:
                        require 0 < mem[96]
                        require 1 < mem[_614 + ceil32(return_data.size) + 96]
                        if mem[_614 + ceil32(return_data.size) + 160] < mem[128]:
                            require 1 < mem[_614 + ceil32(return_data.size) + 96]
                            require 0 < mem[96]
                            mem[128] = mem[_614 + ceil32(return_data.size) + 160]
                        idx = idx + 1
                        s = _614 + ceil32(return_data.size) + 96
                        t = _614
                        t = t
                        continue 
                    require 1 < mem[_614 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_614 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
                    require 0 < mem[96]
                    require 1 < mem[_614 + ceil32(return_data.size) + 96]
                    if mem[_614 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_614 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_614 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _614 + ceil32(return_data.size) + 96
                    t = _614
                    t = address(cd[((32 * idx) + arg1 + 36)])
                    continue 
                mem[_614 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_614 + 100] = arg4
                mem[_614 + 132] = 64
                mem[_614 + 164] = mem[_614]
                s = 0
                while s < 32 * mem[_614]:
                    mem[_614 + s + 196] = mem[_614 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[_614 + 164 len (32 * mem[_614]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_614 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _614 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1852 = mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32
                require mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96] <= 4294967296 and mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96]) + 32 <= return_data.size
                mem[_614 + ceil32(return_data.size) + 96] = mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96]
                _1879 = mem[_1852 + _614 + 96]
                s = 0
                while s < 32 * _1879:
                    mem[_614 + ceil32(return_data.size) + s + 128] = mem[_1852 + _614 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1879) + _614 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 0 < mem[_614 + ceil32(return_data.size) + 96]
                if mem[_614 + ceil32(return_data.size) + 128] <= mem[160]:
                    require 0 < mem[96]
                    require 0 < mem[_614 + ceil32(return_data.size) + 96]
                    if mem[_614 + ceil32(return_data.size) + 128] >= mem[128]:
                        if arg5:
                            idx = idx + 1
                            s = _614 + ceil32(return_data.size) + 96
                            t = _614
                            t = t
                            continue 
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 132] = arg4
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 164] = 64
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 196] = mem[_614]
                        s = 0
                        while s < 32 * mem[_614]:
                            mem[(32 * _1879) + _614 + ceil32(return_data.size) + s + 228] = mem[_614 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[(32 * _1879) + _614 + ceil32(return_data.size) + 196 len (32 * mem[_614]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _4050 = mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                        require mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]
                        _4106 = mem[_4050 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]
                        s = 0
                        while s < 32 * _4106:
                            mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4050 + (32 * _1879) + _614 + ceil32(return_data.size) + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4106) + (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 160
                        require 1 < mem[96]
                        require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                        if mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192] <= mem[160]:
                            require 0 < mem[96]
                            require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                            if mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192] < mem[128]:
                                require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                                require 0 < mem[96]
                                mem[128] = mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192]
                            idx = idx + 1
                            s = (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128
                            t = _614
                            t = t
                            continue 
                        require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                        require 1 < mem[96]
                        mem[160] = mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192]
                        require idx < arg1.length
                    else:
                        require 0 < mem[_614 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_614 + ceil32(return_data.size) + 128]
                        require idx < arg1.length
                        if arg5:
                            idx = idx + 1
                            s = _614 + ceil32(return_data.size) + 96
                            t = _614
                            t = address(cd[((32 * idx) + arg1 + 36)])
                            continue 
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 132] = arg4
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 164] = 64
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 196] = mem[_614]
                        s = 0
                        while s < 32 * mem[_614]:
                            mem[(32 * _1879) + _614 + ceil32(return_data.size) + s + 228] = mem[_614 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[(32 * _1879) + _614 + ceil32(return_data.size) + 196 len (32 * mem[_614]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _4052 = mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                        require mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]
                        _4107 = mem[_4052 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]
                        s = 0
                        while s < 32 * _4107:
                            mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4052 + (32 * _1879) + _614 + ceil32(return_data.size) + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4107) + (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 160
                        require 1 < mem[96]
                        require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                        if mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192] > mem[160]:
                            require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                            require 1 < mem[96]
                            mem[160] = mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192]
                            require idx < arg1.length
                else:
                    require 0 < mem[_614 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_614 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    require 0 < mem[_614 + ceil32(return_data.size) + 96]
                    if mem[_614 + ceil32(return_data.size) + 128] >= mem[128]:
                        if arg5:
                            idx = idx + 1
                            s = _614 + ceil32(return_data.size) + 96
                            t = _614
                            t = t
                            continue 
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 132] = arg4
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 164] = 64
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 196] = mem[_614]
                        s = 0
                        while s < 32 * mem[_614]:
                            mem[(32 * _1879) + _614 + ceil32(return_data.size) + s + 228] = mem[_614 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[(32 * _1879) + _614 + ceil32(return_data.size) + 196 len (32 * mem[_614]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _4054 = mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                        require mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]
                        _4108 = mem[_4054 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]
                        s = 0
                        while s < 32 * _4108:
                            mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4054 + (32 * _1879) + _614 + ceil32(return_data.size) + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4108) + (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 160
                        require 1 < mem[96]
                        require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                        if mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192] <= mem[160]:
                            require 0 < mem[96]
                            require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                            if mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192] < mem[128]:
                                require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                                require 0 < mem[96]
                                mem[128] = mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192]
                            idx = idx + 1
                            s = (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128
                            t = _614
                            t = t
                            continue 
                        require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                        require 1 < mem[96]
                        mem[160] = mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192]
                        require idx < arg1.length
                    else:
                        require 0 < mem[_614 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_614 + ceil32(return_data.size) + 128]
                        require idx < arg1.length
                        if arg5:
                            idx = idx + 1
                            s = _614 + ceil32(return_data.size) + 96
                            t = _614
                            t = address(cd[((32 * idx) + arg1 + 36)])
                            continue 
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 132] = arg4
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 164] = 64
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 196] = mem[_614]
                        s = 0
                        while s < 32 * mem[_614]:
                            mem[(32 * _1879) + _614 + ceil32(return_data.size) + s + 228] = mem[_614 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[(32 * _1879) + _614 + ceil32(return_data.size) + 196 len (32 * mem[_614]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _4056 = mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                        require mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1879) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]
                        _4109 = mem[_4056 + (32 * _1879) + _614 + ceil32(return_data.size) + 128]
                        s = 0
                        while s < 32 * _4109:
                            mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4056 + (32 * _1879) + _614 + ceil32(return_data.size) + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4109) + (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 160
                        require 1 < mem[96]
                        require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                        if mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192] > mem[160]:
                            require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                            require 1 < mem[96]
                            mem[160] = mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192]
                            require idx < arg1.length
                require 0 < mem[96]
                require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                if mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192] < mem[128]:
                    require 1 < mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[(32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 192]
                idx = idx + 1
                s = (32 * _1879) + _614 + (2 * ceil32(return_data.size)) + 128
                t = _614
                t = address(cd[((32 * idx) + arg1 + 36)])
                continue 
            require 0 < mem[s]
            require 1 < mem[96]
            mem[160] = mem[s + 32]
            require 0 < mem[s]
            require 0 < mem[96]
            mem[128] = mem[s + 32]
            require idx < arg1.length
            if not arg5:
                mem[_614 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_614 + 100] = arg4
                mem[_614 + 132] = 64
                mem[_614 + 164] = mem[_614]
                s = 0
                while s < 32 * mem[_614]:
                    mem[_614 + s + 196] = mem[_614 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[_614 + 164 len (32 * mem[_614]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_614 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _614 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1854 = mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32
                require mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96] <= 4294967296 and mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96]) + 32 <= return_data.size
                mem[_614 + ceil32(return_data.size) + 96] = mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96]
                _1880 = mem[_1854 + _614 + 96]
                s = 0
                while s < 32 * _1880:
                    mem[_614 + ceil32(return_data.size) + s + 128] = mem[_1854 + _614 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1880) + _614 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_614 + ceil32(return_data.size) + 96]
                if mem[_614 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_614 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_614 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
                require 0 < mem[96]
                require 1 < mem[_614 + ceil32(return_data.size) + 96]
                if mem[_614 + ceil32(return_data.size) + 160] < mem[128]:
                    require 1 < mem[_614 + ceil32(return_data.size) + 96]
                    require 0 < mem[96]
                    mem[128] = mem[_614 + ceil32(return_data.size) + 160]
                idx = idx + 1
                s = _614 + ceil32(return_data.size) + 96
                t = _614
                t = address(cd[((32 * idx) + arg1 + 36)])
                continue 
            mem[_614 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_614 + 100] = arg4
            mem[_614 + 132] = 64
            mem[_614 + 164] = mem[_614]
            s = 0
            while s < 32 * mem[_614]:
                mem[_614 + s + 196] = mem[_614 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg4, 64, mem[_614 + 164 len (32 * mem[_614]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_614 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _614 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1856 = mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32
            require mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96] <= 4294967296 and mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96]) + 32 <= return_data.size
            mem[_614 + ceil32(return_data.size) + 96] = mem[mem[_614 + 96 len 4], Mask(224, 32, arg4) >> 32 + _614 + 96]
            _1881 = mem[_1856 + _614 + 96]
            s = 0
            while s < 32 * _1881:
                mem[_614 + ceil32(return_data.size) + s + 128] = mem[_1856 + _614 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _1881) + _614 + ceil32(return_data.size) + 128
            require 1 < mem[96]
            require 0 < mem[_614 + ceil32(return_data.size) + 96]
            if mem[_614 + ceil32(return_data.size) + 128] <= mem[160]:
                require 0 < mem[96]
                require 0 < mem[_614 + ceil32(return_data.size) + 96]
                if mem[_614 + ceil32(return_data.size) + 128] >= mem[128]:
                    if arg5:
                        idx = idx + 1
                        s = _614 + ceil32(return_data.size) + 96
                        t = _614
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 132] = arg4
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 196] = mem[_614]
                    s = 0
                    while s < 32 * mem[_614]:
                        mem[(32 * _1881) + _614 + ceil32(return_data.size) + s + 228] = mem[_614 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1881) + _614 + ceil32(return_data.size) + 196 len (32 * mem[_614]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _4058 = mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                    mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]
                    _4110 = mem[_4058 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]
                    s = 0
                    while s < 32 * _4110:
                        mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4058 + (32 * _1881) + _614 + ceil32(return_data.size) + s + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4110) + (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 160
                else:
                    require 0 < mem[_614 + ceil32(return_data.size) + 96]
                    require 0 < mem[96]
                    mem[128] = mem[_614 + ceil32(return_data.size) + 128]
                    require idx < arg1.length
                    if arg5:
                        idx = idx + 1
                        s = _614 + ceil32(return_data.size) + 96
                        t = _614
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 132] = arg4
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 196] = mem[_614]
                    s = 0
                    while s < 32 * mem[_614]:
                        mem[(32 * _1881) + _614 + ceil32(return_data.size) + s + 228] = mem[_614 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1881) + _614 + ceil32(return_data.size) + 196 len (32 * mem[_614]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _4060 = mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                    mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]
                    _4111 = mem[_4060 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]
                    s = 0
                    while s < 32 * _4111:
                        mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4060 + (32 * _1881) + _614 + ceil32(return_data.size) + s + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4111) + (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 160
            else:
                require 0 < mem[_614 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_614 + ceil32(return_data.size) + 128]
                require 0 < mem[96]
                require 0 < mem[_614 + ceil32(return_data.size) + 96]
                if mem[_614 + ceil32(return_data.size) + 128] >= mem[128]:
                    if arg5:
                        idx = idx + 1
                        s = _614 + ceil32(return_data.size) + 96
                        t = _614
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 132] = arg4
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 196] = mem[_614]
                    s = 0
                    while s < 32 * mem[_614]:
                        mem[(32 * _1881) + _614 + ceil32(return_data.size) + s + 228] = mem[_614 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1881) + _614 + ceil32(return_data.size) + 196 len (32 * mem[_614]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _4062 = mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                    mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]
                    _4112 = mem[_4062 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]
                    s = 0
                    while s < 32 * _4112:
                        mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4062 + (32 * _1881) + _614 + ceil32(return_data.size) + s + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4112) + (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 160
                else:
                    require 0 < mem[_614 + ceil32(return_data.size) + 96]
                    require 0 < mem[96]
                    mem[128] = mem[_614 + ceil32(return_data.size) + 128]
                    require idx < arg1.length
                    if arg5:
                        idx = idx + 1
                        s = _614 + ceil32(return_data.size) + 96
                        t = _614
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 132] = arg4
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 196] = mem[_614]
                    s = 0
                    while s < 32 * mem[_614]:
                        mem[(32 * _1881) + _614 + ceil32(return_data.size) + s + 228] = mem[_614 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1881) + _614 + ceil32(return_data.size) + 196 len (32 * mem[_614]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _4064 = mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                    mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1881) + _614 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]
                    _4113 = mem[_4064 + (32 * _1881) + _614 + ceil32(return_data.size) + 128]
                    s = 0
                    while s < 32 * _4113:
                        mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4064 + (32 * _1881) + _614 + ceil32(return_data.size) + s + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4113) + (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 160
            require 1 < mem[96]
            require 1 < mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128]
            if mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 192] > mem[160]:
                require 1 < mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128]
                require 1 < mem[96]
                mem[160] = mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 192]
                require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128]
            if mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 192] < mem[128]:
                require 1 < mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128]
                require 0 < mem[96]
                mem[128] = mem[(32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 192]
            idx = idx + 1
            s = (32 * _1881) + _614 + (2 * ceil32(return_data.size)) + 128
            t = _614
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        if not arg3:
            _618 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_618]
            mem[_618 + 32] = arg2
            require 1 < mem[_618]
            mem[_618 + 64] = WBNBAddress
            if idx:
                if not arg5:
                    mem[_618 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_618 + 100] = arg4
                    mem[_618 + 132] = 64
                    mem[_618 + 164] = mem[_618]
                    s = 0
                    while s < 32 * mem[_618]:
                        mem[_618 + s + 196] = mem[_618 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[_618 + 164 len (32 * mem[_618]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_618 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _618 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _1842 = mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32
                    require mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96] <= 4294967296 and mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96]) + 32 <= return_data.size
                    mem[_618 + ceil32(return_data.size) + 96] = mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96]
                    _1874 = mem[_1842 + _618 + 96]
                    s = 0
                    while s < 32 * _1874:
                        mem[_618 + ceil32(return_data.size) + s + 128] = mem[_1842 + _618 + s + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1874) + _618 + ceil32(return_data.size) + 128
                    require 1 < mem[96]
                    require 1 < mem[_618 + ceil32(return_data.size) + 96]
                    if mem[_618 + ceil32(return_data.size) + 160] <= mem[160]:
                        require 0 < mem[96]
                        require 1 < mem[_618 + ceil32(return_data.size) + 96]
                        if mem[_618 + ceil32(return_data.size) + 160] < mem[128]:
                            require 1 < mem[_618 + ceil32(return_data.size) + 96]
                            require 0 < mem[96]
                            mem[128] = mem[_618 + ceil32(return_data.size) + 160]
                        idx = idx + 1
                        s = _618 + ceil32(return_data.size) + 96
                        t = _618
                        t = t
                        continue 
                    require 1 < mem[_618 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_618 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
                    require 0 < mem[96]
                    require 1 < mem[_618 + ceil32(return_data.size) + 96]
                    if mem[_618 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_618 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_618 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _618 + ceil32(return_data.size) + 96
                    t = _618
                    t = address(cd[((32 * idx) + arg1 + 36)])
                    continue 
                mem[_618 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[_618 + 100] = arg4
                mem[_618 + 132] = 64
                mem[_618 + 164] = mem[_618]
                s = 0
                while s < 32 * mem[_618]:
                    mem[_618 + s + 196] = mem[_618 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[_618 + 164 len (32 * mem[_618]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_618 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _618 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1844 = mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32
                require mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96] <= 4294967296 and mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96]) + 32 <= return_data.size
                mem[_618 + ceil32(return_data.size) + 96] = mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96]
                _1875 = mem[_1844 + _618 + 96]
                s = 0
                while s < 32 * _1875:
                    mem[_618 + ceil32(return_data.size) + s + 128] = mem[_1844 + _618 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1875) + _618 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 0 < mem[_618 + ceil32(return_data.size) + 96]
                if mem[_618 + ceil32(return_data.size) + 128] <= mem[160]:
                    require 0 < mem[96]
                    require 0 < mem[_618 + ceil32(return_data.size) + 96]
                    if mem[_618 + ceil32(return_data.size) + 128] >= mem[128]:
                        if arg5:
                            idx = idx + 1
                            s = _618 + ceil32(return_data.size) + 96
                            t = _618
                            t = t
                            continue 
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 132] = arg4
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 164] = 64
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 196] = mem[_618]
                        s = 0
                        while s < 32 * mem[_618]:
                            mem[(32 * _1875) + _618 + ceil32(return_data.size) + s + 228] = mem[_618 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[(32 * _1875) + _618 + ceil32(return_data.size) + 196 len (32 * mem[_618]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _4034 = mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                        require mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]
                        _4098 = mem[_4034 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]
                        s = 0
                        while s < 32 * _4098:
                            mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4034 + (32 * _1875) + _618 + ceil32(return_data.size) + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4098) + (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 160
                        require 1 < mem[96]
                        require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                        if mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192] <= mem[160]:
                            require 0 < mem[96]
                            require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                            if mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192] < mem[128]:
                                require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                                require 0 < mem[96]
                                mem[128] = mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192]
                            idx = idx + 1
                            s = (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128
                            t = _618
                            t = t
                            continue 
                        require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                        require 1 < mem[96]
                        mem[160] = mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192]
                        require idx < arg1.length
                    else:
                        require 0 < mem[_618 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_618 + ceil32(return_data.size) + 128]
                        require idx < arg1.length
                        if arg5:
                            idx = idx + 1
                            s = _618 + ceil32(return_data.size) + 96
                            t = _618
                            t = address(cd[((32 * idx) + arg1 + 36)])
                            continue 
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 132] = arg4
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 164] = 64
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 196] = mem[_618]
                        s = 0
                        while s < 32 * mem[_618]:
                            mem[(32 * _1875) + _618 + ceil32(return_data.size) + s + 228] = mem[_618 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[(32 * _1875) + _618 + ceil32(return_data.size) + 196 len (32 * mem[_618]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _4036 = mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                        require mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]
                        _4099 = mem[_4036 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]
                        s = 0
                        while s < 32 * _4099:
                            mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4036 + (32 * _1875) + _618 + ceil32(return_data.size) + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4099) + (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 160
                        require 1 < mem[96]
                        require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                        if mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192] > mem[160]:
                            require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                            require 1 < mem[96]
                            mem[160] = mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192]
                            require idx < arg1.length
                else:
                    require 0 < mem[_618 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_618 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    require 0 < mem[_618 + ceil32(return_data.size) + 96]
                    if mem[_618 + ceil32(return_data.size) + 128] >= mem[128]:
                        if arg5:
                            idx = idx + 1
                            s = _618 + ceil32(return_data.size) + 96
                            t = _618
                            t = t
                            continue 
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 132] = arg4
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 164] = 64
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 196] = mem[_618]
                        s = 0
                        while s < 32 * mem[_618]:
                            mem[(32 * _1875) + _618 + ceil32(return_data.size) + s + 228] = mem[_618 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[(32 * _1875) + _618 + ceil32(return_data.size) + 196 len (32 * mem[_618]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _4038 = mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                        require mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]
                        _4100 = mem[_4038 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]
                        s = 0
                        while s < 32 * _4100:
                            mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4038 + (32 * _1875) + _618 + ceil32(return_data.size) + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4100) + (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 160
                        require 1 < mem[96]
                        require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                        if mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192] <= mem[160]:
                            require 0 < mem[96]
                            require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                            if mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192] < mem[128]:
                                require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                                require 0 < mem[96]
                                mem[128] = mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192]
                            idx = idx + 1
                            s = (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128
                            t = _618
                            t = t
                            continue 
                        require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                        require 1 < mem[96]
                        mem[160] = mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192]
                        require idx < arg1.length
                    else:
                        require 0 < mem[_618 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_618 + ceil32(return_data.size) + 128]
                        require idx < arg1.length
                        if arg5:
                            idx = idx + 1
                            s = _618 + ceil32(return_data.size) + 96
                            t = _618
                            t = address(cd[((32 * idx) + arg1 + 36)])
                            continue 
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 132] = arg4
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 164] = 64
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 196] = mem[_618]
                        s = 0
                        while s < 32 * mem[_618]:
                            mem[(32 * _1875) + _618 + ceil32(return_data.size) + s + 228] = mem[_618 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[(32 * _1875) + _618 + ceil32(return_data.size) + 196 len (32 * mem[_618]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _4040 = mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                        require mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1875) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]
                        _4101 = mem[_4040 + (32 * _1875) + _618 + ceil32(return_data.size) + 128]
                        s = 0
                        while s < 32 * _4101:
                            mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4040 + (32 * _1875) + _618 + ceil32(return_data.size) + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4101) + (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 160
                        require 1 < mem[96]
                        require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                        if mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192] > mem[160]:
                            require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                            require 1 < mem[96]
                            mem[160] = mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192]
                            require idx < arg1.length
                require 0 < mem[96]
                require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                if mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192] < mem[128]:
                    require 1 < mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[(32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 192]
                idx = idx + 1
                s = (32 * _1875) + _618 + (2 * ceil32(return_data.size)) + 128
                t = _618
                t = address(cd[((32 * idx) + arg1 + 36)])
                continue 
            require 0 < mem[s]
            require 1 < mem[96]
            mem[160] = mem[s + 32]
            require 0 < mem[s]
            require 0 < mem[96]
            mem[128] = mem[s + 32]
            require idx < arg1.length
            if not arg5:
                mem[_618 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_618 + 100] = arg4
                mem[_618 + 132] = 64
                mem[_618 + 164] = mem[_618]
                s = 0
                while s < 32 * mem[_618]:
                    mem[_618 + s + 196] = mem[_618 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[_618 + 164 len (32 * mem[_618]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_618 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _618 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1846 = mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32
                require mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96] <= 4294967296 and mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96]) + 32 <= return_data.size
                mem[_618 + ceil32(return_data.size) + 96] = mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96]
                _1876 = mem[_1846 + _618 + 96]
                s = 0
                while s < 32 * _1876:
                    mem[_618 + ceil32(return_data.size) + s + 128] = mem[_1846 + _618 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1876) + _618 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_618 + ceil32(return_data.size) + 96]
                if mem[_618 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_618 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_618 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
                require 0 < mem[96]
                require 1 < mem[_618 + ceil32(return_data.size) + 96]
                if mem[_618 + ceil32(return_data.size) + 160] < mem[128]:
                    require 1 < mem[_618 + ceil32(return_data.size) + 96]
                    require 0 < mem[96]
                    mem[128] = mem[_618 + ceil32(return_data.size) + 160]
                idx = idx + 1
                s = _618 + ceil32(return_data.size) + 96
                t = _618
                t = address(cd[((32 * idx) + arg1 + 36)])
                continue 
            mem[_618 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_618 + 100] = arg4
            mem[_618 + 132] = 64
            mem[_618 + 164] = mem[_618]
            s = 0
            while s < 32 * mem[_618]:
                mem[_618 + s + 196] = mem[_618 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg4, 64, mem[_618 + 164 len (32 * mem[_618]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_618 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _618 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1848 = mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32
            require mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96] <= 4294967296 and mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96]) + 32 <= return_data.size
            mem[_618 + ceil32(return_data.size) + 96] = mem[mem[_618 + 96 len 4], Mask(224, 32, arg4) >> 32 + _618 + 96]
            _1877 = mem[_1848 + _618 + 96]
            s = 0
            while s < 32 * _1877:
                mem[_618 + ceil32(return_data.size) + s + 128] = mem[_1848 + _618 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _1877) + _618 + ceil32(return_data.size) + 128
            require 1 < mem[96]
            require 0 < mem[_618 + ceil32(return_data.size) + 96]
            if mem[_618 + ceil32(return_data.size) + 128] <= mem[160]:
                require 0 < mem[96]
                require 0 < mem[_618 + ceil32(return_data.size) + 96]
                if mem[_618 + ceil32(return_data.size) + 128] >= mem[128]:
                    if arg5:
                        idx = idx + 1
                        s = _618 + ceil32(return_data.size) + 96
                        t = _618
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 132] = arg4
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 196] = mem[_618]
                    s = 0
                    while s < 32 * mem[_618]:
                        mem[(32 * _1877) + _618 + ceil32(return_data.size) + s + 228] = mem[_618 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1877) + _618 + ceil32(return_data.size) + 196 len (32 * mem[_618]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _4042 = mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                    mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]
                    _4102 = mem[_4042 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]
                    s = 0
                    while s < 32 * _4102:
                        mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4042 + (32 * _1877) + _618 + ceil32(return_data.size) + s + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4102) + (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 160
                else:
                    require 0 < mem[_618 + ceil32(return_data.size) + 96]
                    require 0 < mem[96]
                    mem[128] = mem[_618 + ceil32(return_data.size) + 128]
                    require idx < arg1.length
                    if arg5:
                        idx = idx + 1
                        s = _618 + ceil32(return_data.size) + 96
                        t = _618
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 132] = arg4
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 196] = mem[_618]
                    s = 0
                    while s < 32 * mem[_618]:
                        mem[(32 * _1877) + _618 + ceil32(return_data.size) + s + 228] = mem[_618 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1877) + _618 + ceil32(return_data.size) + 196 len (32 * mem[_618]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _4044 = mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                    mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]
                    _4103 = mem[_4044 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]
                    s = 0
                    while s < 32 * _4103:
                        mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4044 + (32 * _1877) + _618 + ceil32(return_data.size) + s + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4103) + (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 160
            else:
                require 0 < mem[_618 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_618 + ceil32(return_data.size) + 128]
                require 0 < mem[96]
                require 0 < mem[_618 + ceil32(return_data.size) + 96]
                if mem[_618 + ceil32(return_data.size) + 128] >= mem[128]:
                    if arg5:
                        idx = idx + 1
                        s = _618 + ceil32(return_data.size) + 96
                        t = _618
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 132] = arg4
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 196] = mem[_618]
                    s = 0
                    while s < 32 * mem[_618]:
                        mem[(32 * _1877) + _618 + ceil32(return_data.size) + s + 228] = mem[_618 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1877) + _618 + ceil32(return_data.size) + 196 len (32 * mem[_618]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _4046 = mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                    mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]
                    _4104 = mem[_4046 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]
                    s = 0
                    while s < 32 * _4104:
                        mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4046 + (32 * _1877) + _618 + ceil32(return_data.size) + s + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4104) + (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 160
                else:
                    require 0 < mem[_618 + ceil32(return_data.size) + 96]
                    require 0 < mem[96]
                    mem[128] = mem[_618 + ceil32(return_data.size) + 128]
                    require idx < arg1.length
                    if arg5:
                        idx = idx + 1
                        s = _618 + ceil32(return_data.size) + 96
                        t = _618
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 132] = arg4
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 196] = mem[_618]
                    s = 0
                    while s < 32 * mem[_618]:
                        mem[(32 * _1877) + _618 + ceil32(return_data.size) + s + 228] = mem[_618 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1877) + _618 + ceil32(return_data.size) + 196 len (32 * mem[_618]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _4048 = mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                    mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _1877) + _618 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]
                    _4105 = mem[_4048 + (32 * _1877) + _618 + ceil32(return_data.size) + 128]
                    s = 0
                    while s < 32 * _4105:
                        mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + s + 160] = mem[_4048 + (32 * _1877) + _618 + ceil32(return_data.size) + s + 160]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4105) + (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 160
            require 1 < mem[96]
            require 1 < mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128]
            if mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 192] > mem[160]:
                require 1 < mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128]
                require 1 < mem[96]
                mem[160] = mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 192]
                require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128]
            if mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 192] < mem[128]:
                require 1 < mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128]
                require 0 < mem[96]
                mem[128] = mem[(32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 192]
            idx = idx + 1
            s = (32 * _1877) + _618 + (2 * ceil32(return_data.size)) + 128
            t = _618
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        _617 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        require 0 < mem[_617]
        mem[_617 + 32] = arg2
        require 1 < mem[_617]
        mem[_617 + 64] = WBNBAddress
        require 2 < mem[_617]
        mem[_617 + 96] = arg3
        if idx:
            if not arg5:
                mem[_617 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_617 + 132] = arg4
                mem[_617 + 164] = 64
                mem[_617 + 196] = mem[_617]
                s = 0
                while s < 32 * mem[_617]:
                    mem[_617 + s + 228] = mem[_617 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[_617 + 196 len (32 * mem[_617]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_617 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _617 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1834 = mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32
                require mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128] <= 4294967296 and mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128]) + 32 <= return_data.size
                mem[_617 + ceil32(return_data.size) + 128] = mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128]
                _1870 = mem[_1834 + _617 + 128]
                s = 0
                while s < 32 * _1870:
                    mem[_617 + ceil32(return_data.size) + s + 160] = mem[_1834 + _617 + s + 160]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1870) + _617 + ceil32(return_data.size) + 160
                require 1 < mem[96]
                require 1 < mem[_617 + ceil32(return_data.size) + 128]
                if mem[_617 + ceil32(return_data.size) + 192] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_617 + ceil32(return_data.size) + 128]
                    if mem[_617 + ceil32(return_data.size) + 192] < mem[128]:
                        require 1 < mem[_617 + ceil32(return_data.size) + 128]
                        require 0 < mem[96]
                        mem[128] = mem[_617 + ceil32(return_data.size) + 192]
                    idx = idx + 1
                    s = _617 + ceil32(return_data.size) + 128
                    t = _617
                    t = t
                    continue 
                require 1 < mem[_617 + ceil32(return_data.size) + 128]
                require 1 < mem[96]
                mem[160] = mem[_617 + ceil32(return_data.size) + 192]
                require idx < arg1.length
                require 0 < mem[96]
                require 1 < mem[_617 + ceil32(return_data.size) + 128]
                if mem[_617 + ceil32(return_data.size) + 192] < mem[128]:
                    require 1 < mem[_617 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[_617 + ceil32(return_data.size) + 192]
                idx = idx + 1
                s = _617 + ceil32(return_data.size) + 128
                t = _617
                t = address(cd[((32 * idx) + arg1 + 36)])
                continue 
            mem[_617 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_617 + 132] = arg4
            mem[_617 + 164] = 64
            mem[_617 + 196] = mem[_617]
            s = 0
            while s < 32 * mem[_617]:
                mem[_617 + s + 228] = mem[_617 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg4, 64, mem[_617 + 196 len (32 * mem[_617]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_617 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _617 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1836 = mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32
            require mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128] <= 4294967296 and mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128]) + 32 <= return_data.size
            mem[_617 + ceil32(return_data.size) + 128] = mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128]
            _1871 = mem[_1836 + _617 + 128]
            s = 0
            while s < 32 * _1871:
                mem[_617 + ceil32(return_data.size) + s + 160] = mem[_1836 + _617 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1871) + _617 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 0 < mem[_617 + ceil32(return_data.size) + 128]
            if mem[_617 + ceil32(return_data.size) + 160] <= mem[160]:
                require 0 < mem[96]
                require 0 < mem[_617 + ceil32(return_data.size) + 128]
                if mem[_617 + ceil32(return_data.size) + 160] >= mem[128]:
                    if arg5:
                        idx = idx + 1
                        s = _617 + ceil32(return_data.size) + 128
                        t = _617
                        t = t
                        continue 
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 164] = arg4
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 196] = 64
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 228] = mem[_617]
                    s = 0
                    while s < 32 * mem[_617]:
                        mem[(32 * _1871) + _617 + ceil32(return_data.size) + s + 260] = mem[_617 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1871) + _617 + ceil32(return_data.size) + 228 len (32 * mem[_617]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    _4018 = mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]) + 32 <= return_data.size
                    mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]
                    _4090 = mem[_4018 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]
                    s = 0
                    while s < 32 * _4090:
                        mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + s + 192] = mem[_4018 + (32 * _1871) + _617 + ceil32(return_data.size) + s + 192]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4090) + (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 192
                    require 1 < mem[96]
                    require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224] <= mem[160]:
                        require 0 < mem[96]
                        require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                        if mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224] < mem[128]:
                            require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                            require 0 < mem[96]
                            mem[128] = mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160
                        t = _617
                        t = t
                        continue 
                    require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                    require 1 < mem[96]
                    mem[160] = mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224]
                    require idx < arg1.length
                else:
                    require 0 < mem[_617 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[_617 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
                    if arg5:
                        idx = idx + 1
                        s = _617 + ceil32(return_data.size) + 128
                        t = _617
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 164] = arg4
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 196] = 64
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 228] = mem[_617]
                    s = 0
                    while s < 32 * mem[_617]:
                        mem[(32 * _1871) + _617 + ceil32(return_data.size) + s + 260] = mem[_617 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1871) + _617 + ceil32(return_data.size) + 228 len (32 * mem[_617]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    _4020 = mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]) + 32 <= return_data.size
                    mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]
                    _4091 = mem[_4020 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]
                    s = 0
                    while s < 32 * _4091:
                        mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + s + 192] = mem[_4020 + (32 * _1871) + _617 + ceil32(return_data.size) + s + 192]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4091) + (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 192
                    require 1 < mem[96]
                    require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224] > mem[160]:
                        require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                        require 1 < mem[96]
                        mem[160] = mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224]
                        require idx < arg1.length
            else:
                require 0 < mem[_617 + ceil32(return_data.size) + 128]
                require 1 < mem[96]
                mem[160] = mem[_617 + ceil32(return_data.size) + 160]
                require 0 < mem[96]
                require 0 < mem[_617 + ceil32(return_data.size) + 128]
                if mem[_617 + ceil32(return_data.size) + 160] >= mem[128]:
                    if arg5:
                        idx = idx + 1
                        s = _617 + ceil32(return_data.size) + 128
                        t = _617
                        t = t
                        continue 
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 164] = arg4
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 196] = 64
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 228] = mem[_617]
                    s = 0
                    while s < 32 * mem[_617]:
                        mem[(32 * _1871) + _617 + ceil32(return_data.size) + s + 260] = mem[_617 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1871) + _617 + ceil32(return_data.size) + 228 len (32 * mem[_617]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    _4022 = mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]) + 32 <= return_data.size
                    mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]
                    _4092 = mem[_4022 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]
                    s = 0
                    while s < 32 * _4092:
                        mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + s + 192] = mem[_4022 + (32 * _1871) + _617 + ceil32(return_data.size) + s + 192]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4092) + (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 192
                    require 1 < mem[96]
                    require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224] <= mem[160]:
                        require 0 < mem[96]
                        require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                        if mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224] < mem[128]:
                            require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                            require 0 < mem[96]
                            mem[128] = mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160
                        t = _617
                        t = t
                        continue 
                    require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                    require 1 < mem[96]
                    mem[160] = mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224]
                    require idx < arg1.length
                else:
                    require 0 < mem[_617 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[_617 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
                    if arg5:
                        idx = idx + 1
                        s = _617 + ceil32(return_data.size) + 128
                        t = _617
                        t = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 164] = arg4
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 196] = 64
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 228] = mem[_617]
                    s = 0
                    while s < 32 * mem[_617]:
                        mem[(32 * _1871) + _617 + ceil32(return_data.size) + s + 260] = mem[_617 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[(32 * _1871) + _617 + ceil32(return_data.size) + 228 len (32 * mem[_617]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    _4024 = mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32
                    require mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]) + 32 <= return_data.size
                    mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _1871) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]
                    _4093 = mem[_4024 + (32 * _1871) + _617 + ceil32(return_data.size) + 160]
                    s = 0
                    while s < 32 * _4093:
                        mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + s + 192] = mem[_4024 + (32 * _1871) + _617 + ceil32(return_data.size) + s + 192]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4093) + (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 192
                    require 1 < mem[96]
                    require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                    if mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224] > mem[160]:
                        require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                        require 1 < mem[96]
                        mem[160] = mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224]
                        require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
            if mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224] < mem[128]:
                require 1 < mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160]
                require 0 < mem[96]
                mem[128] = mem[(32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 224]
            idx = idx + 1
            s = (32 * _1871) + _617 + (2 * ceil32(return_data.size)) + 160
            t = _617
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        require 0 < mem[s]
        require 1 < mem[96]
        mem[160] = mem[s + 32]
        require 0 < mem[s]
        require 0 < mem[96]
        mem[128] = mem[s + 32]
        require idx < arg1.length
        if not arg5:
            mem[_617 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_617 + 132] = arg4
            mem[_617 + 164] = 64
            mem[_617 + 196] = mem[_617]
            s = 0
            while s < 32 * mem[_617]:
                mem[_617 + s + 228] = mem[_617 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg4, 64, mem[_617 + 196 len (32 * mem[_617]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_617 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _617 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1838 = mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32
            require mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128] <= 4294967296 and mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128]) + 32 <= return_data.size
            mem[_617 + ceil32(return_data.size) + 128] = mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128]
            _1872 = mem[_1838 + _617 + 128]
            s = 0
            while s < 32 * _1872:
                mem[_617 + ceil32(return_data.size) + s + 160] = mem[_1838 + _617 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1872) + _617 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_617 + ceil32(return_data.size) + 128]
            if mem[_617 + ceil32(return_data.size) + 192] > mem[160]:
                require 1 < mem[_617 + ceil32(return_data.size) + 128]
                require 1 < mem[96]
                mem[160] = mem[_617 + ceil32(return_data.size) + 192]
                require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_617 + ceil32(return_data.size) + 128]
            if mem[_617 + ceil32(return_data.size) + 192] < mem[128]:
                require 1 < mem[_617 + ceil32(return_data.size) + 128]
                require 0 < mem[96]
                mem[128] = mem[_617 + ceil32(return_data.size) + 192]
            idx = idx + 1
            s = _617 + ceil32(return_data.size) + 128
            t = _617
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        mem[_617 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[_617 + 132] = arg4
        mem[_617 + 164] = 64
        mem[_617 + 196] = mem[_617]
        s = 0
        while s < 32 * mem[_617]:
            mem[_617 + s + 228] = mem[_617 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg4, 64, mem[_617 + 196 len (32 * mem[_617]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_617 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _617 + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _1840 = mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32
        require mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128] <= 4294967296 and mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128]) + 32 <= return_data.size
        mem[_617 + ceil32(return_data.size) + 128] = mem[mem[_617 + 128 len 4], Mask(224, 32, arg4) >> 32 + _617 + 128]
        _1873 = mem[_1840 + _617 + 128]
        s = 0
        while s < 32 * _1873:
            mem[_617 + ceil32(return_data.size) + s + 160] = mem[_1840 + _617 + s + 160]
            s = s + 32
            continue 
        mem[64] = (32 * _1873) + _617 + ceil32(return_data.size) + 160
        require 1 < mem[96]
        require 0 < mem[_617 + ceil32(return_data.size) + 128]
        if mem[_617 + ceil32(return_data.size) + 160] <= mem[160]:
            require 0 < mem[96]
            require 0 < mem[_617 + ceil32(return_data.size) + 128]
            if mem[_617 + ceil32(return_data.size) + 160] >= mem[128]:
                if arg5:
                    idx = idx + 1
                    s = _617 + ceil32(return_data.size) + 128
                    t = _617
                    t = address(cd[((32 * idx) + arg1 + 36)])
                    continue 
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 164] = arg4
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 196] = 64
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 228] = mem[_617]
                s = 0
                while s < 32 * mem[_617]:
                    mem[(32 * _1873) + _617 + ceil32(return_data.size) + s + 260] = mem[_617 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[(32 * _1873) + _617 + ceil32(return_data.size) + 228 len (32 * mem[_617]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                _4026 = mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32
                require mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]) + 32 <= return_data.size
                mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]
                _4094 = mem[_4026 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]
                s = 0
                while s < 32 * _4094:
                    mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + s + 192] = mem[_4026 + (32 * _1873) + _617 + ceil32(return_data.size) + s + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4094) + (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 192
            else:
                require 0 < mem[_617 + ceil32(return_data.size) + 128]
                require 0 < mem[96]
                mem[128] = mem[_617 + ceil32(return_data.size) + 160]
                require idx < arg1.length
                if arg5:
                    idx = idx + 1
                    s = _617 + ceil32(return_data.size) + 128
                    t = _617
                    t = address(cd[((32 * idx) + arg1 + 36)])
                    continue 
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 164] = arg4
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 196] = 64
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 228] = mem[_617]
                s = 0
                while s < 32 * mem[_617]:
                    mem[(32 * _1873) + _617 + ceil32(return_data.size) + s + 260] = mem[_617 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[(32 * _1873) + _617 + ceil32(return_data.size) + 228 len (32 * mem[_617]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                _4028 = mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32
                require mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]) + 32 <= return_data.size
                mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]
                _4095 = mem[_4028 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]
                s = 0
                while s < 32 * _4095:
                    mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + s + 192] = mem[_4028 + (32 * _1873) + _617 + ceil32(return_data.size) + s + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4095) + (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 192
        else:
            require 0 < mem[_617 + ceil32(return_data.size) + 128]
            require 1 < mem[96]
            mem[160] = mem[_617 + ceil32(return_data.size) + 160]
            require 0 < mem[96]
            require 0 < mem[_617 + ceil32(return_data.size) + 128]
            if mem[_617 + ceil32(return_data.size) + 160] >= mem[128]:
                if arg5:
                    idx = idx + 1
                    s = _617 + ceil32(return_data.size) + 128
                    t = _617
                    t = address(cd[((32 * idx) + arg1 + 36)])
                    continue 
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 164] = arg4
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 196] = 64
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 228] = mem[_617]
                s = 0
                while s < 32 * mem[_617]:
                    mem[(32 * _1873) + _617 + ceil32(return_data.size) + s + 260] = mem[_617 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[(32 * _1873) + _617 + ceil32(return_data.size) + 228 len (32 * mem[_617]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                _4030 = mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32
                require mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]) + 32 <= return_data.size
                mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]
                _4096 = mem[_4030 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]
                s = 0
                while s < 32 * _4096:
                    mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + s + 192] = mem[_4030 + (32 * _1873) + _617 + ceil32(return_data.size) + s + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4096) + (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 192
            else:
                require 0 < mem[_617 + ceil32(return_data.size) + 128]
                require 0 < mem[96]
                mem[128] = mem[_617 + ceil32(return_data.size) + 160]
                require idx < arg1.length
                if arg5:
                    idx = idx + 1
                    s = _617 + ceil32(return_data.size) + 128
                    t = _617
                    t = address(cd[((32 * idx) + arg1 + 36)])
                    continue 
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 164] = arg4
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 196] = 64
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 228] = mem[_617]
                s = 0
                while s < 32 * mem[_617]:
                    mem[(32 * _1873) + _617 + ceil32(return_data.size) + s + 260] = mem[_617 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg4, 64, mem[(32 * _1873) + _617 + ceil32(return_data.size) + 228 len (32 * mem[_617]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                _4032 = mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32
                require mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]) + 32 <= return_data.size
                mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _1873) + _617 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg4) >> 32 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]
                _4097 = mem[_4032 + (32 * _1873) + _617 + ceil32(return_data.size) + 160]
                s = 0
                while s < 32 * _4097:
                    mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + s + 192] = mem[_4032 + (32 * _1873) + _617 + ceil32(return_data.size) + s + 192]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4097) + (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 192
        require 1 < mem[96]
        require 1 < mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160]
        if mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 224] > mem[160]:
            require 1 < mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160]
            require 1 < mem[96]
            mem[160] = mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 224]
            require idx < arg1.length
        require 0 < mem[96]
        require 1 < mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160]
        if mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 224] < mem[128]:
            require 1 < mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160]
            require 0 < mem[96]
            mem[128] = mem[(32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 224]
        idx = idx + 1
        s = (32 * _1873) + _617 + (2 * ceil32(return_data.size)) + 160
        t = _617
        t = address(cd[((32 * idx) + arg1 + 36)])
        continue 
    mem[mem[64] + 32] = address(t)
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 64, address(t), mem[mem[64] + 64 len (32 * mem[96]) + 32]
}



}
