contract main {




// =====================  Runtime code  =====================


#
#  - swapBUSDToBNB(address[] arg1, uint256 arg2)
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
    s = 96
    s = 0
    while idx < arg1.length:
        _82 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_82]
        mem[_82 + 32] = WBNBAddress
        require 1 < mem[_82]
        mem[_82 + 64] = BUSDAddress
        mem[_82 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[_82 + 100] = arg2
        mem[_82 + 132] = 64
        mem[_82 + 164] = mem[_82]
        t = 0
        while t < 32 * mem[_82]:
            mem[_82 + t + 196] = mem[_82 + t + 32]
            t = t + 32
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
        _229 = mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96] <= 4294967296 and mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96]) + 32 <= return_data.size
        mem[_82 + ceil32(return_data.size) + 96] = mem[mem[_82 + 96 len 4], Mask(224, 32, arg2) >> 32 + _82 + 96]
        _236 = mem[_229 + _82 + 96]
        t = 0
        while t < 32 * _236:
            mem[_82 + ceil32(return_data.size) + t + 128] = mem[_229 + _82 + t + 128]
            t = t + 32
            continue 
        mem[64] = (32 * _236) + _82 + ceil32(return_data.size) + 128
        if idx:
            if 1 < mem[96]:
                if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                    if mem[_82 + ceil32(return_data.size) + 128] <= mem[160]:
                        if 0 < mem[96]:
                            if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                if mem[_82 + ceil32(return_data.size) + 128] >= mem[128]:
                                    idx = idx + 1
                                    s = _82 + ceil32(return_data.size) + 96
                                    s = _82
                                    s = s
                                    continue 
                                if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                    if 0 < mem[96]:
                                        mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                                        if idx < arg1.length:
                                            idx = idx + 1
                                            s = _82 + ceil32(return_data.size) + 96
                                            s = _82
                                            s = address(cd[((32 * idx) + arg1 + 36)])
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
                                            s = _82
                                            s = s
                                            continue 
                                        if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                            if 0 < mem[96]:
                                                mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                                                if idx < arg1.length:
                                                    idx = idx + 1
                                                    s = _82 + ceil32(return_data.size) + 96
                                                    s = _82
                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                    continue 
        else:
            if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                if 1 < mem[96]:
                    mem[160] = mem[_82 + ceil32(return_data.size) + 128]
                    if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                        if 0 < mem[96]:
                            mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                            if idx < arg1.length:
                                if 1 < mem[96]:
                                    if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                        if mem[_82 + ceil32(return_data.size) + 128] <= mem[160]:
                                            if 0 < mem[96]:
                                                if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                                    if mem[_82 + ceil32(return_data.size) + 128] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _82 + ceil32(return_data.size) + 96
                                                        s = _82
                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                        continue 
                                                    if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _82 + ceil32(return_data.size) + 96
                                                                s = _82
                                                                s = address(cd[((32 * idx) + arg1 + 36)])
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
                                                                s = _82
                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                                                            if 0 < mem[_82 + ceil32(return_data.size) + 96]:
                                                                if 0 < mem[96]:
                                                                    mem[128] = mem[_82 + ceil32(return_data.size) + 128]
                                                                    if idx < arg1.length:
                                                                        idx = idx + 1
                                                                        s = _82 + ceil32(return_data.size) + 96
                                                                        s = _82
                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
        revert
    _81 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_81]
    mem[_81 + 32] = WBNBAddress
    require 1 < mem[_81]
    mem[_81 + 64] = BUSDAddress
    if address(s) != 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        mem[_81 + 96] = 0x8332a96300000000000000000000000000000000000000000000000000000000
        mem[_81 + 100] = arg2
        mem[_81 + 164] = msg.sender
        mem[_81 + 196] = block.timestamp + 60
        mem[_81 + 132] = 128
        mem[_81 + 228] = mem[_81]
        mem[_81 + 260 len floor32(mem[_81])] = mem[_81 + 32 len floor32(mem[_81])]
        require ext_code.size(address(s))
        call address(s).0x8332a963 with:
           value msg.value wei
             gas gas_remaining wei
            args arg2, 128, msg.sender, block.timestamp + 60, mem[_81 + 228 len (32 * mem[_81]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_81 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _81 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _225 = mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96] <= 4294967296 and mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96]) + 32 <= return_data.size
        mem[_81 + ceil32(return_data.size) + 96] = mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96]
        _234 = mem[_225 + _81 + 96]
        mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_225 + _81 + 96])] = mem[_225 + _81 + 128 len floor32(mem[_225 + _81 + 96])]
        require 0 < mem[_81 + ceil32(return_data.size) + 96]
        _343 = mem[_81 + ceil32(return_data.size) + 128]
        mem[(32 * _234) + _81 + ceil32(return_data.size) + 128] = 0
        mem[(32 * _234) + _81 + ceil32(return_data.size) + 160 len 0] = None
        call msg.sender with:
           value msg.value - _343 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _234) + _81 + ceil32(return_data.size) + 263 len 29]
            mem[(32 * _234) + _81 + ceil32(return_data.size) + 160] = 32
            mem[(32 * _234) + _81 + ceil32(return_data.size) + 192] = mem[_81 + ceil32(return_data.size) + 96]
            mem[(32 * _234) + _81 + ceil32(return_data.size) + 224 len floor32(mem[_81 + ceil32(return_data.size) + 96])] = mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_81 + ceil32(return_data.size) + 96])]
            return 32, mem[(32 * _234) + _81 + ceil32(return_data.size) + 192 len (32 * mem[_81 + ceil32(return_data.size) + 96]) + 32]
        mem[(32 * _234) + _81 + ceil32(return_data.size) + 160] = return_data.size
        mem[(32 * _234) + _81 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[(32 * _234) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
        mem[(32 * _234) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 32
        mem[(32 * _234) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[_81 + ceil32(return_data.size) + 96]
        mem[(32 * _234) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 225 len floor32(mem[_81 + ceil32(return_data.size) + 96])] = mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_81 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _234) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len (32 * mem[_81 + ceil32(return_data.size) + 96]) + 32], 
    mem[_81 + 96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[_81 + 100] = arg2
    mem[_81 + 164] = msg.sender
    mem[_81 + 196] = block.timestamp + 60
    mem[_81 + 132] = 128
    mem[_81 + 228] = mem[_81]
    mem[_81 + 260 len floor32(mem[_81])] = mem[_81 + 32 len floor32(mem[_81])]
    require ext_code.size(address(s))
    call address(s).swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, 128, msg.sender, block.timestamp + 60, mem[_81 + 228 len (32 * mem[_81]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_81 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _81 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    _227 = mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96] <= 4294967296 and mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96]) + 32 <= return_data.size
    mem[_81 + ceil32(return_data.size) + 96] = mem[mem[_81 + 96 len 4], Mask(224, 32, arg2) >> 32 + _81 + 96]
    _235 = mem[_227 + _81 + 96]
    mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_227 + _81 + 96])] = mem[_227 + _81 + 128 len floor32(mem[_227 + _81 + 96])]
    require 0 < mem[_81 + ceil32(return_data.size) + 96]
    _344 = mem[_81 + ceil32(return_data.size) + 128]
    mem[(32 * _235) + _81 + ceil32(return_data.size) + 128] = 0
    mem[(32 * _235) + _81 + ceil32(return_data.size) + 160 len 0] = None
    call msg.sender with:
       value msg.value - _344 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[(32 * _235) + _81 + ceil32(return_data.size) + 263 len 29]
        mem[(32 * _235) + _81 + ceil32(return_data.size) + 160] = 32
        mem[(32 * _235) + _81 + ceil32(return_data.size) + 192] = mem[_81 + ceil32(return_data.size) + 96]
        mem[(32 * _235) + _81 + ceil32(return_data.size) + 224 len floor32(mem[_81 + ceil32(return_data.size) + 96])] = mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_81 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _235) + _81 + ceil32(return_data.size) + 192 len (32 * mem[_81 + ceil32(return_data.size) + 96]) + 32]
    mem[(32 * _235) + _81 + ceil32(return_data.size) + 160] = return_data.size
    mem[(32 * _235) + _81 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                    mem[(32 * _235) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
    mem[(32 * _235) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 32
    mem[(32 * _235) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[_81 + ceil32(return_data.size) + 96]
    mem[(32 * _235) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 225 len floor32(mem[_81 + ceil32(return_data.size) + 96])] = mem[_81 + ceil32(return_data.size) + 128 len floor32(mem[_81 + ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _235) + _81 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len (32 * mem[_81 + ceil32(return_data.size) + 96]) + 32], 
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
    s = 96
    s = 0
    while idx < arg1.length:
        if not arg2:
            _327 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_327]:
                mem[_327 + 32] = WBNBAddress
                if 1 < mem[_327]:
                    mem[_327 + 64] = BUSDAddress
                    if not arg5:
                        mem[_327 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_327 + 100] = arg4
                        mem[_327 + 132] = 64
                        mem[_327 + 164] = mem[_327]
                        t = 0
                        while t < 32 * mem[_327]:
                            mem[_327 + t + 196] = mem[_327 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[_327 + 164 len (32 * mem[_327]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_327 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _327 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _852 = mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32
                        require mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + _327 + 96] <= 4294967296 and mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + _327 + 96]) + 32 <= return_data.size
                        mem[_327 + ceil32(return_data.size) + 96] = mem[mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + _327 + 96]
                        _870 = mem[_852 + _327 + 96]
                        t = 0
                        while t < 32 * _870:
                            mem[_327 + ceil32(return_data.size) + t + 128] = mem[_852 + _327 + t + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _870) + _327 + ceil32(return_data.size) + 128
                        if idx:
                            require 1 < mem[96]
                            require 1 < mem[_327 + ceil32(return_data.size) + 96]
                            if mem[_327 + ceil32(return_data.size) + 160] <= mem[160]:
                                require 0 < mem[96]
                                require 1 < mem[_327 + ceil32(return_data.size) + 96]
                                if mem[_327 + ceil32(return_data.size) + 160] < mem[128]:
                                    require 1 < mem[_327 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_327 + ceil32(return_data.size) + 160]
                                idx = idx + 1
                                s = _327 + ceil32(return_data.size) + 96
                                s = _327
                                s = s
                                continue 
                            require 1 < mem[_327 + ceil32(return_data.size) + 96]
                            require 1 < mem[96]
                            mem[160] = mem[_327 + ceil32(return_data.size) + 160]
                            require idx < arg1.length
                            require 0 < mem[96]
                            require 1 < mem[_327 + ceil32(return_data.size) + 96]
                            if mem[_327 + ceil32(return_data.size) + 160] < mem[128]:
                                require 1 < mem[_327 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_327 + ceil32(return_data.size) + 160]
                        else:
                            require 1 < mem[_327 + ceil32(return_data.size) + 96]
                            require 1 < mem[96]
                            mem[160] = mem[_327 + ceil32(return_data.size) + 160]
                            require 1 < mem[_327 + ceil32(return_data.size) + 96]
                            require 0 < mem[96]
                            mem[128] = mem[_327 + ceil32(return_data.size) + 160]
                            require idx < arg1.length
                            require 1 < mem[96]
                            require 1 < mem[_327 + ceil32(return_data.size) + 96]
                            if mem[_327 + ceil32(return_data.size) + 160] <= mem[160]:
                                require 0 < mem[96]
                                require 1 < mem[_327 + ceil32(return_data.size) + 96]
                                if mem[_327 + ceil32(return_data.size) + 160] < mem[_327 + ceil32(return_data.size) + 160]:
                                    require 1 < mem[_327 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_327 + ceil32(return_data.size) + 160]
                            else:
                                require 1 < mem[_327 + ceil32(return_data.size) + 96]
                                require 1 < mem[96]
                                mem[160] = mem[_327 + ceil32(return_data.size) + 160]
                                require idx < arg1.length
                                require 0 < mem[96]
                                require 1 < mem[_327 + ceil32(return_data.size) + 96]
                                if mem[_327 + ceil32(return_data.size) + 160] < mem[128]:
                                    require 1 < mem[_327 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_327 + ceil32(return_data.size) + 160]
                        idx = idx + 1
                        s = _327 + ceil32(return_data.size) + 96
                        s = _327
                        s = address(cd[((32 * idx) + arg1 + 36)])
                        continue 
                    mem[_327 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_327 + 100] = arg4
                    mem[_327 + 132] = 64
                    mem[_327 + 164] = mem[_327]
                    t = 0
                    while t < 32 * mem[_327]:
                        mem[_327 + t + 196] = mem[_327 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg4, 64, mem[_327 + 164 len (32 * mem[_327]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_327 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _327 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _854 = mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32
                    require mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + _327 + 96] <= 4294967296 and mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + _327 + 96]) + 32 <= return_data.size
                    mem[_327 + ceil32(return_data.size) + 96] = mem[mem[_327 + 96 len 4], Mask(224, 32, arg4) >> 32 + _327 + 96]
                    _871 = mem[_854 + _327 + 96]
                    t = 0
                    while t < 32 * _871:
                        mem[_327 + ceil32(return_data.size) + t + 128] = mem[_854 + _327 + t + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _871) + _327 + ceil32(return_data.size) + 128
                    if idx:
                        if 1 < mem[96]:
                            if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                if mem[_327 + ceil32(return_data.size) + 128] <= mem[160]:
                                    if 0 < mem[96]:
                                        if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                            if mem[_327 + ceil32(return_data.size) + 128] >= mem[128]:
                                                idx = idx + 1
                                                s = _327 + ceil32(return_data.size) + 96
                                                s = _327
                                                s = s
                                                continue 
                                            if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                if 0 < mem[96]:
                                                    mem[128] = mem[_327 + ceil32(return_data.size) + 128]
                                                    if idx < arg1.length:
                                                        idx = idx + 1
                                                        s = _327 + ceil32(return_data.size) + 96
                                                        s = _327
                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                        continue 
                                else:
                                    if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                        if 1 < mem[96]:
                                            mem[160] = mem[_327 + ceil32(return_data.size) + 128]
                                            if 0 < mem[96]:
                                                if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                    if mem[_327 + ceil32(return_data.size) + 128] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _327 + ceil32(return_data.size) + 96
                                                        s = _327
                                                        s = s
                                                        continue 
                                                    if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_327 + ceil32(return_data.size) + 128]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _327 + ceil32(return_data.size) + 96
                                                                s = _327
                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                    else:
                        if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                            if 1 < mem[96]:
                                mem[160] = mem[_327 + ceil32(return_data.size) + 128]
                                if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                    if 0 < mem[96]:
                                        mem[128] = mem[_327 + ceil32(return_data.size) + 128]
                                        if idx < arg1.length:
                                            if 1 < mem[96]:
                                                if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                    if mem[_327 + ceil32(return_data.size) + 128] <= mem[160]:
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                                if mem[_327 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _327 + ceil32(return_data.size) + 96
                                                                    s = _327
                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                                                if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_327 + ceil32(return_data.size) + 128]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _327 + ceil32(return_data.size) + 96
                                                                            s = _327
                                                                            s = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                    else:
                                                        if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                            if 1 < mem[96]:
                                                                mem[160] = mem[_327 + ceil32(return_data.size) + 128]
                                                                if 0 < mem[96]:
                                                                    if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                                        if mem[_327 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                            idx = idx + 1
                                                                            s = _327 + ceil32(return_data.size) + 96
                                                                            s = _327
                                                                            s = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                                        if 0 < mem[_327 + ceil32(return_data.size) + 96]:
                                                                            if 0 < mem[96]:
                                                                                mem[128] = mem[_327 + ceil32(return_data.size) + 128]
                                                                                if idx < arg1.length:
                                                                                    idx = idx + 1
                                                                                    s = _327 + ceil32(return_data.size) + 96
                                                                                    s = _327
                                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
        else:
            if not arg3:
                _331 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 < mem[_331]:
                    mem[_331 + 32] = BUSDAddress
                    if 1 < mem[_331]:
                        mem[_331 + 64] = WBNBAddress
                        if not arg5:
                            mem[_331 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_331 + 100] = arg4
                            mem[_331 + 132] = 64
                            mem[_331 + 164] = mem[_331]
                            t = 0
                            while t < 32 * mem[_331]:
                                mem[_331 + t + 196] = mem[_331 + t + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg4, 64, mem[_331 + 164 len (32 * mem[_331]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_331 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _331 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _848 = mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32
                            require mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                            require mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                            require mem[mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + _331 + 96] <= 4294967296 and mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + _331 + 96]) + 32 <= return_data.size
                            mem[_331 + ceil32(return_data.size) + 96] = mem[mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + _331 + 96]
                            _868 = mem[_848 + _331 + 96]
                            t = 0
                            while t < 32 * _868:
                                mem[_331 + ceil32(return_data.size) + t + 128] = mem[_848 + _331 + t + 128]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _868) + _331 + ceil32(return_data.size) + 128
                            if idx:
                                require 1 < mem[96]
                                require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                if mem[_331 + ceil32(return_data.size) + 160] <= mem[160]:
                                    require 0 < mem[96]
                                    require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                    if mem[_331 + ceil32(return_data.size) + 160] < mem[128]:
                                        require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                        require 0 < mem[96]
                                        mem[128] = mem[_331 + ceil32(return_data.size) + 160]
                                    idx = idx + 1
                                    s = _331 + ceil32(return_data.size) + 96
                                    s = _331
                                    s = s
                                    continue 
                                require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                require 1 < mem[96]
                                mem[160] = mem[_331 + ceil32(return_data.size) + 160]
                                require idx < arg1.length
                                require 0 < mem[96]
                                require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                if mem[_331 + ceil32(return_data.size) + 160] < mem[128]:
                                    require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                    require 0 < mem[96]
                                    mem[128] = mem[_331 + ceil32(return_data.size) + 160]
                            else:
                                require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                require 1 < mem[96]
                                mem[160] = mem[_331 + ceil32(return_data.size) + 160]
                                require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                require 0 < mem[96]
                                mem[128] = mem[_331 + ceil32(return_data.size) + 160]
                                require idx < arg1.length
                                require 1 < mem[96]
                                require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                if mem[_331 + ceil32(return_data.size) + 160] <= mem[160]:
                                    require 0 < mem[96]
                                    require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                    if mem[_331 + ceil32(return_data.size) + 160] < mem[_331 + ceil32(return_data.size) + 160]:
                                        require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                        require 0 < mem[96]
                                        mem[128] = mem[_331 + ceil32(return_data.size) + 160]
                                else:
                                    require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                    require 1 < mem[96]
                                    mem[160] = mem[_331 + ceil32(return_data.size) + 160]
                                    require idx < arg1.length
                                    require 0 < mem[96]
                                    require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                    if mem[_331 + ceil32(return_data.size) + 160] < mem[128]:
                                        require 1 < mem[_331 + ceil32(return_data.size) + 96]
                                        require 0 < mem[96]
                                        mem[128] = mem[_331 + ceil32(return_data.size) + 160]
                            idx = idx + 1
                            s = _331 + ceil32(return_data.size) + 96
                            s = _331
                            s = address(cd[((32 * idx) + arg1 + 36)])
                            continue 
                        mem[_331 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_331 + 100] = arg4
                        mem[_331 + 132] = 64
                        mem[_331 + 164] = mem[_331]
                        t = 0
                        while t < 32 * mem[_331]:
                            mem[_331 + t + 196] = mem[_331 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg4, 64, mem[_331 + 164 len (32 * mem[_331]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_331 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _331 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _850 = mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32
                        require mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + _331 + 96] <= 4294967296 and mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + _331 + 96]) + 32 <= return_data.size
                        mem[_331 + ceil32(return_data.size) + 96] = mem[mem[_331 + 96 len 4], Mask(224, 32, arg4) >> 32 + _331 + 96]
                        _869 = mem[_850 + _331 + 96]
                        t = 0
                        while t < 32 * _869:
                            mem[_331 + ceil32(return_data.size) + t + 128] = mem[_850 + _331 + t + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _869) + _331 + ceil32(return_data.size) + 128
                        if idx:
                            if 1 < mem[96]:
                                if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                    if mem[_331 + ceil32(return_data.size) + 128] <= mem[160]:
                                        if 0 < mem[96]:
                                            if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                if mem[_331 + ceil32(return_data.size) + 128] >= mem[128]:
                                                    idx = idx + 1
                                                    s = _331 + ceil32(return_data.size) + 96
                                                    s = _331
                                                    s = s
                                                    continue 
                                                if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                    if 0 < mem[96]:
                                                        mem[128] = mem[_331 + ceil32(return_data.size) + 128]
                                                        if idx < arg1.length:
                                                            idx = idx + 1
                                                            s = _331 + ceil32(return_data.size) + 96
                                                            s = _331
                                                            s = address(cd[((32 * idx) + arg1 + 36)])
                                                            continue 
                                    else:
                                        if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                            if 1 < mem[96]:
                                                mem[160] = mem[_331 + ceil32(return_data.size) + 128]
                                                if 0 < mem[96]:
                                                    if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                        if mem[_331 + ceil32(return_data.size) + 128] >= mem[128]:
                                                            idx = idx + 1
                                                            s = _331 + ceil32(return_data.size) + 96
                                                            s = _331
                                                            s = s
                                                            continue 
                                                        if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_331 + ceil32(return_data.size) + 128]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _331 + ceil32(return_data.size) + 96
                                                                    s = _331
                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                        else:
                            if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                if 1 < mem[96]:
                                    mem[160] = mem[_331 + ceil32(return_data.size) + 128]
                                    if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                        if 0 < mem[96]:
                                            mem[128] = mem[_331 + ceil32(return_data.size) + 128]
                                            if idx < arg1.length:
                                                if 1 < mem[96]:
                                                    if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                        if mem[_331 + ceil32(return_data.size) + 128] <= mem[160]:
                                                            if 0 < mem[96]:
                                                                if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                                    if mem[_331 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                        idx = idx + 1
                                                                        s = _331 + ceil32(return_data.size) + 96
                                                                        s = _331
                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
                                                                    if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                                        if 0 < mem[96]:
                                                                            mem[128] = mem[_331 + ceil32(return_data.size) + 128]
                                                                            if idx < arg1.length:
                                                                                idx = idx + 1
                                                                                s = _331 + ceil32(return_data.size) + 96
                                                                                s = _331
                                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                        else:
                                                            if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                                if 1 < mem[96]:
                                                                    mem[160] = mem[_331 + ceil32(return_data.size) + 128]
                                                                    if 0 < mem[96]:
                                                                        if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                                            if mem[_331 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                                idx = idx + 1
                                                                                s = _331 + ceil32(return_data.size) + 96
                                                                                s = _331
                                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_331 + ceil32(return_data.size) + 96]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_331 + ceil32(return_data.size) + 128]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _331 + ceil32(return_data.size) + 96
                                                                                        s = _331
                                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
            else:
                _330 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if not arg5:
                    if 0 < mem[_330]:
                        mem[_330 + 32] = BUSDAddress
                        if 1 < mem[_330]:
                            mem[_330 + 64] = WBNBAddress
                            if 2 < mem[_330]:
                                mem[_330 + 96] = arg3
                                if not arg5:
                                    mem[_330 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_330 + 132] = arg4
                                    mem[_330 + 164] = 64
                                    mem[_330 + 196] = mem[_330]
                                    t = 0
                                    while t < 32 * mem[_330]:
                                        mem[_330 + t + 228] = mem[_330 + t + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args arg4, 64, mem[_330 + 196 len (32 * mem[_330]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_330 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _330 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    _840 = mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32
                                    require mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                    require mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                    require mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128] <= 4294967296 and mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128]) + 32 <= return_data.size
                                    mem[_330 + ceil32(return_data.size) + 128] = mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128]
                                    _864 = mem[_840 + _330 + 128]
                                    t = 0
                                    while t < 32 * _864:
                                        mem[_330 + ceil32(return_data.size) + t + 160] = mem[_840 + _330 + t + 160]
                                        t = t + 32
                                        continue 
                                    mem[64] = (32 * _864) + _330 + ceil32(return_data.size) + 160
                                    if idx:
                                        require 1 < mem[96]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        if mem[_330 + ceil32(return_data.size) + 192] <= mem[160]:
                                            require 0 < mem[96]
                                            require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                            if mem[_330 + ceil32(return_data.size) + 192] < mem[128]:
                                                require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                                require 0 < mem[96]
                                                mem[128] = mem[_330 + ceil32(return_data.size) + 192]
                                            idx = idx + 1
                                            s = _330 + ceil32(return_data.size) + 128
                                            s = _330
                                            s = s
                                            continue 
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        require 1 < mem[96]
                                        mem[160] = mem[_330 + ceil32(return_data.size) + 192]
                                        require idx < arg1.length
                                        require 0 < mem[96]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        if mem[_330 + ceil32(return_data.size) + 192] < mem[128]:
                                            require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                            require 0 < mem[96]
                                            mem[128] = mem[_330 + ceil32(return_data.size) + 192]
                                    else:
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        require 1 < mem[96]
                                        mem[160] = mem[_330 + ceil32(return_data.size) + 192]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_330 + ceil32(return_data.size) + 192]
                                        require idx < arg1.length
                                        require 1 < mem[96]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        if mem[_330 + ceil32(return_data.size) + 192] > mem[_330 + ceil32(return_data.size) + 192]:
                                            require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                            require 1 < mem[96]
                                            mem[160] = mem[_330 + ceil32(return_data.size) + 192]
                                            require idx < arg1.length
                                        require 0 < mem[96]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        if mem[_330 + ceil32(return_data.size) + 192] < mem[_330 + ceil32(return_data.size) + 192]:
                                            require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                            require 0 < mem[96]
                                            mem[128] = mem[_330 + ceil32(return_data.size) + 192]
                                    idx = idx + 1
                                    s = _330 + ceil32(return_data.size) + 128
                                    s = _330
                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                                mem[_330 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[_330 + 132] = arg4
                                mem[_330 + 164] = 64
                                mem[_330 + 196] = mem[_330]
                                t = 0
                                while t < 32 * mem[_330]:
                                    mem[_330 + t + 228] = mem[_330 + t + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg4, 64, mem[_330 + 196 len (32 * mem[_330]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_330 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _330 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _842 = mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128] <= 4294967296 and mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128]) + 32 <= return_data.size
                                mem[_330 + ceil32(return_data.size) + 128] = mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128]
                                _865 = mem[_842 + _330 + 128]
                                t = 0
                                while t < 32 * _865:
                                    mem[_330 + ceil32(return_data.size) + t + 160] = mem[_842 + _330 + t + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _865) + _330 + ceil32(return_data.size) + 160
                                if idx:
                                    if 1 < mem[96]:
                                        if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                            if mem[_330 + ceil32(return_data.size) + 160] <= mem[160]:
                                                if 0 < mem[96]:
                                                    if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                        if mem[_330 + ceil32(return_data.size) + 160] >= mem[128]:
                                                            idx = idx + 1
                                                            s = _330 + ceil32(return_data.size) + 128
                                                            s = _330
                                                            s = s
                                                            continue 
                                                        if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _330 + ceil32(return_data.size) + 128
                                                                    s = _330
                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                            else:
                                                if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                    if 1 < mem[96]:
                                                        mem[160] = mem[_330 + ceil32(return_data.size) + 160]
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                if mem[_330 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _330 + ceil32(return_data.size) + 128
                                                                    s = _330
                                                                    s = s
                                                                    continue 
                                                                if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _330 + ceil32(return_data.size) + 128
                                                                            s = _330
                                                                            s = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                else:
                                    if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                        if 1 < mem[96]:
                                            mem[160] = mem[_330 + ceil32(return_data.size) + 160]
                                            if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                if 0 < mem[96]:
                                                    mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                    if idx < arg1.length:
                                                        if 1 < mem[96]:
                                                            if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                if mem[_330 + ceil32(return_data.size) + 160] <= mem[160]:
                                                                    if 0 < mem[96]:
                                                                        if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                            if mem[_330 + ceil32(return_data.size) + 160] >= mem[_330 + ceil32(return_data.size) + 160]:
                                                                                idx = idx + 1
                                                                                s = _330 + ceil32(return_data.size) + 128
                                                                                s = _330
                                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _330 + ceil32(return_data.size) + 128
                                                                                        s = _330
                                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
                                                                else:
                                                                    if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                        if 1 < mem[96]:
                                                                            mem[160] = mem[_330 + ceil32(return_data.size) + 160]
                                                                            if 0 < mem[96]:
                                                                                if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                                    if mem[_330 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                                        idx = idx + 1
                                                                                        s = _330 + ceil32(return_data.size) + 128
                                                                                        s = _330
                                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
                                                                                    if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                                        if 0 < mem[96]:
                                                                                            mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                                                            if idx < arg1.length:
                                                                                                idx = idx + 1
                                                                                                s = _330 + ceil32(return_data.size) + 128
                                                                                                s = _330
                                                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                                continue 
                else:
                    if 0 < mem[_330]:
                        mem[_330 + 32] = arg2
                        if 1 < mem[_330]:
                            mem[_330 + 64] = WBNBAddress
                            if 2 < mem[_330]:
                                mem[_330 + 96] = BUSDAddress
                                if not arg5:
                                    mem[_330 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_330 + 132] = arg4
                                    mem[_330 + 164] = 64
                                    mem[_330 + 196] = mem[_330]
                                    t = 0
                                    while t < 32 * mem[_330]:
                                        mem[_330 + t + 228] = mem[_330 + t + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                    staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args arg4, 64, mem[_330 + 196 len (32 * mem[_330]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_330 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _330 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    _844 = mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32
                                    require mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                    require mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                    require mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128] <= 4294967296 and mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128]) + 32 <= return_data.size
                                    mem[_330 + ceil32(return_data.size) + 128] = mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128]
                                    _866 = mem[_844 + _330 + 128]
                                    t = 0
                                    while t < 32 * _866:
                                        mem[_330 + ceil32(return_data.size) + t + 160] = mem[_844 + _330 + t + 160]
                                        t = t + 32
                                        continue 
                                    mem[64] = (32 * _866) + _330 + ceil32(return_data.size) + 160
                                    if idx:
                                        require 1 < mem[96]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        if mem[_330 + ceil32(return_data.size) + 192] <= mem[160]:
                                            require 0 < mem[96]
                                            require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                            if mem[_330 + ceil32(return_data.size) + 192] < mem[128]:
                                                require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                                require 0 < mem[96]
                                                mem[128] = mem[_330 + ceil32(return_data.size) + 192]
                                            idx = idx + 1
                                            s = _330 + ceil32(return_data.size) + 128
                                            s = _330
                                            s = s
                                            continue 
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        require 1 < mem[96]
                                        mem[160] = mem[_330 + ceil32(return_data.size) + 192]
                                        require idx < arg1.length
                                        require 0 < mem[96]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        if mem[_330 + ceil32(return_data.size) + 192] < mem[128]:
                                            require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                            require 0 < mem[96]
                                            mem[128] = mem[_330 + ceil32(return_data.size) + 192]
                                    else:
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        require 1 < mem[96]
                                        mem[160] = mem[_330 + ceil32(return_data.size) + 192]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        require 0 < mem[96]
                                        mem[128] = mem[_330 + ceil32(return_data.size) + 192]
                                        require idx < arg1.length
                                        require 1 < mem[96]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        if mem[_330 + ceil32(return_data.size) + 192] > mem[_330 + ceil32(return_data.size) + 192]:
                                            require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                            require 1 < mem[96]
                                            mem[160] = mem[_330 + ceil32(return_data.size) + 192]
                                            require idx < arg1.length
                                        require 0 < mem[96]
                                        require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                        if mem[_330 + ceil32(return_data.size) + 192] < mem[_330 + ceil32(return_data.size) + 192]:
                                            require 1 < mem[_330 + ceil32(return_data.size) + 128]
                                            require 0 < mem[96]
                                            mem[128] = mem[_330 + ceil32(return_data.size) + 192]
                                    idx = idx + 1
                                    s = _330 + ceil32(return_data.size) + 128
                                    s = _330
                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                    continue 
                                mem[_330 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[_330 + 132] = arg4
                                mem[_330 + 164] = 64
                                mem[_330 + 196] = mem[_330]
                                t = 0
                                while t < 32 * mem[_330]:
                                    mem[_330 + t + 228] = mem[_330 + t + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg4, 64, mem[_330 + 196 len (32 * mem[_330]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_330 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _330 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                _846 = mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32
                                require mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                                require mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                                require mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128] <= 4294967296 and mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128]) + 32 <= return_data.size
                                mem[_330 + ceil32(return_data.size) + 128] = mem[mem[_330 + 128 len 4], Mask(224, 32, arg4) >> 32 + _330 + 128]
                                _867 = mem[_846 + _330 + 128]
                                t = 0
                                while t < 32 * _867:
                                    mem[_330 + ceil32(return_data.size) + t + 160] = mem[_846 + _330 + t + 160]
                                    t = t + 32
                                    continue 
                                mem[64] = (32 * _867) + _330 + ceil32(return_data.size) + 160
                                if idx:
                                    if 1 < mem[96]:
                                        if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                            if mem[_330 + ceil32(return_data.size) + 160] <= mem[160]:
                                                if 0 < mem[96]:
                                                    if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                        if mem[_330 + ceil32(return_data.size) + 160] >= mem[128]:
                                                            idx = idx + 1
                                                            s = _330 + ceil32(return_data.size) + 128
                                                            s = _330
                                                            s = s
                                                            continue 
                                                        if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _330 + ceil32(return_data.size) + 128
                                                                    s = _330
                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                            else:
                                                if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                    if 1 < mem[96]:
                                                        mem[160] = mem[_330 + ceil32(return_data.size) + 160]
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                if mem[_330 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _330 + ceil32(return_data.size) + 128
                                                                    s = _330
                                                                    s = s
                                                                    continue 
                                                                if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _330 + ceil32(return_data.size) + 128
                                                                            s = _330
                                                                            s = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                else:
                                    if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                        if 1 < mem[96]:
                                            mem[160] = mem[_330 + ceil32(return_data.size) + 160]
                                            if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                if 0 < mem[96]:
                                                    mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                    if idx < arg1.length:
                                                        if 1 < mem[96]:
                                                            if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                if mem[_330 + ceil32(return_data.size) + 160] <= mem[160]:
                                                                    if 0 < mem[96]:
                                                                        if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                            if mem[_330 + ceil32(return_data.size) + 160] >= mem[_330 + ceil32(return_data.size) + 160]:
                                                                                idx = idx + 1
                                                                                s = _330 + ceil32(return_data.size) + 128
                                                                                s = _330
                                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _330 + ceil32(return_data.size) + 128
                                                                                        s = _330
                                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
                                                                else:
                                                                    if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                        if 1 < mem[96]:
                                                                            mem[160] = mem[_330 + ceil32(return_data.size) + 160]
                                                                            if 0 < mem[96]:
                                                                                if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                                    if mem[_330 + ceil32(return_data.size) + 160] >= mem[128]:
                                                                                        idx = idx + 1
                                                                                        s = _330 + ceil32(return_data.size) + 128
                                                                                        s = _330
                                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                        continue 
                                                                                    if 0 < mem[_330 + ceil32(return_data.size) + 128]:
                                                                                        if 0 < mem[96]:
                                                                                            mem[128] = mem[_330 + ceil32(return_data.size) + 160]
                                                                                            if idx < arg1.length:
                                                                                                idx = idx + 1
                                                                                                s = _330 + ceil32(return_data.size) + 128
                                                                                                s = _330
                                                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                                continue 
        revert
    mem[mem[64] + 32] = address(s)
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 64, address(s), mem[mem[64] + 64 len (32 * mem[96]) + 32]
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
    s = 96
    s = 0
    while idx < arg1.length:
        if not BUSDAddress:
            _506 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_506]
            mem[_506 + 32] = WBNBAddress
            require 1 < mem[_506]
            mem[_506 + 64] = BUSDAddress
            mem[_506 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_506 + 100] = arg3
            mem[_506 + 132] = 64
            mem[_506 + 164] = mem[_506]
            t = 0
            while t < 32 * mem[_506]:
                mem[_506 + t + 196] = mem[_506 + t + 32]
                t = t + 32
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
            _1093 = mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32
            require mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96] <= 4294967296 and mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96]) + 32 <= return_data.size
            mem[_506 + ceil32(return_data.size) + 96] = mem[mem[_506 + 96 len 4], Mask(224, 32, arg3) >> 32 + _506 + 96]
            _1108 = mem[_1093 + _506 + 96]
            t = 0
            while t < 32 * _1108:
                mem[_506 + ceil32(return_data.size) + t + 128] = mem[_1093 + _506 + t + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1108) + _506 + ceil32(return_data.size) + 128
            if idx:
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
                    s = _506
                    s = s
                    continue 
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
            else:
                require 1 < mem[_506 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_506 + ceil32(return_data.size) + 160]
                require 1 < mem[_506 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_506 + ceil32(return_data.size) + 160]
                require idx < arg1.length
                require 1 < mem[96]
                require 1 < mem[_506 + ceil32(return_data.size) + 96]
                if mem[_506 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_506 + ceil32(return_data.size) + 96]
                    if mem[_506 + ceil32(return_data.size) + 160] < mem[_506 + ceil32(return_data.size) + 160]:
                        require 1 < mem[_506 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_506 + ceil32(return_data.size) + 160]
                else:
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
            s = _506
            s = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        if not arg2:
            _509 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_509]
            mem[_509 + 32] = BUSDAddress
            require 1 < mem[_509]
            mem[_509 + 64] = WBNBAddress
            mem[_509 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_509 + 100] = arg3
            mem[_509 + 132] = 64
            mem[_509 + 164] = mem[_509]
            t = 0
            while t < 32 * mem[_509]:
                mem[_509 + t + 196] = mem[_509 + t + 32]
                t = t + 32
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
            _1091 = mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32
            require mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96] <= 4294967296 and mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96]) + 32 <= return_data.size
            mem[_509 + ceil32(return_data.size) + 96] = mem[mem[_509 + 96 len 4], Mask(224, 32, arg3) >> 32 + _509 + 96]
            _1107 = mem[_1091 + _509 + 96]
            t = 0
            while t < 32 * _1107:
                mem[_509 + ceil32(return_data.size) + t + 128] = mem[_1091 + _509 + t + 128]
                t = t + 32
                continue 
            mem[64] = (32 * _1107) + _509 + ceil32(return_data.size) + 128
            if idx:
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
                    s = _509
                    s = s
                    continue 
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
            else:
                require 1 < mem[_509 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_509 + ceil32(return_data.size) + 160]
                require 1 < mem[_509 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_509 + ceil32(return_data.size) + 160]
                require idx < arg1.length
                require 1 < mem[96]
                require 1 < mem[_509 + ceil32(return_data.size) + 96]
                if mem[_509 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_509 + ceil32(return_data.size) + 96]
                    if mem[_509 + ceil32(return_data.size) + 160] < mem[_509 + ceil32(return_data.size) + 160]:
                        require 1 < mem[_509 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_509 + ceil32(return_data.size) + 160]
                else:
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
            s = _509
            s = address(cd[((32 * idx) + arg1 + 36)])
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
        mem[_508 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_508 + 132] = arg3
        mem[_508 + 164] = 64
        mem[_508 + 196] = mem[_508]
        t = 0
        while t < 32 * mem[_508]:
            mem[_508 + t + 228] = mem[_508 + t + 32]
            t = t + 32
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
        _1089 = mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32
        require mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128] <= 4294967296 and mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128]) + 32 <= return_data.size
        mem[_508 + ceil32(return_data.size) + 128] = mem[mem[_508 + 128 len 4], Mask(224, 32, arg3) >> 32 + _508 + 128]
        _1106 = mem[_1089 + _508 + 128]
        t = 0
        while t < 32 * _1106:
            mem[_508 + ceil32(return_data.size) + t + 160] = mem[_1089 + _508 + t + 160]
            t = t + 32
            continue 
        mem[64] = (32 * _1106) + _508 + ceil32(return_data.size) + 160
        if idx:
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
                s = _508
                s = s
                continue 
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
        else:
            require 1 < mem[_508 + ceil32(return_data.size) + 128]
            require 1 < mem[96]
            mem[160] = mem[_508 + ceil32(return_data.size) + 192]
            require 1 < mem[_508 + ceil32(return_data.size) + 128]
            require 0 < mem[96]
            mem[128] = mem[_508 + ceil32(return_data.size) + 192]
            require idx < arg1.length
            require 1 < mem[96]
            require 1 < mem[_508 + ceil32(return_data.size) + 128]
            if mem[_508 + ceil32(return_data.size) + 192] > mem[_508 + ceil32(return_data.size) + 192]:
                require 1 < mem[_508 + ceil32(return_data.size) + 128]
                require 1 < mem[96]
                mem[160] = mem[_508 + ceil32(return_data.size) + 192]
                require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_508 + ceil32(return_data.size) + 128]
            if mem[_508 + ceil32(return_data.size) + 192] < mem[_508 + ceil32(return_data.size) + 192]:
                require 1 < mem[_508 + ceil32(return_data.size) + 128]
                require 0 < mem[96]
                mem[128] = mem[_508 + ceil32(return_data.size) + 192]
        idx = idx + 1
        s = _508 + ceil32(return_data.size) + 128
        s = _508
        s = address(cd[((32 * idx) + arg1 + 36)])
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
    mem[_507 + 164] = msg.sender
    mem[_507 + 196] = this.address
    mem[_507 + 228] = arg3
    mem[_507 + 128] = 100
    mem[_507 + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[_507 + 160 len 4] = unknown_0x23b872dd(?????)
    mem[_507 + 260 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[_507 + 384 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[_507 + 356 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_507 + 364 len 20],
                        uint32(arg3),
                        mem[_507 + 388 len 4]
        if not mem[96]:
            mem[_507 + 296] = address(s)
            mem[_507 + 328] = arg3
            mem[_507 + 260] = 68
            mem[64] = _507 + 360
            mem[_507 + 292 len 4] = approve(address rg1, uint256 rg2)
            mem[_507 + 360 len 64] = 0, address(s), Mask(224, 32, arg3) >> 32
            mem[_507 + 452 len 4] = uint32(arg3)
            call arg2 with:
                 gas gas_remaining wei
                args arg3, Mask(224, 32, address(s), Mask(224, 32, arg3) >> 32) >> 32, mem[_507 + 424 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if not mem[96]:
                    mem[_507 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_507 + 364] = arg3
                    mem[_507 + 396] = 0
                    mem[_507 + 460] = msg.sender
                    mem[_507 + 492] = block.timestamp + 60
                    mem[_507 + 428] = 160
                    mem[_507 + 524] = mem[_507]
                    mem[_507 + 556 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                    require ext_code.size(address(s))
                    call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + 524 len (32 * mem[_507]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_507 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _507 + ceil32(return_data.size) + 360
                    require return_data.size >= 32
                    _2139 = mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32
                    require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360] <= 4294967296 and mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]) + 32 <= return_data.size
                    mem[_507 + ceil32(return_data.size) + 360] = mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]
                    _2187 = mem[_2139 + _507 + 360]
                    mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_2139 + _507 + 360])] = mem[_2139 + _507 + 392 len floor32(mem[_2139 + _507 + 360])]
                    mem[(32 * _2187) + _507 + ceil32(return_data.size) + 392] = 32
                    mem[(32 * _2187) + _507 + ceil32(return_data.size) + 424] = mem[_507 + ceil32(return_data.size) + 360]
                    mem[(32 * _2187) + _507 + ceil32(return_data.size) + 456 len floor32(mem[_507 + ceil32(return_data.size) + 360])] = mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_507 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _2187) + _507 + ceil32(return_data.size) + 424 len (32 * mem[_507 + ceil32(return_data.size) + 360]) + 32], 
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                mem[_507 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_507 + 364] = arg3
                mem[_507 + 396] = 0
                mem[_507 + 460] = msg.sender
                mem[_507 + 492] = block.timestamp + 60
                mem[_507 + 428] = 160
                mem[_507 + 524] = mem[_507]
                mem[_507 + 556 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                require ext_code.size(address(s))
                call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + 524 len (32 * mem[_507]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_507 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _507 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _2141 = mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32
                require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360] <= 4294967296 and mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]) + 32 <= return_data.size
                mem[_507 + ceil32(return_data.size) + 360] = mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]
                _2188 = mem[_2141 + _507 + 360]
                mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_2141 + _507 + 360])] = mem[_2141 + _507 + 392 len floor32(mem[_2141 + _507 + 360])]
                mem[(32 * _2188) + _507 + ceil32(return_data.size) + 392] = 32
                mem[(32 * _2188) + _507 + ceil32(return_data.size) + 424] = mem[_507 + ceil32(return_data.size) + 360]
                mem[(32 * _2188) + _507 + ceil32(return_data.size) + 456 len floor32(mem[_507 + ceil32(return_data.size) + 360])] = mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_507 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _2188) + _507 + ceil32(return_data.size) + 424 len (32 * mem[_507 + ceil32(return_data.size) + 360]) + 32], 
            mem[64] = _507 + ceil32(return_data.size) + 361
            mem[_507 + 360] = return_data.size
            mem[_507 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if not return_data.size:
                mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_507 + ceil32(return_data.size) + 365] = arg3
                mem[_507 + ceil32(return_data.size) + 397] = 0
                mem[_507 + ceil32(return_data.size) + 461] = msg.sender
                mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_507 + ceil32(return_data.size) + 429] = 160
                mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
                mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                require ext_code.size(address(s))
                call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _2143 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
                require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
                _2189 = mem[_2143 + _507 + ceil32(return_data.size) + 361]
                mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2143 + _507 + ceil32(return_data.size) + 361])] = mem[_2143 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2143 + _507 + ceil32(return_data.size) + 361])]
                mem[(32 * _2189) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                mem[(32 * _2189) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _2189) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _2189) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            require return_data.size >= 32
            if not mem[_507 + 392]:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 365] = arg3
            mem[_507 + ceil32(return_data.size) + 397] = 0
            mem[_507 + ceil32(return_data.size) + 461] = msg.sender
            mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_507 + ceil32(return_data.size) + 429] = 160
            mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
            mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(s))
            call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _2145 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
            _2190 = mem[_2145 + _507 + ceil32(return_data.size) + 361]
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2145 + _507 + ceil32(return_data.size) + 361])] = mem[_2145 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2145 + _507 + ceil32(return_data.size) + 361])]
            mem[(32 * _2190) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _2190) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _2190) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _2190) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_507 + 364 len 20],
                        uint32(arg3),
                        mem[_507 + 388 len 4]
        mem[_507 + 296] = address(s)
        mem[_507 + 328] = arg3
        mem[_507 + 260] = 68
        mem[64] = _507 + 360
        mem[_507 + 292 len 4] = approve(address rg1, uint256 rg2)
        mem[_507 + 360 len 64] = 0, address(s), Mask(224, 32, arg3) >> 32
        mem[_507 + 452 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, Mask(224, 32, address(s), Mask(224, 32, arg3) >> 32) >> 32, mem[_507 + 424 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if not mem[96]:
                mem[_507 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_507 + 364] = arg3
                mem[_507 + 396] = 0
                mem[_507 + 460] = msg.sender
                mem[_507 + 492] = block.timestamp + 60
                mem[_507 + 428] = 160
                mem[_507 + 524] = mem[_507]
                mem[_507 + 556 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                require ext_code.size(address(s))
                call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + 524 len (32 * mem[_507]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_507 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _507 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _2147 = mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32
                require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360] <= 4294967296 and mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]) + 32 <= return_data.size
                mem[_507 + ceil32(return_data.size) + 360] = mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]
                _2191 = mem[_2147 + _507 + 360]
                mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_2147 + _507 + 360])] = mem[_2147 + _507 + 392 len floor32(mem[_2147 + _507 + 360])]
                mem[(32 * _2191) + _507 + ceil32(return_data.size) + 392] = 32
                mem[(32 * _2191) + _507 + ceil32(return_data.size) + 424] = mem[_507 + ceil32(return_data.size) + 360]
                mem[(32 * _2191) + _507 + ceil32(return_data.size) + 456 len floor32(mem[_507 + ceil32(return_data.size) + 360])] = mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_507 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _2191) + _507 + ceil32(return_data.size) + 424 len (32 * mem[_507 + ceil32(return_data.size) + 360]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[_507 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + 364] = arg3
            mem[_507 + 396] = 0
            mem[_507 + 460] = msg.sender
            mem[_507 + 492] = block.timestamp + 60
            mem[_507 + 428] = 160
            mem[_507 + 524] = mem[_507]
            mem[_507 + 556 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(s))
            call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + 524 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + 360
            require return_data.size >= 32
            _2149 = mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360] <= 4294967296 and mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + 360] = mem[mem[_507 + 360 len 4], Mask(224, 32, arg3) >> 32 + _507 + 360]
            _2192 = mem[_2149 + _507 + 360]
            mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_2149 + _507 + 360])] = mem[_2149 + _507 + 392 len floor32(mem[_2149 + _507 + 360])]
            mem[(32 * _2192) + _507 + ceil32(return_data.size) + 392] = 32
            mem[(32 * _2192) + _507 + ceil32(return_data.size) + 424] = mem[_507 + ceil32(return_data.size) + 360]
            mem[(32 * _2192) + _507 + ceil32(return_data.size) + 456 len floor32(mem[_507 + ceil32(return_data.size) + 360])] = mem[_507 + ceil32(return_data.size) + 392 len floor32(mem[_507 + ceil32(return_data.size) + 360])]
            return 32, mem[(32 * _2192) + _507 + ceil32(return_data.size) + 424 len (32 * mem[_507 + ceil32(return_data.size) + 360]) + 32], 
        mem[64] = _507 + ceil32(return_data.size) + 361
        mem[_507 + 360] = return_data.size
        mem[_507 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not return_data.size:
            mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 365] = arg3
            mem[_507 + ceil32(return_data.size) + 397] = 0
            mem[_507 + ceil32(return_data.size) + 461] = msg.sender
            mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_507 + ceil32(return_data.size) + 429] = 160
            mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
            mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(s))
            call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _2151 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
            _2193 = mem[_2151 + _507 + ceil32(return_data.size) + 361]
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2151 + _507 + ceil32(return_data.size) + 361])] = mem[_2151 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2151 + _507 + ceil32(return_data.size) + 361])]
            mem[(32 * _2193) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _2193) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _2193) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _2193) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require return_data.size >= 32
        if not mem[_507 + 392]:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_507 + ceil32(return_data.size) + 365] = arg3
        mem[_507 + ceil32(return_data.size) + 397] = 0
        mem[_507 + ceil32(return_data.size) + 461] = msg.sender
        mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_507 + ceil32(return_data.size) + 429] = 160
        mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
        mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
        require ext_code.size(address(s))
        call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _2153 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
        require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
        _2194 = mem[_2153 + _507 + ceil32(return_data.size) + 361]
        mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2153 + _507 + ceil32(return_data.size) + 361])] = mem[_2153 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2153 + _507 + ceil32(return_data.size) + 361])]
        mem[(32 * _2194) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[(32 * _2194) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _2194) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
        return 32, mem[(32 * _2194) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
    mem[_507 + 260] = return_data.size
    mem[_507 + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_507 + ceil32(return_data.size) + 365 len 28]
    if not return_data.size:
        mem[_507 + ceil32(return_data.size) + 297] = address(s)
        mem[_507 + ceil32(return_data.size) + 329] = arg3
        mem[_507 + ceil32(return_data.size) + 261] = 68
        mem[64] = _507 + ceil32(return_data.size) + 361
        mem[_507 + ceil32(return_data.size) + 293 len 4] = approve(address rg1, uint256 rg2)
        mem[_507 + ceil32(return_data.size) + 361 len 64] = 0, address(s), Mask(224, 32, arg3) >> 32
        mem[_507 + ceil32(return_data.size) + 453 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, Mask(224, 32, address(s), Mask(224, 32, arg3) >> 32) >> 32, mem[_507 + ceil32(return_data.size) + 425 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            if not mem[96]:
                mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_507 + ceil32(return_data.size) + 365] = arg3
                mem[_507 + ceil32(return_data.size) + 397] = 0
                mem[_507 + ceil32(return_data.size) + 461] = msg.sender
                mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_507 + ceil32(return_data.size) + 429] = 160
                mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
                mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
                require ext_code.size(address(s))
                call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _2155 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
                require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
                _2195 = mem[_2155 + _507 + ceil32(return_data.size) + 361]
                mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2155 + _507 + ceil32(return_data.size) + 361])] = mem[_2155 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2155 + _507 + ceil32(return_data.size) + 361])]
                mem[(32 * _2195) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                mem[(32 * _2195) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _2195) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _2195) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
            mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 365] = arg3
            mem[_507 + ceil32(return_data.size) + 397] = 0
            mem[_507 + ceil32(return_data.size) + 461] = msg.sender
            mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_507 + ceil32(return_data.size) + 429] = 160
            mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
            mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(s))
            call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _2157 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
            _2196 = mem[_2157 + _507 + ceil32(return_data.size) + 361]
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2157 + _507 + ceil32(return_data.size) + 361])] = mem[_2157 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2157 + _507 + ceil32(return_data.size) + 361])]
            mem[(32 * _2196) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _2196) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _2196) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _2196) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        mem[64] = _507 + (2 * ceil32(return_data.size)) + 362
        mem[_507 + ceil32(return_data.size) + 361] = return_data.size
        mem[_507 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not return_data.size:
            mem[_507 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + (2 * ceil32(return_data.size)) + 366] = arg3
            mem[_507 + (2 * ceil32(return_data.size)) + 398] = 0
            mem[_507 + (2 * ceil32(return_data.size)) + 462] = msg.sender
            mem[_507 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
            mem[_507 + (2 * ceil32(return_data.size)) + 430] = 160
            mem[_507 + (2 * ceil32(return_data.size)) + 526] = mem[_507]
            mem[_507 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(s))
            call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + (4 * ceil32(return_data.size)) + 362
            require return_data.size >= 32
            _2159 = mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
            mem[_507 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]
            _2197 = mem[_2159 + _507 + (2 * ceil32(return_data.size)) + 362]
            mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_2159 + _507 + (2 * ceil32(return_data.size)) + 362])] = mem[_2159 + _507 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_2159 + _507 + (2 * ceil32(return_data.size)) + 362])]
            mem[(32 * _2197) + _507 + (4 * ceil32(return_data.size)) + 394] = 32
            mem[(32 * _2197) + _507 + (4 * ceil32(return_data.size)) + 426] = mem[_507 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _2197) + _507 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])] = mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])]
            return 32, mem[(32 * _2197) + _507 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_507 + (4 * ceil32(return_data.size)) + 362]) + 32], 
        require return_data.size >= 32
        if not mem[_507 + ceil32(return_data.size) + 393]:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[_507 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_507 + (2 * ceil32(return_data.size)) + 366] = arg3
        mem[_507 + (2 * ceil32(return_data.size)) + 398] = 0
        mem[_507 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_507 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_507 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_507 + (2 * ceil32(return_data.size)) + 526] = mem[_507]
        mem[_507 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
        require ext_code.size(address(s))
        call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_507]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_507 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _507 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _2161 = mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
        require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_507 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]
        _2198 = mem[_2161 + _507 + (2 * ceil32(return_data.size)) + 362]
        mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_2161 + _507 + (2 * ceil32(return_data.size)) + 362])] = mem[_2161 + _507 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_2161 + _507 + (2 * ceil32(return_data.size)) + 362])]
        mem[(32 * _2198) + _507 + (4 * ceil32(return_data.size)) + 394] = 32
        mem[(32 * _2198) + _507 + (4 * ceil32(return_data.size)) + 426] = mem[_507 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _2198) + _507 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])] = mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])]
        return 32, mem[(32 * _2198) + _507 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_507 + (4 * ceil32(return_data.size)) + 362]) + 32], 
    require return_data.size >= 32
    if not mem[_507 + 292]:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_507 + ceil32(return_data.size) + 365 len 28]
    mem[_507 + ceil32(return_data.size) + 297] = address(s)
    mem[_507 + ceil32(return_data.size) + 329] = arg3
    mem[_507 + ceil32(return_data.size) + 261] = 68
    mem[64] = _507 + ceil32(return_data.size) + 361
    mem[_507 + ceil32(return_data.size) + 293 len 4] = approve(address rg1, uint256 rg2)
    mem[_507 + ceil32(return_data.size) + 361 len 64] = 0, address(s), Mask(224, 32, arg3) >> 32
    mem[_507 + ceil32(return_data.size) + 453 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args arg3, Mask(224, 32, address(s), Mask(224, 32, arg3) >> 32) >> 32, mem[_507 + ceil32(return_data.size) + 425 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not mem[96]:
            mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_507 + ceil32(return_data.size) + 365] = arg3
            mem[_507 + ceil32(return_data.size) + 397] = 0
            mem[_507 + ceil32(return_data.size) + 461] = msg.sender
            mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_507 + ceil32(return_data.size) + 429] = 160
            mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
            mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
            require ext_code.size(address(s))
            call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _2163 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
            _2199 = mem[_2163 + _507 + ceil32(return_data.size) + 361]
            mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2163 + _507 + ceil32(return_data.size) + 361])] = mem[_2163 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2163 + _507 + ceil32(return_data.size) + 361])]
            mem[(32 * _2199) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _2199) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _2199) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _2199) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[_507 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_507 + ceil32(return_data.size) + 365] = arg3
        mem[_507 + ceil32(return_data.size) + 397] = 0
        mem[_507 + ceil32(return_data.size) + 461] = msg.sender
        mem[_507 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_507 + ceil32(return_data.size) + 429] = 160
        mem[_507 + ceil32(return_data.size) + 525] = mem[_507]
        mem[_507 + ceil32(return_data.size) + 557 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
        require ext_code.size(address(s))
        call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + ceil32(return_data.size) + 525 len (32 * mem[_507]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_507 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _507 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _2165 = mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
        require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_507 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _507 + ceil32(return_data.size) + 361]
        _2200 = mem[_2165 + _507 + ceil32(return_data.size) + 361]
        mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_2165 + _507 + ceil32(return_data.size) + 361])] = mem[_2165 + _507 + ceil32(return_data.size) + 393 len floor32(mem[_2165 + _507 + ceil32(return_data.size) + 361])]
        mem[(32 * _2200) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[(32 * _2200) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _2200) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
        return 32, mem[(32 * _2200) + _507 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_507 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
    mem[64] = _507 + (2 * ceil32(return_data.size)) + 362
    mem[_507 + ceil32(return_data.size) + 361] = return_data.size
    mem[_507 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    if not return_data.size:
        mem[_507 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_507 + (2 * ceil32(return_data.size)) + 366] = arg3
        mem[_507 + (2 * ceil32(return_data.size)) + 398] = 0
        mem[_507 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_507 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_507 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_507 + (2 * ceil32(return_data.size)) + 526] = mem[_507]
        mem[_507 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
        require ext_code.size(address(s))
        call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_507]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_507 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _507 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _2167 = mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
        require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_507 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]
        _2201 = mem[_2167 + _507 + (2 * ceil32(return_data.size)) + 362]
        mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_2167 + _507 + (2 * ceil32(return_data.size)) + 362])] = mem[_2167 + _507 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_2167 + _507 + (2 * ceil32(return_data.size)) + 362])]
        mem[(32 * _2201) + _507 + (4 * ceil32(return_data.size)) + 394] = 32
        mem[(32 * _2201) + _507 + (4 * ceil32(return_data.size)) + 426] = mem[_507 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _2201) + _507 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])] = mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])]
        return 32, mem[(32 * _2201) + _507 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_507 + (4 * ceil32(return_data.size)) + 362]) + 32], 
    require return_data.size >= 32
    if not mem[_507 + ceil32(return_data.size) + 393]:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    mem[_507 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_507 + (2 * ceil32(return_data.size)) + 366] = arg3
    mem[_507 + (2 * ceil32(return_data.size)) + 398] = 0
    mem[_507 + (2 * ceil32(return_data.size)) + 462] = msg.sender
    mem[_507 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
    mem[_507 + (2 * ceil32(return_data.size)) + 430] = 160
    mem[_507 + (2 * ceil32(return_data.size)) + 526] = mem[_507]
    mem[_507 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_507])] = mem[_507 + 32 len floor32(mem[_507])]
    require ext_code.size(address(s))
    call address(s).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_507 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_507]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_507 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _507 + (4 * ceil32(return_data.size)) + 362
    require return_data.size >= 32
    _2169 = mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
    require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
    mem[_507 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_507 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _507 + (2 * ceil32(return_data.size)) + 362]
    _2202 = mem[_2169 + _507 + (2 * ceil32(return_data.size)) + 362]
    mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_2169 + _507 + (2 * ceil32(return_data.size)) + 362])] = mem[_2169 + _507 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_2169 + _507 + (2 * ceil32(return_data.size)) + 362])]
    mem[(32 * _2202) + _507 + (4 * ceil32(return_data.size)) + 394] = 32
    mem[(32 * _2202) + _507 + (4 * ceil32(return_data.size)) + 426] = mem[_507 + (4 * ceil32(return_data.size)) + 362]
    mem[(32 * _2202) + _507 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])] = mem[_507 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_507 + (4 * ceil32(return_data.size)) + 362])]
    return 32, mem[(32 * _2202) + _507 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_507 + (4 * ceil32(return_data.size)) + 362]) + 32], 
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
    s = 96
    s = 0
    while idx < arg1.length:
        if not arg2:
            _1162 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_1162]:
                mem[_1162 + 32] = WBNBAddress
                if 1 < mem[_1162]:
                    mem[_1162 + 64] = BUSDAddress
                    mem[_1162 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[_1162 + 100] = arg4
                    mem[_1162 + 132] = 64
                    mem[_1162 + 164] = mem[_1162]
                    t = 0
                    while t < 32 * mem[_1162]:
                        mem[_1162 + t + 196] = mem[_1162 + t + 32]
                        t = t + 32
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
                    _2405 = mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32
                    require mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96] <= 4294967296 and mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96]) + 32 <= return_data.size
                    mem[_1162 + ceil32(return_data.size) + 96] = mem[mem[_1162 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1162 + 96]
                    _2420 = mem[_2405 + _1162 + 96]
                    t = 0
                    while t < 32 * _2420:
                        mem[_1162 + ceil32(return_data.size) + t + 128] = mem[_2405 + _1162 + t + 128]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _2420) + _1162 + ceil32(return_data.size) + 128
                    if idx:
                        if 1 < mem[96]:
                            if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                if mem[_1162 + ceil32(return_data.size) + 128] <= mem[160]:
                                    if 0 < mem[96]:
                                        if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                            if mem[_1162 + ceil32(return_data.size) + 128] >= mem[128]:
                                                idx = idx + 1
                                                s = _1162 + ceil32(return_data.size) + 96
                                                s = _1162
                                                s = s
                                                continue 
                                            if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                if 0 < mem[96]:
                                                    mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                                    if idx < arg1.length:
                                                        idx = idx + 1
                                                        s = _1162 + ceil32(return_data.size) + 96
                                                        s = _1162
                                                        s = address(cd[((32 * idx) + arg1 + 36)])
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
                                                        s = _1162
                                                        s = s
                                                        continue 
                                                    if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _1162 + ceil32(return_data.size) + 96
                                                                s = _1162
                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                    else:
                        if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                            if 1 < mem[96]:
                                mem[160] = mem[_1162 + ceil32(return_data.size) + 128]
                                if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                    if 0 < mem[96]:
                                        mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                        if idx < arg1.length:
                                            if 1 < mem[96]:
                                                if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                    if mem[_1162 + ceil32(return_data.size) + 128] <= mem[160]:
                                                        if 0 < mem[96]:
                                                            if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                                if mem[_1162 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                    idx = idx + 1
                                                                    s = _1162 + ceil32(return_data.size) + 96
                                                                    s = _1162
                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                                                                if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                                    if 0 < mem[96]:
                                                                        mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                                                        if idx < arg1.length:
                                                                            idx = idx + 1
                                                                            s = _1162 + ceil32(return_data.size) + 96
                                                                            s = _1162
                                                                            s = address(cd[((32 * idx) + arg1 + 36)])
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
                                                                            s = _1162
                                                                            s = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                                        if 0 < mem[_1162 + ceil32(return_data.size) + 96]:
                                                                            if 0 < mem[96]:
                                                                                mem[128] = mem[_1162 + ceil32(return_data.size) + 128]
                                                                                if idx < arg1.length:
                                                                                    idx = idx + 1
                                                                                    s = _1162 + ceil32(return_data.size) + 96
                                                                                    s = _1162
                                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
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
                        mem[_1165 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[_1165 + 100] = arg4
                        mem[_1165 + 132] = 64
                        mem[_1165 + 164] = mem[_1165]
                        t = 0
                        while t < 32 * mem[_1165]:
                            mem[_1165 + t + 196] = mem[_1165 + t + 32]
                            t = t + 32
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
                        _2403 = mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32
                        require mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                        require mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                        require mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96] <= 4294967296 and mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96]) + 32 <= return_data.size
                        mem[_1165 + ceil32(return_data.size) + 96] = mem[mem[_1165 + 96 len 4], Mask(224, 32, arg4) >> 32 + _1165 + 96]
                        _2419 = mem[_2403 + _1165 + 96]
                        t = 0
                        while t < 32 * _2419:
                            mem[_1165 + ceil32(return_data.size) + t + 128] = mem[_2403 + _1165 + t + 128]
                            t = t + 32
                            continue 
                        mem[64] = (32 * _2419) + _1165 + ceil32(return_data.size) + 128
                        if idx:
                            if 1 < mem[96]:
                                if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                    if mem[_1165 + ceil32(return_data.size) + 128] <= mem[160]:
                                        if 0 < mem[96]:
                                            if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                if mem[_1165 + ceil32(return_data.size) + 128] >= mem[128]:
                                                    idx = idx + 1
                                                    s = _1165 + ceil32(return_data.size) + 96
                                                    s = _1165
                                                    s = s
                                                    continue 
                                                if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                    if 0 < mem[96]:
                                                        mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                                        if idx < arg1.length:
                                                            idx = idx + 1
                                                            s = _1165 + ceil32(return_data.size) + 96
                                                            s = _1165
                                                            s = address(cd[((32 * idx) + arg1 + 36)])
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
                                                            s = _1165
                                                            s = s
                                                            continue 
                                                        if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                            if 0 < mem[96]:
                                                                mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                                                if idx < arg1.length:
                                                                    idx = idx + 1
                                                                    s = _1165 + ceil32(return_data.size) + 96
                                                                    s = _1165
                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                                    continue 
                        else:
                            if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                if 1 < mem[96]:
                                    mem[160] = mem[_1165 + ceil32(return_data.size) + 128]
                                    if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                        if 0 < mem[96]:
                                            mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                            if idx < arg1.length:
                                                if 1 < mem[96]:
                                                    if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                        if mem[_1165 + ceil32(return_data.size) + 128] <= mem[160]:
                                                            if 0 < mem[96]:
                                                                if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                                    if mem[_1165 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                        idx = idx + 1
                                                                        s = _1165 + ceil32(return_data.size) + 96
                                                                        s = _1165
                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
                                                                    if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                                        if 0 < mem[96]:
                                                                            mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                                                            if idx < arg1.length:
                                                                                idx = idx + 1
                                                                                s = _1165 + ceil32(return_data.size) + 96
                                                                                s = _1165
                                                                                s = address(cd[((32 * idx) + arg1 + 36)])
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
                                                                                s = _1165
                                                                                s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                continue 
                                                                            if 0 < mem[_1165 + ceil32(return_data.size) + 96]:
                                                                                if 0 < mem[96]:
                                                                                    mem[128] = mem[_1165 + ceil32(return_data.size) + 128]
                                                                                    if idx < arg1.length:
                                                                                        idx = idx + 1
                                                                                        s = _1165 + ceil32(return_data.size) + 96
                                                                                        s = _1165
                                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
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
                            mem[_1164 + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[_1164 + 132] = arg4
                            mem[_1164 + 164] = 64
                            mem[_1164 + 196] = mem[_1164]
                            t = 0
                            while t < 32 * mem[_1164]:
                                mem[_1164 + t + 228] = mem[_1164 + t + 32]
                                t = t + 32
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
                            _2401 = mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32
                            require mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                            require mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                            require mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128] <= 4294967296 and mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128]) + 32 <= return_data.size
                            mem[_1164 + ceil32(return_data.size) + 128] = mem[mem[_1164 + 128 len 4], Mask(224, 32, arg4) >> 32 + _1164 + 128]
                            _2418 = mem[_2401 + _1164 + 128]
                            t = 0
                            while t < 32 * _2418:
                                mem[_1164 + ceil32(return_data.size) + t + 160] = mem[_2401 + _1164 + t + 160]
                                t = t + 32
                                continue 
                            mem[64] = (32 * _2418) + _1164 + ceil32(return_data.size) + 160
                            if idx:
                                if 1 < mem[96]:
                                    if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                        if mem[_1164 + ceil32(return_data.size) + 160] <= mem[160]:
                                            if 0 < mem[96]:
                                                if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                    if mem[_1164 + ceil32(return_data.size) + 160] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _1164 + ceil32(return_data.size) + 128
                                                        s = _1164
                                                        s = s
                                                        continue 
                                                    if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _1164 + ceil32(return_data.size) + 128
                                                                s = _1164
                                                                s = address(cd[((32 * idx) + arg1 + 36)])
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
                                                                s = _1164
                                                                s = s
                                                                continue 
                                                            if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                if 0 < mem[96]:
                                                                    mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                                    if idx < arg1.length:
                                                                        idx = idx + 1
                                                                        s = _1164 + ceil32(return_data.size) + 128
                                                                        s = _1164
                                                                        s = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
                            else:
                                if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                    if 1 < mem[96]:
                                        mem[160] = mem[_1164 + ceil32(return_data.size) + 160]
                                        if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                            if 0 < mem[96]:
                                                mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                if idx < arg1.length:
                                                    if 1 < mem[96]:
                                                        if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                            if mem[_1164 + ceil32(return_data.size) + 160] <= mem[160]:
                                                                if 0 < mem[96]:
                                                                    if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                        if mem[_1164 + ceil32(return_data.size) + 160] >= mem[_1164 + ceil32(return_data.size) + 160]:
                                                                            idx = idx + 1
                                                                            s = _1164 + ceil32(return_data.size) + 128
                                                                            s = _1164
                                                                            s = address(cd[((32 * idx) + arg1 + 36)])
                                                                            continue 
                                                                        if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                            if 0 < mem[96]:
                                                                                mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                                                if idx < arg1.length:
                                                                                    idx = idx + 1
                                                                                    s = _1164 + ceil32(return_data.size) + 128
                                                                                    s = _1164
                                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
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
                                                                                    s = _1164
                                                                                    s = address(cd[((32 * idx) + arg1 + 36)])
                                                                                    continue 
                                                                                if 0 < mem[_1164 + ceil32(return_data.size) + 128]:
                                                                                    if 0 < mem[96]:
                                                                                        mem[128] = mem[_1164 + ceil32(return_data.size) + 160]
                                                                                        if idx < arg1.length:
                                                                                            idx = idx + 1
                                                                                            s = _1164 + ceil32(return_data.size) + 128
                                                                                            s = _1164
                                                                                            s = address(cd[((32 * idx) + arg1 + 36)])
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
    mem[_1163 + 164] = address(s)
    mem[_1163 + 196] = arg3
    mem[_1163 + 128] = 68
    mem[_1163 + 164 len 28] = address(s) << 64
    mem[_1163 + 160 len 4] = approve(address rg1, uint256 rg2)
    mem[_1163 + 228 len 64] = approve(address rg1, uint256 rg2), address(s) << 64, 0, Mask(224, 32, arg3) >> 32
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
                    require ext_code.size(address(s))
                    call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + 524 len (32 * mem[_1163]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1163 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1163 + ceil32(return_data.size) + 360
                    require return_data.size >= 32
                    _4763 = mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32
                    require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360] <= 4294967296 and mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]) + 32 <= return_data.size
                    mem[_1163 + ceil32(return_data.size) + 360] = mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]
                    _4811 = mem[_4763 + _1163 + 360]
                    mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_4763 + _1163 + 360])] = mem[_4763 + _1163 + 392 len floor32(mem[_4763 + _1163 + 360])]
                    require 0 < mem[_1163 + ceil32(return_data.size) + 360]
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 428] = msg.sender
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 460] = arg3 - mem[_1163 + ceil32(return_data.size) + 392]
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 392] = 68
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 428 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 424 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 492 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 460 len 28]
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 584 len 4] = mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 480 len 4]
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 460 len 28]) << 256, mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 556 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 492] = 32
                        mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 524] = mem[_1163 + ceil32(return_data.size) + 360]
                        mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 556 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                        return 32, mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 524 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 492] = return_data.size
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _4811) + _1163 + ceil32(return_data.size) + 524]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + 360]
                    mem[(32 * _4811) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _4811) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
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
                require ext_code.size(address(s))
                call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + 524 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _4765 = mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32
                require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360] <= 4294967296 and mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + 360] = mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]
                _4812 = mem[_4765 + _1163 + 360]
                mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_4765 + _1163 + 360])] = mem[_4765 + _1163 + 392 len floor32(mem[_4765 + _1163 + 360])]
                require 0 < mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 428] = msg.sender
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 460] = arg3 - mem[_1163 + ceil32(return_data.size) + 392]
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 392] = 68
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 428 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 424 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 492 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 460 len 28]
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 584 len 4] = mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 480 len 4]
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 460 len 28]) << 256, mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 556 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 492] = 32
                    mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 524] = mem[_1163 + ceil32(return_data.size) + 360]
                    mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 556 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 524 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 492] = return_data.size
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _4812) + _1163 + ceil32(return_data.size) + 524]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4812) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _4812) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
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
                require ext_code.size(address(s))
                call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _4767 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
                require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
                _4813 = mem[_4767 + _1163 + ceil32(return_data.size) + 361]
                mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4767 + _1163 + ceil32(return_data.size) + 361])] = mem[_4767 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4767 + _1163 + ceil32(return_data.size) + 361])]
                require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                    mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return 32, mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
                mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if not return_data.size:
                        mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                        mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                        return memory
                          from (32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                    require return_data.size >= 32
                    if mem[(32 * _4813) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                        mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                        mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                        return memory
                          from (32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
                mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
                mem[(32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
                revert with memory
                  from (32 * _4813) + _1163 + (4 * ceil32(return_data.size)) + 494
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
            require ext_code.size(address(s))
            call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _4769 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
            _4814 = mem[_4769 + _1163 + ceil32(return_data.size) + 361]
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4769 + _1163 + ceil32(return_data.size) + 361])] = mem[_4769 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4769 + _1163 + ceil32(return_data.size) + 361])]
            require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
            mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4814) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                    mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4814) + _1163 + (4 * ceil32(return_data.size)) + 494
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
                require ext_code.size(address(s))
                call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + 524 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _4771 = mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32
                require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360] <= 4294967296 and mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + 360] = mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]
                _4815 = mem[_4771 + _1163 + 360]
                mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_4771 + _1163 + 360])] = mem[_4771 + _1163 + 392 len floor32(mem[_4771 + _1163 + 360])]
                require 0 < mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 428] = msg.sender
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 460] = arg3 - mem[_1163 + ceil32(return_data.size) + 392]
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 392] = 68
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 428 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 424 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 492 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 460 len 28]
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 584 len 4] = mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 480 len 4]
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 460 len 28]) << 256, mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 556 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 492] = 32
                    mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 524] = mem[_1163 + ceil32(return_data.size) + 360]
                    mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 556 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 524 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 492] = return_data.size
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _4815) + _1163 + ceil32(return_data.size) + 524]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4815) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _4815) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
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
            require ext_code.size(address(s))
            call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + 524 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + 360
            require return_data.size >= 32
            _4773 = mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360] <= 4294967296 and mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + 360] = mem[mem[_1163 + 360 len 4], Mask(224, 32, arg4) >> 32 + _1163 + 360]
            _4816 = mem[_4773 + _1163 + 360]
            mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_4773 + _1163 + 360])] = mem[_4773 + _1163 + 392 len floor32(mem[_4773 + _1163 + 360])]
            require 0 < mem[_1163 + ceil32(return_data.size) + 360]
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 428] = msg.sender
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 460] = arg3 - mem[_1163 + ceil32(return_data.size) + 392]
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 392] = 68
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 428 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 424 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 492 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 460 len 28]
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 584 len 4] = mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 480 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 460 len 28]) << 256, mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 556 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 492] = 32
                mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 524] = mem[_1163 + ceil32(return_data.size) + 360]
                mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 556 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 524 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 492] = return_data.size
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _4816) + _1163 + ceil32(return_data.size) + 524]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + 360]
            mem[(32 * _4816) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + 360])] = mem[_1163 + ceil32(return_data.size) + 392 len floor32(mem[_1163 + ceil32(return_data.size) + 360])]
            return 32, mem[(32 * _4816) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + 360]) + 32], 
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
            require ext_code.size(address(s))
            call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _4775 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
            _4817 = mem[_4775 + _1163 + ceil32(return_data.size) + 361]
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4775 + _1163 + ceil32(return_data.size) + 361])] = mem[_4775 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4775 + _1163 + ceil32(return_data.size) + 361])]
            require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
            mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4817) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                    mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4817) + _1163 + (4 * ceil32(return_data.size)) + 494
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
        require ext_code.size(address(s))
        call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _4777 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
        require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
        _4818 = mem[_4777 + _1163 + ceil32(return_data.size) + 361]
        mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4777 + _1163 + ceil32(return_data.size) + 361])] = mem[_4777 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4777 + _1163 + ceil32(return_data.size) + 361])]
        require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
        call arg2 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
            mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
        mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return memory
                  from (32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            if mem[(32 * _4818) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return memory
                  from (32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
        mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
        mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
        mem[(32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4818) + _1163 + (4 * ceil32(return_data.size)) + 494
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
                require ext_code.size(address(s))
                call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _4779 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
                require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
                _4819 = mem[_4779 + _1163 + ceil32(return_data.size) + 361]
                mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4779 + _1163 + ceil32(return_data.size) + 361])] = mem[_4779 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4779 + _1163 + ceil32(return_data.size) + 361])]
                require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                    mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return 32, mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
                mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if not return_data.size:
                        mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                        mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                        return memory
                          from (32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                    require return_data.size >= 32
                    if mem[(32 * _4819) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                        mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                        mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                        return memory
                          from (32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
                mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
                mem[(32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
                revert with memory
                  from (32 * _4819) + _1163 + (4 * ceil32(return_data.size)) + 494
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
            require ext_code.size(address(s))
            call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _4781 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
            _4820 = mem[_4781 + _1163 + ceil32(return_data.size) + 361]
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4781 + _1163 + ceil32(return_data.size) + 361])] = mem[_4781 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4781 + _1163 + ceil32(return_data.size) + 361])]
            require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
            mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4820) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                    mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4820) + _1163 + (4 * ceil32(return_data.size)) + 494
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
            require ext_code.size(address(s))
            call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + (4 * ceil32(return_data.size)) + 362
            require return_data.size >= 32
            _4783 = mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
            mem[_1163 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]
            _4821 = mem[_4783 + _1163 + (2 * ceil32(return_data.size)) + 362]
            mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_4783 + _1163 + (2 * ceil32(return_data.size)) + 362])] = mem[_4783 + _1163 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_4783 + _1163 + (2 * ceil32(return_data.size)) + 362])]
            require 0 < mem[_1163 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 430] = msg.sender
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 462] = arg3 - mem[_1163 + (4 * ceil32(return_data.size)) + 394]
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 394] = 68
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 430 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 426 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 494 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 586 len 4] = mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 482 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]) << 256, mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 558 len 4]
            if not return_data.size:
                if ext_call.success:
                    if not mem[96]:
                        mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                        mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                        return memory
                          from (32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                    require mem[96] >= 32
                    if mem[128]:
                        mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                        mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                        mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                        return memory
                          from (32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 494
                           len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
                mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
                mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
                revert with memory
                  from (32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (5 * ceil32(return_data.size)) + 100
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 494] = return_data.size
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                    mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + 526]:
                    mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                    mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 32
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 31
            mem[(32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4821) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
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
        require ext_code.size(address(s))
        call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_1163]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1163 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1163 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _4785 = mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32
        require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_1163 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]
        _4822 = mem[_4785 + _1163 + (2 * ceil32(return_data.size)) + 362]
        mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_4785 + _1163 + (2 * ceil32(return_data.size)) + 362])] = mem[_4785 + _1163 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_4785 + _1163 + (2 * ceil32(return_data.size)) + 362])]
        require 0 < mem[_1163 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 430] = msg.sender
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 462] = arg3 - mem[_1163 + (4 * ceil32(return_data.size)) + 394]
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 394] = 68
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 430 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 426 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 494 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 586 len 4] = mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 482 len 4]
        call arg2 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]) << 256, mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 558 len 4]
        if not return_data.size:
            if ext_call.success:
                if not mem[96]:
                    mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                require mem[96] >= 32
                if mem[128]:
                    mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 494
               len (5 * ceil32(return_data.size)) + 100
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 494] = return_data.size
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            if mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + 526]:
                mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 32
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 31
        mem[(32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4822) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
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
            require ext_code.size(address(s))
            call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _4787 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
            _4823 = mem[_4787 + _1163 + ceil32(return_data.size) + 361]
            mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4787 + _1163 + ceil32(return_data.size) + 361])] = mem[_4787 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4787 + _1163 + ceil32(return_data.size) + 361])]
            require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
            call arg2 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
                mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
            mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                if mem[(32 * _4823) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                    mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                    mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                    return memory
                      from (32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4823) + _1163 + (4 * ceil32(return_data.size)) + 494
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
        require ext_code.size(address(s))
        call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + ceil32(return_data.size) + 525 len (32 * mem[_1163]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1163 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _4789 = mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32
        require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_1163 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg4) >> 32 + _1163 + ceil32(return_data.size) + 361]
        _4824 = mem[_4789 + _1163 + ceil32(return_data.size) + 361]
        mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_4789 + _1163 + ceil32(return_data.size) + 361])] = mem[_4789 + _1163 + ceil32(return_data.size) + 393 len floor32(mem[_4789 + _1163 + ceil32(return_data.size) + 361])]
        require 0 < mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429] = msg.sender
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461] = arg3 - mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393]
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 68
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 585 len 4] = mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 481 len 4]
        call arg2 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 461 len 28]) << 256, mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = 32
            mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 557 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 493] = return_data.size
        mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return memory
                  from (32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            if mem[(32 * _4824) + _1163 + ceil32(return_data.size) + ceil32(return_data.size) + 525]:
                mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return memory
                  from (32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64
        mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
        mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
        mem[(32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4824) + _1163 + (4 * ceil32(return_data.size)) + 494
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
        require ext_code.size(address(s))
        call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_1163]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1163 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1163 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _4791 = mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32
        require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_1163 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]
        _4825 = mem[_4791 + _1163 + (2 * ceil32(return_data.size)) + 362]
        mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_4791 + _1163 + (2 * ceil32(return_data.size)) + 362])] = mem[_4791 + _1163 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_4791 + _1163 + (2 * ceil32(return_data.size)) + 362])]
        require 0 < mem[_1163 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 430] = msg.sender
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 462] = arg3 - mem[_1163 + (4 * ceil32(return_data.size)) + 394]
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 394] = 68
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 430 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 426 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 494 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 586 len 4] = mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 482 len 4]
        call arg2 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]) << 256, mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 558 len 4]
        if not return_data.size:
            if ext_call.success:
                if not mem[96]:
                    mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
                require mem[96] >= 32
                if mem[128]:
                    mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                    mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                    mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                    return memory
                      from (32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 494
                       len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
            mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
            mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
            revert with memory
              from (32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 494
               len (5 * ceil32(return_data.size)) + 100
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 494] = return_data.size
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            require return_data.size >= 32
            if mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + 526]:
                mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
                mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 32
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 31
        mem[(32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4825) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
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
    require ext_code.size(address(s))
    call address(s).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg4, arg3, 160, msg.sender, block.timestamp + 60, mem[_1163 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_1163]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1163 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _1163 + (4 * ceil32(return_data.size)) + 362
    require return_data.size >= 32
    _4793 = mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32
    require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
    mem[_1163 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_1163 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg4) >> 32 + _1163 + (2 * ceil32(return_data.size)) + 362]
    _4826 = mem[_4793 + _1163 + (2 * ceil32(return_data.size)) + 362]
    mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_4793 + _1163 + (2 * ceil32(return_data.size)) + 362])] = mem[_4793 + _1163 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_4793 + _1163 + (2 * ceil32(return_data.size)) + 362])]
    require 0 < mem[_1163 + (4 * ceil32(return_data.size)) + 362]
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 430] = msg.sender
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 462] = arg3 - mem[_1163 + (4 * ceil32(return_data.size)) + 394]
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 394] = 68
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 430 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 426 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 494 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 586 len 4] = mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 482 len 4]
    call arg2 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 462 len 28]) << 256, mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 558 len 4]
    if not return_data.size:
        if ext_call.success:
            if not mem[96]:
                mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
            require mem[96] >= 32
            if mem[128]:
                mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 494] = 32
                mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 526] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
                mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 558 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
                return memory
                  from (32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 494
                   len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
        mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 498] = 32
        mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 530] = 31
        mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 562] = 'TransferHelper: TRANSFER_FAILED'
        revert with memory
          from (32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 494
           len (5 * ceil32(return_data.size)) + 100
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 494] = return_data.size
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        if not return_data.size:
            mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
            mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
            return memory
              from (32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
               len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
        require return_data.size >= 32
        if mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + 526]:
            mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 32
            mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = mem[_1163 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 559 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])] = mem[_1163 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_1163 + (4 * ceil32(return_data.size)) + 362])]
            return memory
              from (32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
               len (32 * mem[_1163 + (4 * ceil32(return_data.size)) + 362]) + (5 * ceil32(return_data.size)) + 64
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 32
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 31
    mem[(32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 'TransferHelper: TRANSFER_FAILED'
    revert with memory
      from (32 * _4826) + _1163 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 495
       len (5 * ceil32(return_data.size)) + 100
}



}
