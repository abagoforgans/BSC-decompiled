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
        if BUSDAddress == WBNBAddress:
            _322 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_322]
            mem[_322 + 32] = WBNBAddress
            require 1 < mem[_322]
            mem[_322 + 64] = BUSDAddress
            if idx:
                mem[_322 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_322 + 100] = arg2
                mem[_322 + 132] = 64
                mem[_322 + 164] = mem[_322]
                s = 0
                while s < 32 * mem[_322]:
                    mem[_322 + s + 196] = mem[_322 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[_322 + 164 len (32 * mem[_322]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_322 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _322 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _996 = mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + _322 + 96] <= 4294967296 and mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + _322 + 96]) + 32 <= return_data.size
                mem[_322 + ceil32(return_data.size) + 96] = mem[mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + _322 + 96]
                _1036 = mem[_996 + _322 + 96]
                s = 0
                while s < 32 * _1036:
                    mem[_322 + ceil32(return_data.size) + s + 128] = mem[_996 + _322 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1036) + _322 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_322 + ceil32(return_data.size) + 96]
                if mem[_322 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_322 + ceil32(return_data.size) + 96]
                    if mem[_322 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_322 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_322 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _322 + ceil32(return_data.size) + 96
                    t = _322
                    t = t
                    continue 
                require 1 < mem[_322 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_322 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_322 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_322 + 100] = arg2
                mem[_322 + 132] = 64
                mem[_322 + 164] = mem[_322]
                s = 0
                while s < 32 * mem[_322]:
                    mem[_322 + s + 196] = mem[_322 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[_322 + 164 len (32 * mem[_322]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_322 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _322 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1000 = mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + _322 + 96] <= 4294967296 and mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + _322 + 96]) + 32 <= return_data.size
                mem[_322 + ceil32(return_data.size) + 96] = mem[mem[_322 + 96 len 4], Mask(224, 32, arg2) >> 32 + _322 + 96]
                _1038 = mem[_1000 + _322 + 96]
                s = 0
                while s < 32 * _1038:
                    mem[_322 + ceil32(return_data.size) + s + 128] = mem[_1000 + _322 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1038) + _322 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_322 + ceil32(return_data.size) + 96]
                if mem[_322 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_322 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_322 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_322 + ceil32(return_data.size) + 96]
            if mem[_322 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_322 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_322 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _322 + ceil32(return_data.size) + 96
            t = _322
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        if 0 == WBNBAddress:
            _324 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_324]
            mem[_324 + 32] = BUSDAddress
            require 1 < mem[_324]
            mem[_324 + 64] = WBNBAddress
            if idx:
                mem[_324 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_324 + 100] = arg2
                mem[_324 + 132] = 64
                mem[_324 + 164] = mem[_324]
                s = 0
                while s < 32 * mem[_324]:
                    mem[_324 + s + 196] = mem[_324 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[_324 + 164 len (32 * mem[_324]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_324 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _324 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _988 = mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + _324 + 96] <= 4294967296 and mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + _324 + 96]) + 32 <= return_data.size
                mem[_324 + ceil32(return_data.size) + 96] = mem[mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + _324 + 96]
                _1032 = mem[_988 + _324 + 96]
                s = 0
                while s < 32 * _1032:
                    mem[_324 + ceil32(return_data.size) + s + 128] = mem[_988 + _324 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1032) + _324 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_324 + ceil32(return_data.size) + 96]
                if mem[_324 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_324 + ceil32(return_data.size) + 96]
                    if mem[_324 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_324 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_324 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _324 + ceil32(return_data.size) + 96
                    t = _324
                    t = t
                    continue 
                require 1 < mem[_324 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_324 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_324 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_324 + 100] = arg2
                mem[_324 + 132] = 64
                mem[_324 + 164] = mem[_324]
                s = 0
                while s < 32 * mem[_324]:
                    mem[_324 + s + 196] = mem[_324 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[_324 + 164 len (32 * mem[_324]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_324 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _324 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _992 = mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + _324 + 96] <= 4294967296 and mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + _324 + 96]) + 32 <= return_data.size
                mem[_324 + ceil32(return_data.size) + 96] = mem[mem[_324 + 96 len 4], Mask(224, 32, arg2) >> 32 + _324 + 96]
                _1034 = mem[_992 + _324 + 96]
                s = 0
                while s < 32 * _1034:
                    mem[_324 + ceil32(return_data.size) + s + 128] = mem[_992 + _324 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1034) + _324 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_324 + ceil32(return_data.size) + 96]
                if mem[_324 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_324 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_324 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_324 + ceil32(return_data.size) + 96]
            if mem[_324 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_324 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_324 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _324 + ceil32(return_data.size) + 96
            t = _324
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        _323 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        require 0 < mem[_323]
        mem[_323 + 32] = BUSDAddress
        require 1 < mem[_323]
        mem[_323 + 64] = WBNBAddress
        require 2 < mem[_323]
        mem[_323 + 96] = 0
        if idx:
            mem[_323 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_323 + 132] = arg2
            mem[_323 + 164] = 64
            mem[_323 + 196] = mem[_323]
            s = 0
            while s < 32 * mem[_323]:
                mem[_323 + s + 228] = mem[_323 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[_323 + 196 len (32 * mem[_323]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_323 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _323 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _972 = mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32
            require mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + _323 + 128] <= 4294967296 and mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + _323 + 128]) + 32 <= return_data.size
            mem[_323 + ceil32(return_data.size) + 128] = mem[mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + _323 + 128]
            _1024 = mem[_972 + _323 + 128]
            s = 0
            while s < 32 * _1024:
                mem[_323 + ceil32(return_data.size) + s + 160] = mem[_972 + _323 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1024) + _323 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_323 + ceil32(return_data.size) + 128]
            if mem[_323 + ceil32(return_data.size) + 192] <= mem[160]:
                require 0 < mem[96]
                require 1 < mem[_323 + ceil32(return_data.size) + 128]
                if mem[_323 + ceil32(return_data.size) + 192] < mem[128]:
                    require 1 < mem[_323 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[_323 + ceil32(return_data.size) + 192]
                idx = idx + 1
                s = _323 + ceil32(return_data.size) + 128
                t = _323
                t = t
                continue 
            require 1 < mem[_323 + ceil32(return_data.size) + 128]
            require 1 < mem[96]
            mem[160] = mem[_323 + ceil32(return_data.size) + 192]
            require idx < arg1.length
        else:
            require 0 < mem[s]
            require 1 < mem[96]
            mem[160] = mem[s + 32]
            require 0 < mem[s]
            require 0 < mem[96]
            mem[128] = mem[s + 32]
            require idx < arg1.length
            mem[_323 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_323 + 132] = arg2
            mem[_323 + 164] = 64
            mem[_323 + 196] = mem[_323]
            s = 0
            while s < 32 * mem[_323]:
                mem[_323 + s + 228] = mem[_323 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[_323 + 196 len (32 * mem[_323]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_323 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _323 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _976 = mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32
            require mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + _323 + 128] <= 4294967296 and mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + _323 + 128]) + 32 <= return_data.size
            mem[_323 + ceil32(return_data.size) + 128] = mem[mem[_323 + 128 len 4], Mask(224, 32, arg2) >> 32 + _323 + 128]
            _1026 = mem[_976 + _323 + 128]
            s = 0
            while s < 32 * _1026:
                mem[_323 + ceil32(return_data.size) + s + 160] = mem[_976 + _323 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1026) + _323 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_323 + ceil32(return_data.size) + 128]
            if mem[_323 + ceil32(return_data.size) + 192] > mem[160]:
                require 1 < mem[_323 + ceil32(return_data.size) + 128]
                require 1 < mem[96]
                mem[160] = mem[_323 + ceil32(return_data.size) + 192]
                require idx < arg1.length
        require 0 < mem[96]
        require 1 < mem[_323 + ceil32(return_data.size) + 128]
        if mem[_323 + ceil32(return_data.size) + 192] < mem[128]:
            require 1 < mem[_323 + ceil32(return_data.size) + 128]
            require 0 < mem[96]
            mem[128] = mem[_323 + ceil32(return_data.size) + 192]
        idx = idx + 1
        s = _323 + ceil32(return_data.size) + 128
        t = _323
        t = address(cd[((32 * idx) + arg1 + 36)])
        continue 
    _321 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_321]
    mem[_321 + 32] = BUSDAddress
    require 1 < mem[_321]
    mem[_321 + 64] = WBNBAddress
    require 1 < mem[96]
    if mem[160] <= 0:
        mem[_321 + 96] = 32
        mem[_321 + 128] = mem[96]
        mem[_321 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return memory
          from mem[64]
           len (32 * mem[96]) + _321 + -mem[64] + 160
    if address(t) != 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        mem[_321 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
        mem[_321 + 100] = arg2
        mem[_321 + 132] = 0
        mem[_321 + 196] = msg.sender
        mem[_321 + 228] = block.timestamp + 60
        mem[_321 + 164] = 160
        mem[_321 + 260] = mem[_321]
        mem[_321 + 292 len floor32(mem[_321])] = mem[_321 + 32 len floor32(mem[_321])]
        require ext_code.size(address(t))
        call address(t).0x5d616c5b with:
             gas gas_remaining wei
            args arg2, 0, 160, msg.sender, block.timestamp + 60, mem[_321 + 260 len (32 * mem[_321]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_321 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _321 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _968 = mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + _321 + 96] <= 4294967296 and mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + _321 + 96]) + 32 <= return_data.size
        mem[_321 + ceil32(return_data.size) + 96] = mem[mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + _321 + 96]
        _1022 = mem[_968 + _321 + 96]
        mem[_321 + ceil32(return_data.size) + 128 len floor32(mem[_968 + _321 + 96])] = mem[_968 + _321 + 128 len floor32(mem[_968 + _321 + 96])]
        mem[(32 * _1022) + _321 + ceil32(return_data.size) + 128] = 32
        mem[(32 * _1022) + _321 + ceil32(return_data.size) + 160] = mem[_321 + ceil32(return_data.size) + 96]
        mem[(32 * _1022) + _321 + ceil32(return_data.size) + 192 len floor32(mem[_321 + ceil32(return_data.size) + 96])] = mem[_321 + ceil32(return_data.size) + 128 len floor32(mem[_321 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _1022) + _321 + ceil32(return_data.size) + 160 len (32 * mem[_321 + ceil32(return_data.size) + 96]) + 32]
    mem[_321 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[_321 + 100] = arg2
    mem[_321 + 132] = 0
    mem[_321 + 196] = msg.sender
    mem[_321 + 228] = block.timestamp + 60
    mem[_321 + 164] = 160
    mem[_321 + 260] = mem[_321]
    mem[_321 + 292 len floor32(mem[_321])] = mem[_321 + 32 len floor32(mem[_321])]
    require ext_code.size(address(t))
    call address(t).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, msg.sender, block.timestamp + 60, mem[_321 + 260 len (32 * mem[_321]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_321 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _321 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    _970 = mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + _321 + 96] <= 4294967296 and mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + _321 + 96]) + 32 <= return_data.size
    mem[_321 + ceil32(return_data.size) + 96] = mem[mem[_321 + 96 len 4], Mask(224, 32, arg2) >> 32 + _321 + 96]
    _1023 = mem[_970 + _321 + 96]
    mem[_321 + ceil32(return_data.size) + 128 len floor32(mem[_970 + _321 + 96])] = mem[_970 + _321 + 128 len floor32(mem[_970 + _321 + 96])]
    mem[(32 * _1023) + _321 + ceil32(return_data.size) + 128] = 32
    mem[(32 * _1023) + _321 + ceil32(return_data.size) + 160] = mem[_321 + ceil32(return_data.size) + 96]
    mem[(32 * _1023) + _321 + ceil32(return_data.size) + 192 len floor32(mem[_321 + ceil32(return_data.size) + 96])] = mem[_321 + ceil32(return_data.size) + 128 len floor32(mem[_321 + ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _1023) + _321 + ceil32(return_data.size) + 160 len (32 * mem[_321 + ceil32(return_data.size) + 96]) + 32]
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
        if 0 == WBNBAddress:
            _334 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_334]:
                mem[_334 + 32] = WBNBAddress
                if 1 < mem[_334]:
                    mem[_334 + 64] = BUSDAddress
                    if idx:
                        mem[_334 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_334 + 100] = arg2
                        mem[_334 + 132] = 64
                        mem[_334 + 164] = mem[_334]
                        s = 0
                        while s < 32 * mem[_334]:
                            mem[_334 + s + 196] = mem[_334 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, 64, mem[_334 + 164 len (32 * mem[_334]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_334 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _334 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _1039 = mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + _334 + 96] <= 4294967296 and mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + _334 + 96]) + 32 <= return_data.size
                        mem[_334 + ceil32(return_data.size) + 96] = mem[mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + _334 + 96]
                        _1078 = mem[_1039 + _334 + 96]
                        s = 0
                        while s < 32 * _1078:
                            mem[_334 + ceil32(return_data.size) + s + 128] = mem[_1039 + _334 + s + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _1078) + _334 + ceil32(return_data.size) + 128
                        if 1 < mem[96]:
                            if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                if mem[_334 + ceil32(return_data.size) + 128] <= mem[160]:
                                    if 0 < mem[96]:
                                        if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                            if mem[_334 + ceil32(return_data.size) + 128] >= mem[128]:
                                                idx = idx + 1
                                                s = _334 + ceil32(return_data.size) + 96
                                                t = _334
                                                t = t
                                                continue 
                                            if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                if 0 < mem[96]:
                                                    mem[128] = mem[_334 + ceil32(return_data.size) + 128]
                                                    if idx < arg1.length:
                                                        idx = idx + 1
                                                        s = _334 + ceil32(return_data.size) + 96
                                                        t = _334
                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                        continue 
                                else:
                                    if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                        if 1 < mem[96]:
                                            mem[160] = mem[_334 + ceil32(return_data.size) + 128]
                                            if 0 < mem[96]:
                                                if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                    if mem[_334 + ceil32(return_data.size) + 128] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _334 + ceil32(return_data.size) + 96
                                                        t = _334
                                                        t = t
                                                        continue 
                                                    if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_334 + ceil32(return_data.size) + 128]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _334 + ceil32(return_data.size) + 96
                                                                t = _334
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
                                            mem[_334 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[_334 + 100] = arg2
                                            mem[_334 + 132] = 64
                                            mem[_334 + 164] = mem[_334]
                                            s = 0
                                            while s < 32 * mem[_334]:
                                                mem[_334 + s + 196] = mem[_334 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                                    gas gas_remaining wei
                                                   args arg2, 64, mem[_334 + 164 len (32 * mem[_334]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_334 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _334 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            _1043 = mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32
                                            require mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                            require mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                            require mem[mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + _334 + 96] <= 4294967296 and mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + _334 + 96]) + 32 <= return_data.size
                                            mem[_334 + ceil32(return_data.size) + 96] = mem[mem[_334 + 96 len 4], Mask(224, 32, arg2) >> 32 + _334 + 96]
                                            _1080 = mem[_1043 + _334 + 96]
                                            s = 0
                                            while s < 32 * _1080:
                                                mem[_334 + ceil32(return_data.size) + s + 128] = mem[_1043 + _334 + s + 128]
                                                s = s + 32
                                                continue 
                                            mem[64] = (32 * _1080) + _334 + ceil32(return_data.size) + 128
                                            if 1 < mem[96]:
                                                if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                    if mem[_334 + ceil32(return_data.size) + 128] <= mem[160]:
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                                if mem[_334 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _334 + ceil32(return_data.size) + 96
                                                                    t = _334
                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                                                if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_334 + ceil32(return_data.size) + 128]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _334 + ceil32(return_data.size) + 96
                                                                            t = _334
                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                    else:
                                                        if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                            if 1 < mem[96]:
                                                                mem[160] = mem[_334 + ceil32(return_data.size) + 128]
                                                                if 0 < mem[96]:
                                                                    if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                                        if mem[_334 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                            idx = idx + 1
                                                                            s = _334 + ceil32(return_data.size) + 96
                                                                            t = _334
                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                                        if 0 < mem[_334 + ceil32(return_data.size) + 96]:
                                                                            if 0 < mem[96]:
                                                                                mem[128] = mem[_334 + ceil32(return_data.size) + 128]
                                                                                if idx < arg1.length:
                                                                                    idx = idx + 1
                                                                                    s = _334 + ceil32(return_data.size) + 96
                                                                                    t = _334
                                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
        else:
            if BUSDAddress == WBNBAddress:
                _336 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_336]:
                    mem[_336 + 32] = BUSDAddress
                    if 1 < mem[_336]:
                        mem[_336 + 64] = WBNBAddress
                        if idx:
                            mem[_336 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[_336 + 100] = arg2
                            mem[_336 + 132] = 64
                            mem[_336 + 164] = mem[_336]
                            s = 0
                            while s < 32 * mem[_336]:
                                mem[_336 + s + 196] = mem[_336 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg2, 64, mem[_336 + 164 len (32 * mem[_336]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_336 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _336 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _1031 = mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32
                            require mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + _336 + 96] <= 4294967296 and mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + _336 + 96]) + 32 <= return_data.size
                            mem[_336 + ceil32(return_data.size) + 96] = mem[mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + _336 + 96]
                            _1074 = mem[_1031 + _336 + 96]
                            s = 0
                            while s < 32 * _1074:
                                mem[_336 + ceil32(return_data.size) + s + 128] = mem[_1031 + _336 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _1074) + _336 + ceil32(return_data.size) + 128
                            if 1 < mem[96]:
                                if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                    if mem[_336 + ceil32(return_data.size) + 128] <= mem[160]:
                                        if 0 < mem[96]:
                                            if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                if mem[_336 + ceil32(return_data.size) + 128] >= mem[128]:
                                                    idx = idx + 1
                                                    s = _336 + ceil32(return_data.size) + 96
                                                    t = _336
                                                    t = t
                                                    continue 
                                                if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                    if 0 < mem[96]:
                                                        mem[128] = mem[_336 + ceil32(return_data.size) + 128]
                                                        if idx < arg1.length:
                                                            idx = idx + 1
                                                            s = _336 + ceil32(return_data.size) + 96
                                                            t = _336
                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                            continue 
                                    else:
                                        if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                            if 1 < mem[96]:
                                                mem[160] = mem[_336 + ceil32(return_data.size) + 128]
                                                if 0 < mem[96]:
                                                    if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                        if mem[_336 + ceil32(return_data.size) + 128] >= mem[128]:
                                                            idx = idx + 1
                                                            s = _336 + ceil32(return_data.size) + 96
                                                            t = _336
                                                            t = t
                                                            continue 
                                                        if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_336 + ceil32(return_data.size) + 128]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _336 + ceil32(return_data.size) + 96
                                                                    t = _336
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
                                                mem[_336 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                mem[_336 + 100] = arg2
                                                mem[_336 + 132] = 64
                                                mem[_336 + 164] = mem[_336]
                                                s = 0
                                                while s < 32 * mem[_336]:
                                                    mem[_336 + s + 196] = mem[_336 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                                        gas gas_remaining wei
                                                       args arg2, 64, mem[_336 + 164 len (32 * mem[_336]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_336 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = _336 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                _1035 = mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32
                                                require mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                                require mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                                require mem[mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + _336 + 96] <= 4294967296 and mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + _336 + 96]) + 32 <= return_data.size
                                                mem[_336 + ceil32(return_data.size) + 96] = mem[mem[_336 + 96 len 4], Mask(224, 32, arg2) >> 32 + _336 + 96]
                                                _1076 = mem[_1035 + _336 + 96]
                                                s = 0
                                                while s < 32 * _1076:
                                                    mem[_336 + ceil32(return_data.size) + s + 128] = mem[_1035 + _336 + s + 128]
                                                    s = s + 32
                                                    continue 
                                                mem[64] = (32 * _1076) + _336 + ceil32(return_data.size) + 128
                                                if 1 < mem[96]:
                                                    if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                        if mem[_336 + ceil32(return_data.size) + 128] <= mem[160]:
                                                            if 0 < mem[96]:
                                                                if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                                    if mem[_336 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                        idx = idx + 1
                                                                        s = _336 + ceil32(return_data.size) + 96
                                                                        t = _336
                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
                                                                    if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                                        if 0 < mem[96]:
                                                                            mem[128] = mem[_336 + ceil32(return_data.size) + 128]
                                                                            if idx < arg1.length:
                                                                                idx = idx + 1
                                                                                s = _336 + ceil32(return_data.size) + 96
                                                                                t = _336
                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                        else:
                                                            if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                                if 1 < mem[96]:
                                                                    mem[160] = mem[_336 + ceil32(return_data.size) + 128]
                                                                    if 0 < mem[96]:
                                                                        if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                                            if mem[_336 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                                idx = idx + 1
                                                                                s = _336 + ceil32(return_data.size) + 96
                                                                                t = _336
                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_336 + ceil32(return_data.size) + 96]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_336 + ceil32(return_data.size) + 128]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _336 + ceil32(return_data.size) + 96
                                                                                        t = _336
                                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
            else:
                _335 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 < mem[_335]:
                    mem[_335 + 32] = 0
                    if 1 < mem[_335]:
                        mem[_335 + 64] = WBNBAddress
                        if 2 < mem[_335]:
                            mem[_335 + 96] = BUSDAddress
                            if idx:
                                mem[_335 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[_335 + 132] = arg2
                                mem[_335 + 164] = 64
                                mem[_335 + 196] = mem[_335]
                                s = 0
                                while s < 32 * mem[_335]:
                                    mem[_335 + s + 228] = mem[_335 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, 64, mem[_335 + 196 len (32 * mem[_335]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_335 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _335 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _1023 = mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32
                                require mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + _335 + 128] <= 4294967296 and mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + _335 + 128]) + 32 <= return_data.size
                                mem[_335 + ceil32(return_data.size) + 128] = mem[mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + _335 + 128]
                                _1070 = mem[_1023 + _335 + 128]
                                s = 0
                                while s < 32 * _1070:
                                    mem[_335 + ceil32(return_data.size) + s + 160] = mem[_1023 + _335 + s + 160]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _1070) + _335 + ceil32(return_data.size) + 160
                                if 1 < mem[96]:
                                    if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                        if mem[_335 + ceil32(return_data.size) + 160] <= mem[160]:
                                            if 0 < mem[96]:
                                                if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                    if mem[_335 + ceil32(return_data.size) + 160] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _335 + ceil32(return_data.size) + 128
                                                        t = _335
                                                        t = t
                                                        continue 
                                                    if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_335 + ceil32(return_data.size) + 160]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _335 + ceil32(return_data.size) + 128
                                                                t = _335
                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                                        else:
                                            if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                if 1 < mem[96]:
                                                    mem[160] = mem[_335 + ceil32(return_data.size) + 160]
                                                    if 0 < mem[96]:
                                                        if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                            if mem[_335 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                idx = idx + 1
                                                                s = _335 + ceil32(return_data.size) + 128
                                                                t = _335
                                                                t = t
                                                                continue 
                                                            if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                                if 0 < mem[96]:
                                                                    mem[128] = mem[_335 + ceil32(return_data.size) + 160]
                                                                    if idx < arg1.length:
                                                                        idx = idx + 1
                                                                        s = _335 + ceil32(return_data.size) + 128
                                                                        t = _335
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
                                                    mem[_335 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[_335 + 132] = arg2
                                                    mem[_335 + 164] = 64
                                                    mem[_335 + 196] = mem[_335]
                                                    s = 0
                                                    while s < 32 * mem[_335]:
                                                        mem[_335 + s + 228] = mem[_335 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                                            gas gas_remaining wei
                                                           args arg2, 64, mem[_335 + 196 len (32 * mem[_335]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_335 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _335 + ceil32(return_data.size) + 128
                                                    require return_data.size >= 32
                                                    _1027 = mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32
                                                    require mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                                    require mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                                    require mem[mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + _335 + 128] <= 4294967296 and mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + _335 + 128]) + 32 <= return_data.size
                                                    mem[_335 + ceil32(return_data.size) + 128] = mem[mem[_335 + 128 len 4], Mask(224, 32, arg2) >> 32 + _335 + 128]
                                                    _1072 = mem[_1027 + _335 + 128]
                                                    s = 0
                                                    while s < 32 * _1072:
                                                        mem[_335 + ceil32(return_data.size) + s + 160] = mem[_1027 + _335 + s + 160]
                                                        s = s + 32
                                                        continue 
                                                    mem[64] = (32 * _1072) + _335 + ceil32(return_data.size) + 160
                                                    if 1 < mem[96]:
                                                        if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                            if mem[_335 + ceil32(return_data.size) + 160] <= mem[160]:
                                                                if 0 < mem[96]:
                                                                    if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                                        if mem[_335 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                            idx = idx + 1
                                                                            s = _335 + ceil32(return_data.size) + 128
                                                                            t = _335
                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                                        if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                                            if 0 < mem[96]:
                                                                                mem[128] = mem[_335 + ceil32(return_data.size) + 160]
                                                                                if idx < arg1.length:
                                                                                    idx = idx + 1
                                                                                    s = _335 + ceil32(return_data.size) + 128
                                                                                    t = _335
                                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
                                                            else:
                                                                if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                                    if 1 < mem[96]:
                                                                        mem[160] = mem[_335 + ceil32(return_data.size) + 160]
                                                                        if 0 < mem[96]:
                                                                            if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                                                if mem[_335 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                                    idx = idx + 1
                                                                                    s = _335 + ceil32(return_data.size) + 128
                                                                                    t = _335
                                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
                                                                                if 0 < mem[_335 + ceil32(return_data.size) + 128]:
                                                                                    if 0 < mem[96]:
                                                                                        mem[128] = mem[_335 + ceil32(return_data.size) + 160]
                                                                                        if idx < arg1.length:
                                                                                            idx = idx + 1
                                                                                            s = _335 + ceil32(return_data.size) + 128
                                                                                            t = _335
                                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                            continue 
        revert
    _333 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_333]
    mem[_333 + 32] = WBNBAddress
    require 1 < mem[_333]
    mem[_333 + 64] = BUSDAddress
    if address(t) != 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        mem[_333 + 96] = 0x8332a96300000000000000000000000000000000000000000000000000000000
        mem[_333 + 100] = arg2
        mem[_333 + 164] = msg.sender
        mem[_333 + 196] = block.timestamp + 60
        mem[_333 + 132] = 128
        mem[_333 + 228] = mem[_333]
        mem[_333 + 260 len floor32(mem[_333])] = mem[_333 + 32 len floor32(mem[_333])]
        require ext_code.size(address(t))
        call address(t).0x8332a963 with:
           value msg.value wei
             gas gas_remaining wei
            args arg2, 128, msg.sender, block.timestamp + 60, mem[_333 + 228 len (32 * mem[_333]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_333 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _333 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _1009 = mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + _333 + 96] <= 4294967296 and mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + _333 + 96]) + 32 <= return_data.size
        mem[_333 + ceil32(return_data.size) + 96] = mem[mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + _333 + 96]
        _1063 = mem[_1009 + _333 + 96]
        mem[_333 + ceil32(return_data.size) + 128 len floor32(mem[_1009 + _333 + 96])] = mem[_1009 + _333 + 128 len floor32(mem[_1009 + _333 + 96])]
        require 0 < mem[_333 + ceil32(return_data.size) + 96]
        _1551 = mem[_333 + ceil32(return_data.size) + 128]
        mem[(32 * _1063) + _333 + ceil32(return_data.size) + 128] = 0
        mem[(32 * _1063) + _333 + ceil32(return_data.size) + 160 len 0] = None
        call msg.sender with:
           value msg.value - _1551 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _1063) + _333 + ceil32(return_data.size) + 263 len 29]
            mem[(32 * _1063) + _333 + ceil32(return_data.size) + 160] = 32
            mem[(32 * _1063) + _333 + ceil32(return_data.size) + 192] = mem[_333 + ceil32(return_data.size) + 96]
            mem[(32 * _1063) + _333 + ceil32(return_data.size) + 224 len floor32(mem[_333 + ceil32(return_data.size) + 96])] = mem[_333 + ceil32(return_data.size) + 128 len floor32(mem[_333 + ceil32(return_data.size) + 96])]
            return 32, mem[(32 * _1063) + _333 + ceil32(return_data.size) + 192 len (32 * mem[_333 + ceil32(return_data.size) + 96]) + 32]
        mem[(32 * _1063) + _333 + ceil32(return_data.size) + 160] = return_data.size
        mem[(32 * _1063) + _333 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[(32 * _1063) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
        mem[(32 * _1063) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 32
        mem[(32 * _1063) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[_333 + ceil32(return_data.size) + 96]
        mem[(32 * _1063) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 225 len floor32(mem[_333 + ceil32(return_data.size) + 96])] = mem[_333 + ceil32(return_data.size) + 128 len floor32(mem[_333 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _1063) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len (32 * mem[_333 + ceil32(return_data.size) + 96]) + 32], 
    mem[_333 + 96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[_333 + 100] = arg2
    mem[_333 + 164] = msg.sender
    mem[_333 + 196] = block.timestamp + 60
    mem[_333 + 132] = 128
    mem[_333 + 228] = mem[_333]
    mem[_333 + 260 len floor32(mem[_333])] = mem[_333 + 32 len floor32(mem[_333])]
    require ext_code.size(address(t))
    call address(t).swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, 128, msg.sender, block.timestamp + 60, mem[_333 + 228 len (32 * mem[_333]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_333 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _333 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    _1011 = mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + _333 + 96] <= 4294967296 and mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + _333 + 96]) + 32 <= return_data.size
    mem[_333 + ceil32(return_data.size) + 96] = mem[mem[_333 + 96 len 4], Mask(224, 32, arg2) >> 32 + _333 + 96]
    _1064 = mem[_1011 + _333 + 96]
    mem[_333 + ceil32(return_data.size) + 128 len floor32(mem[_1011 + _333 + 96])] = mem[_1011 + _333 + 128 len floor32(mem[_1011 + _333 + 96])]
    require 0 < mem[_333 + ceil32(return_data.size) + 96]
    _1552 = mem[_333 + ceil32(return_data.size) + 128]
    mem[(32 * _1064) + _333 + ceil32(return_data.size) + 128] = 0
    mem[(32 * _1064) + _333 + ceil32(return_data.size) + 160 len 0] = None
    call msg.sender with:
       value msg.value - _1552 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[(32 * _1064) + _333 + ceil32(return_data.size) + 263 len 29]
        mem[(32 * _1064) + _333 + ceil32(return_data.size) + 160] = 32
        mem[(32 * _1064) + _333 + ceil32(return_data.size) + 192] = mem[_333 + ceil32(return_data.size) + 96]
        mem[(32 * _1064) + _333 + ceil32(return_data.size) + 224 len floor32(mem[_333 + ceil32(return_data.size) + 96])] = mem[_333 + ceil32(return_data.size) + 128 len floor32(mem[_333 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _1064) + _333 + ceil32(return_data.size) + 192 len (32 * mem[_333 + ceil32(return_data.size) + 96]) + 32]
    mem[(32 * _1064) + _333 + ceil32(return_data.size) + 160] = return_data.size
    mem[(32 * _1064) + _333 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                    mem[(32 * _1064) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
    mem[(32 * _1064) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 32
    mem[(32 * _1064) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[_333 + ceil32(return_data.size) + 96]
    mem[(32 * _1064) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 225 len floor32(mem[_333 + ceil32(return_data.size) + 96])] = mem[_333 + ceil32(return_data.size) + 128 len floor32(mem[_333 + ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _1064) + _333 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len (32 * mem[_333 + ceil32(return_data.size) + 96]) + 32], 
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
        if BUSDAddress == WBNBAddress:
            _675 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_675]
            mem[_675 + 32] = WBNBAddress
            require 1 < mem[_675]
            mem[_675 + 64] = BUSDAddress
            if idx:
                mem[_675 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_675 + 100] = arg3
                mem[_675 + 132] = 64
                mem[_675 + 164] = mem[_675]
                s = 0
                while s < 32 * mem[_675]:
                    mem[_675 + s + 196] = mem[_675 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_675 + 164 len (32 * mem[_675]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_675 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _675 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1683 = mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + _675 + 96] <= 4294967296 and mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + _675 + 96]) + 32 <= return_data.size
                mem[_675 + ceil32(return_data.size) + 96] = mem[mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + _675 + 96]
                _1727 = mem[_1683 + _675 + 96]
                s = 0
                while s < 32 * _1727:
                    mem[_675 + ceil32(return_data.size) + s + 128] = mem[_1683 + _675 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1727) + _675 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_675 + ceil32(return_data.size) + 96]
                if mem[_675 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_675 + ceil32(return_data.size) + 96]
                    if mem[_675 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_675 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_675 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _675 + ceil32(return_data.size) + 96
                    t = _675
                    t = t
                    continue 
                require 1 < mem[_675 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_675 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_675 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_675 + 100] = arg3
                mem[_675 + 132] = 64
                mem[_675 + 164] = mem[_675]
                s = 0
                while s < 32 * mem[_675]:
                    mem[_675 + s + 196] = mem[_675 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_675 + 164 len (32 * mem[_675]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_675 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _675 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1687 = mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + _675 + 96] <= 4294967296 and mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + _675 + 96]) + 32 <= return_data.size
                mem[_675 + ceil32(return_data.size) + 96] = mem[mem[_675 + 96 len 4], Mask(224, 32, arg3) >> 32 + _675 + 96]
                _1729 = mem[_1687 + _675 + 96]
                s = 0
                while s < 32 * _1729:
                    mem[_675 + ceil32(return_data.size) + s + 128] = mem[_1687 + _675 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1729) + _675 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_675 + ceil32(return_data.size) + 96]
                if mem[_675 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_675 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_675 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_675 + ceil32(return_data.size) + 96]
            if mem[_675 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_675 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_675 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _675 + ceil32(return_data.size) + 96
            t = _675
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        if arg2 == WBNBAddress:
            _678 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_678]
            mem[_678 + 32] = BUSDAddress
            require 1 < mem[_678]
            mem[_678 + 64] = WBNBAddress
            if idx:
                mem[_678 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_678 + 100] = arg3
                mem[_678 + 132] = 64
                mem[_678 + 164] = mem[_678]
                s = 0
                while s < 32 * mem[_678]:
                    mem[_678 + s + 196] = mem[_678 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_678 + 164 len (32 * mem[_678]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_678 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _678 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1675 = mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + _678 + 96] <= 4294967296 and mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + _678 + 96]) + 32 <= return_data.size
                mem[_678 + ceil32(return_data.size) + 96] = mem[mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + _678 + 96]
                _1723 = mem[_1675 + _678 + 96]
                s = 0
                while s < 32 * _1723:
                    mem[_678 + ceil32(return_data.size) + s + 128] = mem[_1675 + _678 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1723) + _678 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_678 + ceil32(return_data.size) + 96]
                if mem[_678 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_678 + ceil32(return_data.size) + 96]
                    if mem[_678 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_678 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_678 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _678 + ceil32(return_data.size) + 96
                    t = _678
                    t = t
                    continue 
                require 1 < mem[_678 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_678 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_678 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_678 + 100] = arg3
                mem[_678 + 132] = 64
                mem[_678 + 164] = mem[_678]
                s = 0
                while s < 32 * mem[_678]:
                    mem[_678 + s + 196] = mem[_678 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_678 + 164 len (32 * mem[_678]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_678 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _678 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1679 = mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + _678 + 96] <= 4294967296 and mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + _678 + 96]) + 32 <= return_data.size
                mem[_678 + ceil32(return_data.size) + 96] = mem[mem[_678 + 96 len 4], Mask(224, 32, arg3) >> 32 + _678 + 96]
                _1725 = mem[_1679 + _678 + 96]
                s = 0
                while s < 32 * _1725:
                    mem[_678 + ceil32(return_data.size) + s + 128] = mem[_1679 + _678 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1725) + _678 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_678 + ceil32(return_data.size) + 96]
                if mem[_678 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_678 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_678 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_678 + ceil32(return_data.size) + 96]
            if mem[_678 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_678 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_678 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _678 + ceil32(return_data.size) + 96
            t = _678
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        _677 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        require 0 < mem[_677]
        mem[_677 + 32] = BUSDAddress
        require 1 < mem[_677]
        mem[_677 + 64] = WBNBAddress
        require 2 < mem[_677]
        mem[_677 + 96] = arg2
        if idx:
            mem[_677 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_677 + 132] = arg3
            mem[_677 + 164] = 64
            mem[_677 + 196] = mem[_677]
            s = 0
            while s < 32 * mem[_677]:
                mem[_677 + s + 228] = mem[_677 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[_677 + 196 len (32 * mem[_677]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_677 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _677 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1659 = mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32
            require mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + _677 + 128] <= 4294967296 and mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + _677 + 128]) + 32 <= return_data.size
            mem[_677 + ceil32(return_data.size) + 128] = mem[mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + _677 + 128]
            _1715 = mem[_1659 + _677 + 128]
            s = 0
            while s < 32 * _1715:
                mem[_677 + ceil32(return_data.size) + s + 160] = mem[_1659 + _677 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1715) + _677 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_677 + ceil32(return_data.size) + 128]
            if mem[_677 + ceil32(return_data.size) + 192] <= mem[160]:
                require 0 < mem[96]
                require 1 < mem[_677 + ceil32(return_data.size) + 128]
                if mem[_677 + ceil32(return_data.size) + 192] < mem[128]:
                    require 1 < mem[_677 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[_677 + ceil32(return_data.size) + 192]
                idx = idx + 1
                s = _677 + ceil32(return_data.size) + 128
                t = _677
                t = t
                continue 
            require 1 < mem[_677 + ceil32(return_data.size) + 128]
            require 1 < mem[96]
            mem[160] = mem[_677 + ceil32(return_data.size) + 192]
            require idx < arg1.length
        else:
            require 0 < mem[s]
            require 1 < mem[96]
            mem[160] = mem[s + 32]
            require 0 < mem[s]
            require 0 < mem[96]
            mem[128] = mem[s + 32]
            require idx < arg1.length
            mem[_677 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_677 + 132] = arg3
            mem[_677 + 164] = 64
            mem[_677 + 196] = mem[_677]
            s = 0
            while s < 32 * mem[_677]:
                mem[_677 + s + 228] = mem[_677 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[_677 + 196 len (32 * mem[_677]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_677 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _677 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _1663 = mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32
            require mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + _677 + 128] <= 4294967296 and mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + _677 + 128]) + 32 <= return_data.size
            mem[_677 + ceil32(return_data.size) + 128] = mem[mem[_677 + 128 len 4], Mask(224, 32, arg3) >> 32 + _677 + 128]
            _1717 = mem[_1663 + _677 + 128]
            s = 0
            while s < 32 * _1717:
                mem[_677 + ceil32(return_data.size) + s + 160] = mem[_1663 + _677 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _1717) + _677 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_677 + ceil32(return_data.size) + 128]
            if mem[_677 + ceil32(return_data.size) + 192] > mem[160]:
                require 1 < mem[_677 + ceil32(return_data.size) + 128]
                require 1 < mem[96]
                mem[160] = mem[_677 + ceil32(return_data.size) + 192]
                require idx < arg1.length
        require 0 < mem[96]
        require 1 < mem[_677 + ceil32(return_data.size) + 128]
        if mem[_677 + ceil32(return_data.size) + 192] < mem[128]:
            require 1 < mem[_677 + ceil32(return_data.size) + 128]
            require 0 < mem[96]
            mem[128] = mem[_677 + ceil32(return_data.size) + 192]
        idx = idx + 1
        s = _677 + ceil32(return_data.size) + 128
        t = _677
        t = address(cd[((32 * idx) + arg1 + 36)])
        continue 
    _676 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    require 0 < mem[_676]
    mem[_676 + 32] = BUSDAddress
    require 1 < mem[_676]
    mem[_676 + 64] = WBNBAddress
    require 2 < mem[_676]
    mem[_676 + 96] = arg2
    mem[_676 + 164] = address(t)
    mem[_676 + 196] = arg3
    mem[_676 + 128] = 68
    mem[_676 + 164 len 28] = address(t) << 64
    mem[_676 + 160 len 4] = approve(address rg1, uint256 rg2)
    mem[_676 + 228 len 64] = approve(address rg1, uint256 rg2), address(t) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[_676 + 320 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[_676 + 292 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not mem[96]:
            mem[_676 + 264] = msg.sender
            mem[_676 + 296] = this.address
            mem[_676 + 328] = arg3
            mem[_676 + 228] = 100
            mem[64] = _676 + 360
            mem[_676 + 260 len 4] = unknown_0x23b872dd(?????)
            mem[_676 + 360 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
            mem[_676 + 484 len 4] = uint32(arg3)
            call arg2 with:
                 gas gas_remaining wei
                args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_676 + 456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_676 + 464 len 20],
                                uint32(arg3),
                                mem[_676 + 488 len 4]
                if not mem[96]:
                    mem[_676 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_676 + 364] = arg3
                    mem[_676 + 396] = 0
                    mem[_676 + 460] = msg.sender
                    mem[_676 + 492] = block.timestamp + 60
                    mem[_676 + 428] = 160
                    mem[_676 + 524] = mem[_676]
                    mem[_676 + 556 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
                    require ext_code.size(address(t))
                    call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + 524 len (32 * mem[_676]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_676 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _676 + ceil32(return_data.size) + 360
                    require return_data.size >= 32
                    _3171 = mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32
                    require mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360] <= 4294967296 and mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360]) + 32 <= return_data.size
                    mem[_676 + ceil32(return_data.size) + 360] = mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360]
                    _3219 = mem[_3171 + _676 + 360]
                    mem[_676 + ceil32(return_data.size) + 392 len floor32(mem[_3171 + _676 + 360])] = mem[_3171 + _676 + 392 len floor32(mem[_3171 + _676 + 360])]
                    mem[(32 * _3219) + _676 + ceil32(return_data.size) + 392] = 32
                    mem[(32 * _3219) + _676 + ceil32(return_data.size) + 424] = mem[_676 + ceil32(return_data.size) + 360]
                    mem[(32 * _3219) + _676 + ceil32(return_data.size) + 456 len floor32(mem[_676 + ceil32(return_data.size) + 360])] = mem[_676 + ceil32(return_data.size) + 392 len floor32(mem[_676 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _3219) + _676 + ceil32(return_data.size) + 424 len (32 * mem[_676 + ceil32(return_data.size) + 360]) + 32], 
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_676 + 464 len 20],
                                uint32(arg3),
                                mem[_676 + 488 len 4]
                mem[_676 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_676 + 364] = arg3
                mem[_676 + 396] = 0
                mem[_676 + 460] = msg.sender
                mem[_676 + 492] = block.timestamp + 60
                mem[_676 + 428] = 160
                mem[_676 + 524] = mem[_676]
                mem[_676 + 556 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + 524 len (32 * mem[_676]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_676 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _676 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _3173 = mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32
                require mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360] <= 4294967296 and mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360]) + 32 <= return_data.size
                mem[_676 + ceil32(return_data.size) + 360] = mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360]
                _3220 = mem[_3173 + _676 + 360]
                mem[_676 + ceil32(return_data.size) + 392 len floor32(mem[_3173 + _676 + 360])] = mem[_3173 + _676 + 392 len floor32(mem[_3173 + _676 + 360])]
                mem[(32 * _3220) + _676 + ceil32(return_data.size) + 392] = 32
                mem[(32 * _3220) + _676 + ceil32(return_data.size) + 424] = mem[_676 + ceil32(return_data.size) + 360]
                mem[(32 * _3220) + _676 + ceil32(return_data.size) + 456 len floor32(mem[_676 + ceil32(return_data.size) + 360])] = mem[_676 + ceil32(return_data.size) + 392 len floor32(mem[_676 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _3220) + _676 + ceil32(return_data.size) + 424 len (32 * mem[_676 + ceil32(return_data.size) + 360]) + 32], 
            mem[64] = _676 + ceil32(return_data.size) + 361
            mem[_676 + 360] = return_data.size
            mem[_676 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_676 + ceil32(return_data.size) + 465 len 28]
            if not return_data.size:
                mem[_676 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_676 + ceil32(return_data.size) + 365] = arg3
                mem[_676 + ceil32(return_data.size) + 397] = 0
                mem[_676 + ceil32(return_data.size) + 461] = msg.sender
                mem[_676 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_676 + ceil32(return_data.size) + 429] = 160
                mem[_676 + ceil32(return_data.size) + 525] = mem[_676]
                mem[_676 + ceil32(return_data.size) + 557 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + ceil32(return_data.size) + 525 len (32 * mem[_676]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_676 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _676 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _3175 = mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
                require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]
                _3221 = mem[_3175 + _676 + ceil32(return_data.size) + 361]
                mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_3175 + _676 + ceil32(return_data.size) + 361])] = mem[_3175 + _676 + ceil32(return_data.size) + 393 len floor32(mem[_3175 + _676 + ceil32(return_data.size) + 361])]
                mem[(32 * _3221) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                mem[(32 * _3221) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _3221) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _3221) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            require return_data.size >= 32
            if not mem[_676 + 392]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_676 + ceil32(return_data.size) + 465 len 28]
            mem[_676 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_676 + ceil32(return_data.size) + 365] = arg3
            mem[_676 + ceil32(return_data.size) + 397] = 0
            mem[_676 + ceil32(return_data.size) + 461] = msg.sender
            mem[_676 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_676 + ceil32(return_data.size) + 429] = 160
            mem[_676 + ceil32(return_data.size) + 525] = mem[_676]
            mem[_676 + ceil32(return_data.size) + 557 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + ceil32(return_data.size) + 525 len (32 * mem[_676]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_676 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _676 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _3177 = mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]
            _3222 = mem[_3177 + _676 + ceil32(return_data.size) + 361]
            mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_3177 + _676 + ceil32(return_data.size) + 361])] = mem[_3177 + _676 + ceil32(return_data.size) + 393 len floor32(mem[_3177 + _676 + ceil32(return_data.size) + 361])]
            mem[(32 * _3222) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _3222) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _3222) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _3222) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[_676 + 264] = msg.sender
        mem[_676 + 296] = this.address
        mem[_676 + 328] = arg3
        mem[_676 + 228] = 100
        mem[64] = _676 + 360
        mem[_676 + 260 len 4] = unknown_0x23b872dd(?????)
        mem[_676 + 360 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[_676 + 484 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_676 + 456 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_676 + 464 len 20],
                            uint32(arg3),
                            mem[_676 + 488 len 4]
            if not mem[96]:
                mem[_676 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_676 + 364] = arg3
                mem[_676 + 396] = 0
                mem[_676 + 460] = msg.sender
                mem[_676 + 492] = block.timestamp + 60
                mem[_676 + 428] = 160
                mem[_676 + 524] = mem[_676]
                mem[_676 + 556 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + 524 len (32 * mem[_676]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_676 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _676 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _3179 = mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32
                require mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360] <= 4294967296 and mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360]) + 32 <= return_data.size
                mem[_676 + ceil32(return_data.size) + 360] = mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360]
                _3223 = mem[_3179 + _676 + 360]
                mem[_676 + ceil32(return_data.size) + 392 len floor32(mem[_3179 + _676 + 360])] = mem[_3179 + _676 + 392 len floor32(mem[_3179 + _676 + 360])]
                mem[(32 * _3223) + _676 + ceil32(return_data.size) + 392] = 32
                mem[(32 * _3223) + _676 + ceil32(return_data.size) + 424] = mem[_676 + ceil32(return_data.size) + 360]
                mem[(32 * _3223) + _676 + ceil32(return_data.size) + 456 len floor32(mem[_676 + ceil32(return_data.size) + 360])] = mem[_676 + ceil32(return_data.size) + 392 len floor32(mem[_676 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _3223) + _676 + ceil32(return_data.size) + 424 len (32 * mem[_676 + ceil32(return_data.size) + 360]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_676 + 464 len 20],
                            uint32(arg3),
                            mem[_676 + 488 len 4]
            mem[_676 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_676 + 364] = arg3
            mem[_676 + 396] = 0
            mem[_676 + 460] = msg.sender
            mem[_676 + 492] = block.timestamp + 60
            mem[_676 + 428] = 160
            mem[_676 + 524] = mem[_676]
            mem[_676 + 556 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + 524 len (32 * mem[_676]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_676 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _676 + ceil32(return_data.size) + 360
            require return_data.size >= 32
            _3181 = mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32
            require mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360] <= 4294967296 and mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360]) + 32 <= return_data.size
            mem[_676 + ceil32(return_data.size) + 360] = mem[mem[_676 + 360 len 4], Mask(224, 32, arg3) >> 32 + _676 + 360]
            _3224 = mem[_3181 + _676 + 360]
            mem[_676 + ceil32(return_data.size) + 392 len floor32(mem[_3181 + _676 + 360])] = mem[_3181 + _676 + 392 len floor32(mem[_3181 + _676 + 360])]
            mem[(32 * _3224) + _676 + ceil32(return_data.size) + 392] = 32
            mem[(32 * _3224) + _676 + ceil32(return_data.size) + 424] = mem[_676 + ceil32(return_data.size) + 360]
            mem[(32 * _3224) + _676 + ceil32(return_data.size) + 456 len floor32(mem[_676 + ceil32(return_data.size) + 360])] = mem[_676 + ceil32(return_data.size) + 392 len floor32(mem[_676 + ceil32(return_data.size) + 360])]
            return 32, mem[(32 * _3224) + _676 + ceil32(return_data.size) + 424 len (32 * mem[_676 + ceil32(return_data.size) + 360]) + 32], 
        mem[64] = _676 + ceil32(return_data.size) + 361
        mem[_676 + 360] = return_data.size
        mem[_676 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_676 + ceil32(return_data.size) + 465 len 28]
        if not return_data.size:
            mem[_676 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_676 + ceil32(return_data.size) + 365] = arg3
            mem[_676 + ceil32(return_data.size) + 397] = 0
            mem[_676 + ceil32(return_data.size) + 461] = msg.sender
            mem[_676 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_676 + ceil32(return_data.size) + 429] = 160
            mem[_676 + ceil32(return_data.size) + 525] = mem[_676]
            mem[_676 + ceil32(return_data.size) + 557 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + ceil32(return_data.size) + 525 len (32 * mem[_676]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_676 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _676 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _3183 = mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]
            _3225 = mem[_3183 + _676 + ceil32(return_data.size) + 361]
            mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_3183 + _676 + ceil32(return_data.size) + 361])] = mem[_3183 + _676 + ceil32(return_data.size) + 393 len floor32(mem[_3183 + _676 + ceil32(return_data.size) + 361])]
            mem[(32 * _3225) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _3225) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _3225) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _3225) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require return_data.size >= 32
        if not mem[_676 + 392]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_676 + ceil32(return_data.size) + 465 len 28]
        mem[_676 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_676 + ceil32(return_data.size) + 365] = arg3
        mem[_676 + ceil32(return_data.size) + 397] = 0
        mem[_676 + ceil32(return_data.size) + 461] = msg.sender
        mem[_676 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_676 + ceil32(return_data.size) + 429] = 160
        mem[_676 + ceil32(return_data.size) + 525] = mem[_676]
        mem[_676 + ceil32(return_data.size) + 557 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + ceil32(return_data.size) + 525 len (32 * mem[_676]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_676 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _676 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _3185 = mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
        require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]
        _3226 = mem[_3185 + _676 + ceil32(return_data.size) + 361]
        mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_3185 + _676 + ceil32(return_data.size) + 361])] = mem[_3185 + _676 + ceil32(return_data.size) + 393 len floor32(mem[_3185 + _676 + ceil32(return_data.size) + 361])]
        mem[(32 * _3226) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[(32 * _3226) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _3226) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
        return 32, mem[(32 * _3226) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
    mem[_676 + 228] = return_data.size
    mem[_676 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    if not return_data.size:
        mem[_676 + ceil32(return_data.size) + 265] = msg.sender
        mem[_676 + ceil32(return_data.size) + 297] = this.address
        mem[_676 + ceil32(return_data.size) + 329] = arg3
        mem[_676 + ceil32(return_data.size) + 229] = 100
        mem[64] = _676 + ceil32(return_data.size) + 361
        mem[_676 + ceil32(return_data.size) + 261 len 4] = unknown_0x23b872dd(?????)
        mem[_676 + ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[_676 + ceil32(return_data.size) + 485 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_676 + ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_676 + ceil32(return_data.size) + 465 len 20],
                            uint32(arg3),
                            mem[_676 + ceil32(return_data.size) + 489 len 4]
            if not mem[96]:
                mem[_676 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_676 + ceil32(return_data.size) + 365] = arg3
                mem[_676 + ceil32(return_data.size) + 397] = 0
                mem[_676 + ceil32(return_data.size) + 461] = msg.sender
                mem[_676 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_676 + ceil32(return_data.size) + 429] = 160
                mem[_676 + ceil32(return_data.size) + 525] = mem[_676]
                mem[_676 + ceil32(return_data.size) + 557 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + ceil32(return_data.size) + 525 len (32 * mem[_676]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_676 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _676 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _3187 = mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
                require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]
                _3227 = mem[_3187 + _676 + ceil32(return_data.size) + 361]
                mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_3187 + _676 + ceil32(return_data.size) + 361])] = mem[_3187 + _676 + ceil32(return_data.size) + 393 len floor32(mem[_3187 + _676 + ceil32(return_data.size) + 361])]
                mem[(32 * _3227) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                mem[(32 * _3227) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _3227) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _3227) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_676 + ceil32(return_data.size) + 465 len 20],
                            uint32(arg3),
                            mem[_676 + ceil32(return_data.size) + 489 len 4]
            mem[_676 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_676 + ceil32(return_data.size) + 365] = arg3
            mem[_676 + ceil32(return_data.size) + 397] = 0
            mem[_676 + ceil32(return_data.size) + 461] = msg.sender
            mem[_676 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_676 + ceil32(return_data.size) + 429] = 160
            mem[_676 + ceil32(return_data.size) + 525] = mem[_676]
            mem[_676 + ceil32(return_data.size) + 557 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + ceil32(return_data.size) + 525 len (32 * mem[_676]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_676 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _676 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _3189 = mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]
            _3228 = mem[_3189 + _676 + ceil32(return_data.size) + 361]
            mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_3189 + _676 + ceil32(return_data.size) + 361])] = mem[_3189 + _676 + ceil32(return_data.size) + 393 len floor32(mem[_3189 + _676 + ceil32(return_data.size) + 361])]
            mem[(32 * _3228) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _3228) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _3228) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _3228) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        mem[64] = _676 + (2 * ceil32(return_data.size)) + 362
        mem[_676 + ceil32(return_data.size) + 361] = return_data.size
        mem[_676 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_676 + (2 * ceil32(return_data.size)) + 466 len 28]
        if not return_data.size:
            mem[_676 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_676 + (2 * ceil32(return_data.size)) + 366] = arg3
            mem[_676 + (2 * ceil32(return_data.size)) + 398] = 0
            mem[_676 + (2 * ceil32(return_data.size)) + 462] = msg.sender
            mem[_676 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
            mem[_676 + (2 * ceil32(return_data.size)) + 430] = 160
            mem[_676 + (2 * ceil32(return_data.size)) + 526] = mem[_676]
            mem[_676 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_676]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_676 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _676 + (4 * ceil32(return_data.size)) + 362
            require return_data.size >= 32
            _3191 = mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
            require mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
            mem[_676 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362]
            _3229 = mem[_3191 + _676 + (2 * ceil32(return_data.size)) + 362]
            mem[_676 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_3191 + _676 + (2 * ceil32(return_data.size)) + 362])] = mem[_3191 + _676 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_3191 + _676 + (2 * ceil32(return_data.size)) + 362])]
            mem[(32 * _3229) + _676 + (4 * ceil32(return_data.size)) + 394] = 32
            mem[(32 * _3229) + _676 + (4 * ceil32(return_data.size)) + 426] = mem[_676 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _3229) + _676 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_676 + (4 * ceil32(return_data.size)) + 362])] = mem[_676 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_676 + (4 * ceil32(return_data.size)) + 362])]
            return 32, mem[(32 * _3229) + _676 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_676 + (4 * ceil32(return_data.size)) + 362]) + 32], 
        require return_data.size >= 32
        if not mem[_676 + ceil32(return_data.size) + 393]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_676 + (2 * ceil32(return_data.size)) + 466 len 28]
        mem[_676 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_676 + (2 * ceil32(return_data.size)) + 366] = arg3
        mem[_676 + (2 * ceil32(return_data.size)) + 398] = 0
        mem[_676 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_676 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_676 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_676 + (2 * ceil32(return_data.size)) + 526] = mem[_676]
        mem[_676 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_676]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_676 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _676 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _3193 = mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
        require mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_676 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362]
        _3230 = mem[_3193 + _676 + (2 * ceil32(return_data.size)) + 362]
        mem[_676 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_3193 + _676 + (2 * ceil32(return_data.size)) + 362])] = mem[_3193 + _676 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_3193 + _676 + (2 * ceil32(return_data.size)) + 362])]
        mem[(32 * _3230) + _676 + (4 * ceil32(return_data.size)) + 394] = 32
        mem[(32 * _3230) + _676 + (4 * ceil32(return_data.size)) + 426] = mem[_676 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _3230) + _676 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_676 + (4 * ceil32(return_data.size)) + 362])] = mem[_676 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_676 + (4 * ceil32(return_data.size)) + 362])]
        return 32, mem[(32 * _3230) + _676 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_676 + (4 * ceil32(return_data.size)) + 362]) + 32], 
    require return_data.size >= 32
    if not mem[_676 + 260]:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    mem[_676 + ceil32(return_data.size) + 265] = msg.sender
    mem[_676 + ceil32(return_data.size) + 297] = this.address
    mem[_676 + ceil32(return_data.size) + 329] = arg3
    mem[_676 + ceil32(return_data.size) + 229] = 100
    mem[64] = _676 + ceil32(return_data.size) + 361
    mem[_676 + ceil32(return_data.size) + 261 len 4] = unknown_0x23b872dd(?????)
    mem[_676 + ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[_676 + ceil32(return_data.size) + 485 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_676 + ceil32(return_data.size) + 457 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_676 + ceil32(return_data.size) + 465 len 20],
                        uint32(arg3),
                        mem[_676 + ceil32(return_data.size) + 489 len 4]
        if not mem[96]:
            mem[_676 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_676 + ceil32(return_data.size) + 365] = arg3
            mem[_676 + ceil32(return_data.size) + 397] = 0
            mem[_676 + ceil32(return_data.size) + 461] = msg.sender
            mem[_676 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_676 + ceil32(return_data.size) + 429] = 160
            mem[_676 + ceil32(return_data.size) + 525] = mem[_676]
            mem[_676 + ceil32(return_data.size) + 557 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + ceil32(return_data.size) + 525 len (32 * mem[_676]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_676 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _676 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _3195 = mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]
            _3231 = mem[_3195 + _676 + ceil32(return_data.size) + 361]
            mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_3195 + _676 + ceil32(return_data.size) + 361])] = mem[_3195 + _676 + ceil32(return_data.size) + 393 len floor32(mem[_3195 + _676 + ceil32(return_data.size) + 361])]
            mem[(32 * _3231) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _3231) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _3231) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _3231) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_676 + ceil32(return_data.size) + 465 len 20],
                        uint32(arg3),
                        mem[_676 + ceil32(return_data.size) + 489 len 4]
        mem[_676 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_676 + ceil32(return_data.size) + 365] = arg3
        mem[_676 + ceil32(return_data.size) + 397] = 0
        mem[_676 + ceil32(return_data.size) + 461] = msg.sender
        mem[_676 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_676 + ceil32(return_data.size) + 429] = 160
        mem[_676 + ceil32(return_data.size) + 525] = mem[_676]
        mem[_676 + ceil32(return_data.size) + 557 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + ceil32(return_data.size) + 525 len (32 * mem[_676]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_676 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _676 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _3197 = mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
        require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_676 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _676 + ceil32(return_data.size) + 361]
        _3232 = mem[_3197 + _676 + ceil32(return_data.size) + 361]
        mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_3197 + _676 + ceil32(return_data.size) + 361])] = mem[_3197 + _676 + ceil32(return_data.size) + 393 len floor32(mem[_3197 + _676 + ceil32(return_data.size) + 361])]
        mem[(32 * _3232) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[(32 * _3232) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _3232) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
        return 32, mem[(32 * _3232) + _676 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_676 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
    mem[64] = _676 + (2 * ceil32(return_data.size)) + 362
    mem[_676 + ceil32(return_data.size) + 361] = return_data.size
    mem[_676 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_676 + (2 * ceil32(return_data.size)) + 466 len 28]
    if not return_data.size:
        mem[_676 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_676 + (2 * ceil32(return_data.size)) + 366] = arg3
        mem[_676 + (2 * ceil32(return_data.size)) + 398] = 0
        mem[_676 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_676 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_676 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_676 + (2 * ceil32(return_data.size)) + 526] = mem[_676]
        mem[_676 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_676]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_676 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _676 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _3199 = mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
        require mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_676 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362]
        _3233 = mem[_3199 + _676 + (2 * ceil32(return_data.size)) + 362]
        mem[_676 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_3199 + _676 + (2 * ceil32(return_data.size)) + 362])] = mem[_3199 + _676 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_3199 + _676 + (2 * ceil32(return_data.size)) + 362])]
        mem[(32 * _3233) + _676 + (4 * ceil32(return_data.size)) + 394] = 32
        mem[(32 * _3233) + _676 + (4 * ceil32(return_data.size)) + 426] = mem[_676 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _3233) + _676 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_676 + (4 * ceil32(return_data.size)) + 362])] = mem[_676 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_676 + (4 * ceil32(return_data.size)) + 362])]
        return 32, mem[(32 * _3233) + _676 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_676 + (4 * ceil32(return_data.size)) + 362]) + 32], 
    require return_data.size >= 32
    if not mem[_676 + ceil32(return_data.size) + 393]:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_676 + (2 * ceil32(return_data.size)) + 466 len 28]
    mem[_676 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_676 + (2 * ceil32(return_data.size)) + 366] = arg3
    mem[_676 + (2 * ceil32(return_data.size)) + 398] = 0
    mem[_676 + (2 * ceil32(return_data.size)) + 462] = msg.sender
    mem[_676 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
    mem[_676 + (2 * ceil32(return_data.size)) + 430] = 160
    mem[_676 + (2 * ceil32(return_data.size)) + 526] = mem[_676]
    mem[_676 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_676])] = mem[_676 + 32 len floor32(mem[_676])]
    require ext_code.size(address(t))
    call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_676 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_676]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_676 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _676 + (4 * ceil32(return_data.size)) + 362
    require return_data.size >= 32
    _3201 = mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
    require mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
    mem[_676 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_676 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _676 + (2 * ceil32(return_data.size)) + 362]
    _3234 = mem[_3201 + _676 + (2 * ceil32(return_data.size)) + 362]
    mem[_676 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_3201 + _676 + (2 * ceil32(return_data.size)) + 362])] = mem[_3201 + _676 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_3201 + _676 + (2 * ceil32(return_data.size)) + 362])]
    mem[(32 * _3234) + _676 + (4 * ceil32(return_data.size)) + 394] = 32
    mem[(32 * _3234) + _676 + (4 * ceil32(return_data.size)) + 426] = mem[_676 + (4 * ceil32(return_data.size)) + 362]
    mem[(32 * _3234) + _676 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_676 + (4 * ceil32(return_data.size)) + 362])] = mem[_676 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_676 + (4 * ceil32(return_data.size)) + 362])]
    return 32, mem[(32 * _3234) + _676 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_676 + (4 * ceil32(return_data.size)) + 362]) + 32], 
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
        if arg2 == WBNBAddress:
            _303 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_303]:
                mem[_303 + 32] = WBNBAddress
                if 1 < mem[_303]:
                    mem[_303 + 64] = BUSDAddress
                    if idx:
                        if arg5 != 1:
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
                                if mem[_303 + ceil32(return_data.size) + 160] < mem[128]:
                                    require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_303 + ceil32(return_data.size) + 160]
                                idx = idx + 1
                                s = _303 + ceil32(return_data.size) + 96
                                t = _303
                                t = t
                                continue 
                            require 1 < mem[_303 + ceil32(return_data.size) + 96]
                            require 1 < mem[96]
                            mem[160] = mem[_303 + ceil32(return_data.size) + 160]
                            require idx < arg1.length
                            require 0 < mem[96]
                            require 1 < mem[_303 + ceil32(return_data.size) + 96]
                            if mem[_303 + ceil32(return_data.size) + 160] < mem[128]:
                                require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_303 + ceil32(return_data.size) + 160]
                            idx = idx + 1
                            s = _303 + ceil32(return_data.size) + 96
                            t = _303
                            t = address(cd[((32 * idx) + arg1 + 36)])
                            continue 
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
                        if 1 < mem[96]:
                            if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                if mem[_303 + ceil32(return_data.size) + 128] <= mem[160]:
                                    if 0 < mem[96]:
                                        if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                            if mem[_303 + ceil32(return_data.size) + 128] >= mem[128]:
                                                idx = idx + 1
                                                s = _303 + ceil32(return_data.size) + 96
                                                t = _303
                                                t = t
                                                continue 
                                            if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                if 0 < mem[96]:
                                                    mem[128] = mem[_303 + ceil32(return_data.size) + 128]
                                                    if idx < arg1.length:
                                                        idx = idx + 1
                                                        s = _303 + ceil32(return_data.size) + 96
                                                        t = _303
                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                        continue 
                                else:
                                    if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                        if 1 < mem[96]:
                                            mem[160] = mem[_303 + ceil32(return_data.size) + 128]
                                            if 0 < mem[96]:
                                                if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                    if mem[_303 + ceil32(return_data.size) + 128] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _303 + ceil32(return_data.size) + 96
                                                        t = _303
                                                        t = t
                                                        continue 
                                                    if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_303 + ceil32(return_data.size) + 128]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _303 + ceil32(return_data.size) + 96
                                                                t = _303
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
                                            if arg5 != 1:
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
                                                if mem[_303 + ceil32(return_data.size) + 160] > mem[160]:
                                                    require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                                    require 1 < mem[96]
                                                    mem[160] = mem[_303 + ceil32(return_data.size) + 160]
                                                    require idx < arg1.length
                                                require 0 < mem[96]
                                                require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                                if mem[_303 + ceil32(return_data.size) + 160] < mem[128]:
                                                    require 1 < mem[_303 + ceil32(return_data.size) + 96]
                                                    require 0 < mem[96]
                                                    mem[128] = mem[_303 + ceil32(return_data.size) + 160]
                                                idx = idx + 1
                                                s = _303 + ceil32(return_data.size) + 96
                                                t = _303
                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                continue 
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
                                            if 1 < mem[96]:
                                                if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                    if mem[_303 + ceil32(return_data.size) + 128] <= mem[160]:
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                                if mem[_303 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _303 + ceil32(return_data.size) + 96
                                                                    t = _303
                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                                                if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_303 + ceil32(return_data.size) + 128]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _303 + ceil32(return_data.size) + 96
                                                                            t = _303
                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                    else:
                                                        if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                            if 1 < mem[96]:
                                                                mem[160] = mem[_303 + ceil32(return_data.size) + 128]
                                                                if 0 < mem[96]:
                                                                    if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                                        if mem[_303 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                            idx = idx + 1
                                                                            s = _303 + ceil32(return_data.size) + 96
                                                                            t = _303
                                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                                        if 0 < mem[_303 + ceil32(return_data.size) + 96]:
                                                                            if 0 < mem[96]:
                                                                                mem[128] = mem[_303 + ceil32(return_data.size) + 128]
                                                                                if idx < arg1.length:
                                                                                    idx = idx + 1
                                                                                    s = _303 + ceil32(return_data.size) + 96
                                                                                    t = _303
                                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
        else:
            if arg3 == WBNBAddress:
                _307 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_307]:
                    mem[_307 + 32] = BUSDAddress
                    if 1 < mem[_307]:
                        mem[_307 + 64] = WBNBAddress
                        if idx:
                            if arg5 != 1:
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
                                    if mem[_307 + ceil32(return_data.size) + 160] < mem[128]:
                                        require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                        require 0 < mem[96]
                                        mem[128] = mem[_307 + ceil32(return_data.size) + 160]
                                    idx = idx + 1
                                    s = _307 + ceil32(return_data.size) + 96
                                    t = _307
                                    t = t
                                    continue 
                                require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                require 1 < mem[96]
                                mem[160] = mem[_307 + ceil32(return_data.size) + 160]
                                require idx < arg1.length
                                require 0 < mem[96]
                                require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                if mem[_307 + ceil32(return_data.size) + 160] < mem[128]:
                                    require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_307 + ceil32(return_data.size) + 160]
                                idx = idx + 1
                                s = _307 + ceil32(return_data.size) + 96
                                t = _307
                                t = address(cd[((32 * idx) + arg1 + 36)])
                                continue 
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
                            if 1 < mem[96]:
                                if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                    if mem[_307 + ceil32(return_data.size) + 128] <= mem[160]:
                                        if 0 < mem[96]:
                                            if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                if mem[_307 + ceil32(return_data.size) + 128] >= mem[128]:
                                                    idx = idx + 1
                                                    s = _307 + ceil32(return_data.size) + 96
                                                    t = _307
                                                    t = t
                                                    continue 
                                                if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                    if 0 < mem[96]:
                                                        mem[128] = mem[_307 + ceil32(return_data.size) + 128]
                                                        if idx < arg1.length:
                                                            idx = idx + 1
                                                            s = _307 + ceil32(return_data.size) + 96
                                                            t = _307
                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                            continue 
                                    else:
                                        if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                            if 1 < mem[96]:
                                                mem[160] = mem[_307 + ceil32(return_data.size) + 128]
                                                if 0 < mem[96]:
                                                    if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                        if mem[_307 + ceil32(return_data.size) + 128] >= mem[128]:
                                                            idx = idx + 1
                                                            s = _307 + ceil32(return_data.size) + 96
                                                            t = _307
                                                            t = t
                                                            continue 
                                                        if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_307 + ceil32(return_data.size) + 128]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _307 + ceil32(return_data.size) + 96
                                                                    t = _307
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
                                                if arg5 != 1:
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
                                                    if mem[_307 + ceil32(return_data.size) + 160] > mem[160]:
                                                        require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                                        require 1 < mem[96]
                                                        mem[160] = mem[_307 + ceil32(return_data.size) + 160]
                                                        require idx < arg1.length
                                                    require 0 < mem[96]
                                                    require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                                    if mem[_307 + ceil32(return_data.size) + 160] < mem[128]:
                                                        require 1 < mem[_307 + ceil32(return_data.size) + 96]
                                                        require 0 < mem[96]
                                                        mem[128] = mem[_307 + ceil32(return_data.size) + 160]
                                                    idx = idx + 1
                                                    s = _307 + ceil32(return_data.size) + 96
                                                    t = _307
                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                    continue 
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
                                                if 1 < mem[96]:
                                                    if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                        if mem[_307 + ceil32(return_data.size) + 128] <= mem[160]:
                                                            if 0 < mem[96]:
                                                                if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                                    if mem[_307 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                        idx = idx + 1
                                                                        s = _307 + ceil32(return_data.size) + 96
                                                                        t = _307
                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
                                                                    if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                                        if 0 < mem[96]:
                                                                            mem[128] = mem[_307 + ceil32(return_data.size) + 128]
                                                                            if idx < arg1.length:
                                                                                idx = idx + 1
                                                                                s = _307 + ceil32(return_data.size) + 96
                                                                                t = _307
                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                        else:
                                                            if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                                if 1 < mem[96]:
                                                                    mem[160] = mem[_307 + ceil32(return_data.size) + 128]
                                                                    if 0 < mem[96]:
                                                                        if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                                            if mem[_307 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                                idx = idx + 1
                                                                                s = _307 + ceil32(return_data.size) + 96
                                                                                t = _307
                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_307 + ceil32(return_data.size) + 96]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_307 + ceil32(return_data.size) + 128]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _307 + ceil32(return_data.size) + 96
                                                                                        t = _307
                                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
            else:
                _306 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if arg5 != 1:
                    if 0 < mem[_306]:
                        mem[_306 + 32] = BUSDAddress
                        if 1 < mem[_306]:
                            mem[_306 + 64] = WBNBAddress
                            if 2 < mem[_306]:
                                mem[_306 + 96] = arg3
                                if idx:
                                    if arg5 != 1:
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
                                            if mem[_306 + ceil32(return_data.size) + 192] < mem[128]:
                                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                                require 0 < mem[96]
                                                mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                            idx = idx + 1
                                            s = _306 + ceil32(return_data.size) + 128
                                            t = _306
                                            t = t
                                            continue 
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 1 < mem[96]
                                        mem[160] = mem[_306 + ceil32(return_data.size) + 192]
                                        require idx < arg1.length
                                        require 0 < mem[96]
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        if mem[_306 + ceil32(return_data.size) + 192] < mem[128]:
                                            require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                            require 0 < mem[96]
                                            mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
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
                                    if 1 < mem[96]:
                                        if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                            if mem[_306 + ceil32(return_data.size) + 160] <= mem[160]:
                                                if 0 < mem[96]:
                                                    if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                        if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                                            idx = idx + 1
                                                            s = _306 + ceil32(return_data.size) + 128
                                                            t = _306
                                                            t = t
                                                            continue 
                                                        if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _306 + ceil32(return_data.size) + 128
                                                                    t = _306
                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                            else:
                                                if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                    if 1 < mem[96]:
                                                        mem[160] = mem[_306 + ceil32(return_data.size) + 160]
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _306 + ceil32(return_data.size) + 128
                                                                    t = _306
                                                                    t = t
                                                                    continue 
                                                                if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _306 + ceil32(return_data.size) + 128
                                                                            t = _306
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
                                                        if arg5 != 1:
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
                                                            if mem[_306 + ceil32(return_data.size) + 192] > mem[160]:
                                                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                                                require 1 < mem[96]
                                                                mem[160] = mem[_306 + ceil32(return_data.size) + 192]
                                                                require idx < arg1.length
                                                            require 0 < mem[96]
                                                            require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                                            if mem[_306 + ceil32(return_data.size) + 192] < mem[128]:
                                                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                                                require 0 < mem[96]
                                                                mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                                            idx = idx + 1
                                                            s = _306 + ceil32(return_data.size) + 128
                                                            t = _306
                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                            continue 
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
                                                        if 1 < mem[96]:
                                                            if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                if mem[_306 + ceil32(return_data.size) + 160] <= mem[160]:
                                                                    if 0 < mem[96]:
                                                                        if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                            if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                                idx = idx + 1
                                                                                s = _306 + ceil32(return_data.size) + 128
                                                                                t = _306
                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _306 + ceil32(return_data.size) + 128
                                                                                        t = _306
                                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
                                                                else:
                                                                    if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                        if 1 < mem[96]:
                                                                            mem[160] = mem[_306 + ceil32(return_data.size) + 160]
                                                                            if 0 < mem[96]:
                                                                                if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                                        idx = idx + 1
                                                                                        s = _306 + ceil32(return_data.size) + 128
                                                                                        t = _306
                                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
                                                                                    if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                                        if 0 < mem[96]:
                                                                                            mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                                                                            if idx < arg1.length:
                                                                                                idx = idx + 1
                                                                                                s = _306 + ceil32(return_data.size) + 128
                                                                                                t = _306
                                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                                continue 
                else:
                    if 0 < mem[_306]:
                        mem[_306 + 32] = arg2
                        if 1 < mem[_306]:
                            mem[_306 + 64] = WBNBAddress
                            if 2 < mem[_306]:
                                mem[_306 + 96] = BUSDAddress
                                if idx:
                                    if arg5 != 1:
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
                                            if mem[_306 + ceil32(return_data.size) + 192] < mem[128]:
                                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                                require 0 < mem[96]
                                                mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                            idx = idx + 1
                                            s = _306 + ceil32(return_data.size) + 128
                                            t = _306
                                            t = t
                                            continue 
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        require 1 < mem[96]
                                        mem[160] = mem[_306 + ceil32(return_data.size) + 192]
                                        require idx < arg1.length
                                        require 0 < mem[96]
                                        require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                        if mem[_306 + ceil32(return_data.size) + 192] < mem[128]:
                                            require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                            require 0 < mem[96]
                                            mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                        idx = idx + 1
                                        s = _306 + ceil32(return_data.size) + 128
                                        t = _306
                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                        continue 
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
                                    if 1 < mem[96]:
                                        if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                            if mem[_306 + ceil32(return_data.size) + 160] <= mem[160]:
                                                if 0 < mem[96]:
                                                    if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                        if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                                            idx = idx + 1
                                                            s = _306 + ceil32(return_data.size) + 128
                                                            t = _306
                                                            t = t
                                                            continue 
                                                        if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _306 + ceil32(return_data.size) + 128
                                                                    t = _306
                                                                    t = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                            else:
                                                if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                    if 1 < mem[96]:
                                                        mem[160] = mem[_306 + ceil32(return_data.size) + 160]
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _306 + ceil32(return_data.size) + 128
                                                                    t = _306
                                                                    t = t
                                                                    continue 
                                                                if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _306 + ceil32(return_data.size) + 128
                                                                            t = _306
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
                                                        if arg5 != 1:
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
                                                            if mem[_306 + ceil32(return_data.size) + 192] > mem[160]:
                                                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                                                require 1 < mem[96]
                                                                mem[160] = mem[_306 + ceil32(return_data.size) + 192]
                                                                require idx < arg1.length
                                                            require 0 < mem[96]
                                                            require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                                            if mem[_306 + ceil32(return_data.size) + 192] < mem[128]:
                                                                require 1 < mem[_306 + ceil32(return_data.size) + 128]
                                                                require 0 < mem[96]
                                                                mem[128] = mem[_306 + ceil32(return_data.size) + 192]
                                                            idx = idx + 1
                                                            s = _306 + ceil32(return_data.size) + 128
                                                            t = _306
                                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                                            continue 
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
                                                        if 1 < mem[96]:
                                                            if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                if mem[_306 + ceil32(return_data.size) + 160] <= mem[160]:
                                                                    if 0 < mem[96]:
                                                                        if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                            if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                                idx = idx + 1
                                                                                s = _306 + ceil32(return_data.size) + 128
                                                                                t = _306
                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _306 + ceil32(return_data.size) + 128
                                                                                        t = _306
                                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
                                                                else:
                                                                    if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                        if 1 < mem[96]:
                                                                            mem[160] = mem[_306 + ceil32(return_data.size) + 160]
                                                                            if 0 < mem[96]:
                                                                                if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                                    if mem[_306 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                                        idx = idx + 1
                                                                                        s = _306 + ceil32(return_data.size) + 128
                                                                                        t = _306
                                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
                                                                                    if 0 < mem[_306 + ceil32(return_data.size) + 128]:
                                                                                        if 0 < mem[96]:
                                                                                            mem[128] = mem[_306 + ceil32(return_data.size) + 160]
                                                                                            if idx < arg1.length:
                                                                                                idx = idx + 1
                                                                                                s = _306 + ceil32(return_data.size) + 128
                                                                                                t = _306
                                                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                                                continue 
        revert
    mem[mem[64] + 32] = address(t)
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 64, address(t), mem[mem[64] + 64 len (32 * mem[96]) + 32]
}



}
