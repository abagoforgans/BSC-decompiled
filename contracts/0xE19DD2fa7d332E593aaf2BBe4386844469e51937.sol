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
            _432 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_432]
            mem[_432 + 32] = BUSDAddress
            require 1 < mem[_432]
            mem[_432 + 64] = WBNBAddress
            if idx:
                mem[_432 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_432 + 100] = arg2
                mem[_432 + 132] = 64
                mem[_432 + 164] = mem[_432]
                s = 0
                while s < 32 * mem[_432]:
                    mem[_432 + s + 196] = mem[_432 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[_432 + 164 len (32 * mem[_432]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_432 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _432 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1294 = mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + _432 + 96] <= 4294967296 and mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + _432 + 96]) + 32 <= return_data.size
                mem[_432 + ceil32(return_data.size) + 96] = mem[mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + _432 + 96]
                _1322 = mem[_1294 + _432 + 96]
                s = 0
                while s < 32 * _1322:
                    mem[_432 + ceil32(return_data.size) + s + 128] = mem[_1294 + _432 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1322) + _432 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_432 + ceil32(return_data.size) + 96]
                if mem[_432 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_432 + ceil32(return_data.size) + 96]
                    if mem[_432 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_432 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_432 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _432 + ceil32(return_data.size) + 96
                    t = _432
                    t = t
                    continue 
                require 1 < mem[_432 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_432 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_432 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_432 + 100] = arg2
                mem[_432 + 132] = 64
                mem[_432 + 164] = mem[_432]
                s = 0
                while s < 32 * mem[_432]:
                    mem[_432 + s + 196] = mem[_432 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[_432 + 164 len (32 * mem[_432]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_432 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _432 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1298 = mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + _432 + 96] <= 4294967296 and mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + _432 + 96]) + 32 <= return_data.size
                mem[_432 + ceil32(return_data.size) + 96] = mem[mem[_432 + 96 len 4], Mask(224, 32, arg2) >> 32 + _432 + 96]
                _1324 = mem[_1298 + _432 + 96]
                s = 0
                while s < 32 * _1324:
                    mem[_432 + ceil32(return_data.size) + s + 128] = mem[_1298 + _432 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1324) + _432 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_432 + ceil32(return_data.size) + 96]
                if mem[_432 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_432 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_432 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_432 + ceil32(return_data.size) + 96]
            if mem[_432 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_432 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_432 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _432 + ceil32(return_data.size) + 96
            t = _432
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        _431 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_431]
        mem[_431 + 32] = WBNBAddress
        require 1 < mem[_431]
        mem[_431 + 64] = 0
        if idx:
            mem[_431 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_431 + 100] = arg2
            mem[_431 + 132] = 64
            mem[_431 + 164] = mem[_431]
            s = 0
            while s < 32 * mem[_431]:
                mem[_431 + s + 196] = mem[_431 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[_431 + 164 len (32 * mem[_431]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_431 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _431 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1302 = mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32
            require mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + _431 + 96] <= 4294967296 and mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + _431 + 96]) + 32 <= return_data.size
            mem[_431 + ceil32(return_data.size) + 96] = mem[mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + _431 + 96]
            _1326 = mem[_1302 + _431 + 96]
            s = 0
            while s < 32 * _1326:
                mem[_431 + ceil32(return_data.size) + s + 128] = mem[_1302 + _431 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _1326) + _431 + ceil32(return_data.size) + 128
            require 1 < mem[96]
            require 1 < mem[_431 + ceil32(return_data.size) + 96]
            if mem[_431 + ceil32(return_data.size) + 160] <= mem[160]:
                require 0 < mem[96]
                require 1 < mem[_431 + ceil32(return_data.size) + 96]
                if mem[_431 + ceil32(return_data.size) + 160] < mem[128]:
                    require 1 < mem[_431 + ceil32(return_data.size) + 96]
                    require 0 < mem[96]
                    mem[128] = mem[_431 + ceil32(return_data.size) + 160]
                idx = idx + 1
                s = _431 + ceil32(return_data.size) + 96
                t = _431
                t = t
                continue 
            require 1 < mem[_431 + ceil32(return_data.size) + 96]
            require 1 < mem[96]
            mem[160] = mem[_431 + ceil32(return_data.size) + 160]
            require idx < arg1.length
        else:
            require 0 < mem[s]
            require 1 < mem[96]
            mem[160] = mem[s + 32]
            require 0 < mem[s]
            require 0 < mem[96]
            mem[128] = mem[s + 32]
            require idx < arg1.length
            mem[_431 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_431 + 100] = arg2
            mem[_431 + 132] = 64
            mem[_431 + 164] = mem[_431]
            s = 0
            while s < 32 * mem[_431]:
                mem[_431 + s + 196] = mem[_431 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[_431 + 164 len (32 * mem[_431]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_431 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _431 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1306 = mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32
            require mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + _431 + 96] <= 4294967296 and mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + _431 + 96]) + 32 <= return_data.size
            mem[_431 + ceil32(return_data.size) + 96] = mem[mem[_431 + 96 len 4], Mask(224, 32, arg2) >> 32 + _431 + 96]
            _1328 = mem[_1306 + _431 + 96]
            s = 0
            while s < 32 * _1328:
                mem[_431 + ceil32(return_data.size) + s + 128] = mem[_1306 + _431 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _1328) + _431 + ceil32(return_data.size) + 128
            require 1 < mem[96]
            require 1 < mem[_431 + ceil32(return_data.size) + 96]
            if mem[_431 + ceil32(return_data.size) + 160] > mem[160]:
                require 1 < mem[_431 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_431 + ceil32(return_data.size) + 160]
                require idx < arg1.length
        require 0 < mem[96]
        require 1 < mem[_431 + ceil32(return_data.size) + 96]
        if mem[_431 + ceil32(return_data.size) + 160] < mem[128]:
            require 1 < mem[_431 + ceil32(return_data.size) + 96]
            require 0 < mem[96]
            mem[128] = mem[_431 + ceil32(return_data.size) + 160]
        idx = idx + 1
        s = _431 + ceil32(return_data.size) + 96
        t = _431
        t = address(cd[((32 * idx) + arg1 + 36)])
        continue 
    _430 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_430]
    mem[_430 + 32] = BUSDAddress
    require 1 < mem[_430]
    mem[_430 + 64] = WBNBAddress
    require 1 < mem[96]
    if mem[160] <= 0:
        mem[_430 + 96] = 32
        mem[_430 + 128] = mem[96]
        mem[_430 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return memory
          from mem[64]
           len (32 * mem[96]) + _430 + -mem[64] + 160
    if address(t) != 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        mem[_430 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
        mem[_430 + 100] = arg2
        mem[_430 + 132] = 0
        mem[_430 + 196] = msg.sender
        mem[_430 + 228] = block.timestamp + 60
        mem[_430 + 164] = 160
        mem[_430 + 260] = mem[_430]
        mem[_430 + 292 len floor32(mem[_430])] = mem[_430 + 32 len floor32(mem[_430])]
        require ext_code.size(address(t))
        call address(t).0x5d616c5b with:
             gas gas_remaining wei
            args arg2, 0, 160, msg.sender, block.timestamp + 60, mem[_430 + 260 len (32 * mem[_430]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_430 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _430 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _1290 = mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + _430 + 96] <= 4294967296 and mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + _430 + 96]) + 32 <= return_data.size
        mem[_430 + ceil32(return_data.size) + 96] = mem[mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + _430 + 96]
        _1320 = mem[_1290 + _430 + 96]
        mem[_430 + ceil32(return_data.size) + 128 len floor32(mem[_1290 + _430 + 96])] = mem[_1290 + _430 + 128 len floor32(mem[_1290 + _430 + 96])]
        mem[(32 * _1320) + _430 + ceil32(return_data.size) + 128] = 32
        mem[(32 * _1320) + _430 + ceil32(return_data.size) + 160] = mem[_430 + ceil32(return_data.size) + 96]
        mem[(32 * _1320) + _430 + ceil32(return_data.size) + 192 len floor32(mem[_430 + ceil32(return_data.size) + 96])] = mem[_430 + ceil32(return_data.size) + 128 len floor32(mem[_430 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _1320) + _430 + ceil32(return_data.size) + 160 len (32 * mem[_430 + ceil32(return_data.size) + 96]) + 32]
    mem[_430 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[_430 + 100] = arg2
    mem[_430 + 132] = 0
    mem[_430 + 196] = msg.sender
    mem[_430 + 228] = block.timestamp + 60
    mem[_430 + 164] = 160
    mem[_430 + 260] = mem[_430]
    mem[_430 + 292 len floor32(mem[_430])] = mem[_430 + 32 len floor32(mem[_430])]
    require ext_code.size(address(t))
    call address(t).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, msg.sender, block.timestamp + 60, mem[_430 + 260 len (32 * mem[_430]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_430 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _430 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    _1292 = mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + _430 + 96] <= 4294967296 and mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + _430 + 96]) + 32 <= return_data.size
    mem[_430 + ceil32(return_data.size) + 96] = mem[mem[_430 + 96 len 4], Mask(224, 32, arg2) >> 32 + _430 + 96]
    _1321 = mem[_1292 + _430 + 96]
    mem[_430 + ceil32(return_data.size) + 128 len floor32(mem[_1292 + _430 + 96])] = mem[_1292 + _430 + 128 len floor32(mem[_1292 + _430 + 96])]
    mem[(32 * _1321) + _430 + ceil32(return_data.size) + 128] = 32
    mem[(32 * _1321) + _430 + ceil32(return_data.size) + 160] = mem[_430 + ceil32(return_data.size) + 96]
    mem[(32 * _1321) + _430 + ceil32(return_data.size) + 192 len floor32(mem[_430 + ceil32(return_data.size) + 96])] = mem[_430 + ceil32(return_data.size) + 128 len floor32(mem[_430 + ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _1321) + _430 + ceil32(return_data.size) + 160 len (32 * mem[_430 + ceil32(return_data.size) + 96]) + 32]
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
        _242 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_242]
        mem[_242 + 32] = WBNBAddress
        require 1 < mem[_242]
        mem[_242 + 64] = BUSDAddress
        if idx:
            mem[_242 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[_242 + 100] = arg2
            mem[_242 + 132] = 64
            mem[_242 + 164] = mem[_242]
            s = 0
            while s < 32 * mem[_242]:
                mem[_242 + s + 196] = mem[_242 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[_242 + 164 len (32 * mem[_242]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_242 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _242 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _731 = mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32
            require mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + _242 + 96] <= 4294967296 and mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + _242 + 96]) + 32 <= return_data.size
            mem[_242 + ceil32(return_data.size) + 96] = mem[mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + _242 + 96]
            _746 = mem[_731 + _242 + 96]
            s = 0
            while s < 32 * _746:
                mem[_242 + ceil32(return_data.size) + s + 128] = mem[_731 + _242 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _746) + _242 + ceil32(return_data.size) + 128
            if 1 < mem[96]:
                if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                    if mem[_242 + ceil32(return_data.size) + 128] <= mem[160]:
                        if 0 < mem[96]:
                            if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                if mem[_242 + ceil32(return_data.size) + 128] >= mem[128]:
                                    idx = idx + 1
                                    s = _242 + ceil32(return_data.size) + 96
                                    t = _242
                                    t = t
                                    continue 
                                if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                    if 0 < mem[96]:
                                        mem[128] = mem[_242 + ceil32(return_data.size) + 128]
                                        if idx < arg1.length:
                                            idx = idx + 1
                                            s = _242 + ceil32(return_data.size) + 96
                                            t = _242
                                            t = address(cd[((32 * idx) + arg1 + 36)])
                                            continue 
                    else:
                        if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                            if 1 < mem[96]:
                                mem[160] = mem[_242 + ceil32(return_data.size) + 128]
                                if 0 < mem[96]:
                                    if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                        if mem[_242 + ceil32(return_data.size) + 128] >= mem[128]:
                                            idx = idx + 1
                                            s = _242 + ceil32(return_data.size) + 96
                                            t = _242
                                            t = t
                                            continue 
                                        if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                            if 0 < mem[96]:
                                                mem[128] = mem[_242 + ceil32(return_data.size) + 128]
                                                if idx < arg1.length:
                                                    idx = idx + 1
                                                    s = _242 + ceil32(return_data.size) + 96
                                                    t = _242
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
                                mem[_242 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[_242 + 100] = arg2
                                mem[_242 + 132] = 64
                                mem[_242 + 164] = mem[_242]
                                s = 0
                                while s < 32 * mem[_242]:
                                    mem[_242 + s + 196] = mem[_242 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, 64, mem[_242 + 164 len (32 * mem[_242]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_242 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _242 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _735 = mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32
                                require mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + _242 + 96] <= 4294967296 and mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + _242 + 96]) + 32 <= return_data.size
                                mem[_242 + ceil32(return_data.size) + 96] = mem[mem[_242 + 96 len 4], Mask(224, 32, arg2) >> 32 + _242 + 96]
                                _748 = mem[_735 + _242 + 96]
                                s = 0
                                while s < 32 * _748:
                                    mem[_242 + ceil32(return_data.size) + s + 128] = mem[_735 + _242 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _748) + _242 + ceil32(return_data.size) + 128
                                if 1 < mem[96]:
                                    if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                        if mem[_242 + ceil32(return_data.size) + 128] <= mem[160]:
                                            if 0 < mem[96]:
                                                if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                                    if mem[_242 + ceil32(return_data.size) + 128] >= mem[128]:
                                                        idx = idx + 1
                                                        s = _242 + ceil32(return_data.size) + 96
                                                        t = _242
                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                        continue 
                                                    if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                                        if 0 < mem[96]:
                                                            mem[128] = mem[_242 + ceil32(return_data.size) + 128]
                                                            if idx < arg1.length:
                                                                idx = idx + 1
                                                                s = _242 + ceil32(return_data.size) + 96
                                                                t = _242
                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                                        else:
                                            if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                                if 1 < mem[96]:
                                                    mem[160] = mem[_242 + ceil32(return_data.size) + 128]
                                                    if 0 < mem[96]:
                                                        if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                                            if mem[_242 + ceil32(return_data.size) + 128] >= mem[128]:
                                                                idx = idx + 1
                                                                s = _242 + ceil32(return_data.size) + 96
                                                                t = _242
                                                                t = address(cd[((32 * idx) + arg1 + 36)])
                                                                continue 
                                                            if 0 < mem[_242 + ceil32(return_data.size) + 96]:
                                                                if 0 < mem[96]:
                                                                    mem[128] = mem[_242 + ceil32(return_data.size) + 128]
                                                                    if idx < arg1.length:
                                                                        idx = idx + 1
                                                                        s = _242 + ceil32(return_data.size) + 96
                                                                        t = _242
                                                                        t = address(cd[((32 * idx) + arg1 + 36)])
                                                                        continue 
        revert
    _241 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_241]
    mem[_241 + 32] = WBNBAddress
    require 1 < mem[_241]
    mem[_241 + 64] = BUSDAddress
    if address(t) != 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        mem[_241 + 96] = 0x8332a96300000000000000000000000000000000000000000000000000000000
        mem[_241 + 100] = arg2
        mem[_241 + 164] = msg.sender
        mem[_241 + 196] = block.timestamp + 60
        mem[_241 + 132] = 128
        mem[_241 + 228] = mem[_241]
        mem[_241 + 260 len floor32(mem[_241])] = mem[_241 + 32 len floor32(mem[_241])]
        require ext_code.size(address(t))
        call address(t).0x8332a963 with:
           value msg.value wei
             gas gas_remaining wei
            args arg2, 128, msg.sender, block.timestamp + 60, mem[_241 + 228 len (32 * mem[_241]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_241 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _241 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _725 = mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32
        require mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + _241 + 96] <= 4294967296 and mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + _241 + 96]) + 32 <= return_data.size
        mem[_241 + ceil32(return_data.size) + 96] = mem[mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + _241 + 96]
        _743 = mem[_725 + _241 + 96]
        mem[_241 + ceil32(return_data.size) + 128 len floor32(mem[_725 + _241 + 96])] = mem[_725 + _241 + 128 len floor32(mem[_725 + _241 + 96])]
        require 0 < mem[_241 + ceil32(return_data.size) + 96]
        _1163 = mem[_241 + ceil32(return_data.size) + 128]
        mem[(32 * _743) + _241 + ceil32(return_data.size) + 128] = 0
        mem[(32 * _743) + _241 + ceil32(return_data.size) + 160 len 0] = None
        call msg.sender with:
           value msg.value - _1163 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _743) + _241 + ceil32(return_data.size) + 263 len 29]
            mem[(32 * _743) + _241 + ceil32(return_data.size) + 160] = 32
            mem[(32 * _743) + _241 + ceil32(return_data.size) + 192] = mem[_241 + ceil32(return_data.size) + 96]
            mem[(32 * _743) + _241 + ceil32(return_data.size) + 224 len floor32(mem[_241 + ceil32(return_data.size) + 96])] = mem[_241 + ceil32(return_data.size) + 128 len floor32(mem[_241 + ceil32(return_data.size) + 96])]
            return 32, mem[(32 * _743) + _241 + ceil32(return_data.size) + 192 len (32 * mem[_241 + ceil32(return_data.size) + 96]) + 32]
        mem[(32 * _743) + _241 + ceil32(return_data.size) + 160] = return_data.size
        mem[(32 * _743) + _241 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[(32 * _743) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
        mem[(32 * _743) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 32
        mem[(32 * _743) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[_241 + ceil32(return_data.size) + 96]
        mem[(32 * _743) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 225 len floor32(mem[_241 + ceil32(return_data.size) + 96])] = mem[_241 + ceil32(return_data.size) + 128 len floor32(mem[_241 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _743) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len (32 * mem[_241 + ceil32(return_data.size) + 96]) + 32], 
    mem[_241 + 96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[_241 + 100] = arg2
    mem[_241 + 164] = msg.sender
    mem[_241 + 196] = block.timestamp + 60
    mem[_241 + 132] = 128
    mem[_241 + 228] = mem[_241]
    mem[_241 + 260 len floor32(mem[_241])] = mem[_241 + 32 len floor32(mem[_241])]
    require ext_code.size(address(t))
    call address(t).swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, 128, msg.sender, block.timestamp + 60, mem[_241 + 228 len (32 * mem[_241]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_241 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _241 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    _727 = mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + _241 + 96] <= 4294967296 and mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + _241 + 96]) + 32 <= return_data.size
    mem[_241 + ceil32(return_data.size) + 96] = mem[mem[_241 + 96 len 4], Mask(224, 32, arg2) >> 32 + _241 + 96]
    _744 = mem[_727 + _241 + 96]
    mem[_241 + ceil32(return_data.size) + 128 len floor32(mem[_727 + _241 + 96])] = mem[_727 + _241 + 128 len floor32(mem[_727 + _241 + 96])]
    require 0 < mem[_241 + ceil32(return_data.size) + 96]
    _1164 = mem[_241 + ceil32(return_data.size) + 128]
    mem[(32 * _744) + _241 + ceil32(return_data.size) + 128] = 0
    mem[(32 * _744) + _241 + ceil32(return_data.size) + 160 len 0] = None
    call msg.sender with:
       value msg.value - _1164 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[(32 * _744) + _241 + ceil32(return_data.size) + 263 len 29]
        mem[(32 * _744) + _241 + ceil32(return_data.size) + 160] = 32
        mem[(32 * _744) + _241 + ceil32(return_data.size) + 192] = mem[_241 + ceil32(return_data.size) + 96]
        mem[(32 * _744) + _241 + ceil32(return_data.size) + 224 len floor32(mem[_241 + ceil32(return_data.size) + 96])] = mem[_241 + ceil32(return_data.size) + 128 len floor32(mem[_241 + ceil32(return_data.size) + 96])]
        return 32, mem[(32 * _744) + _241 + ceil32(return_data.size) + 192 len (32 * mem[_241 + ceil32(return_data.size) + 96]) + 32]
    mem[(32 * _744) + _241 + ceil32(return_data.size) + 160] = return_data.size
    mem[(32 * _744) + _241 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    0x735472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                    mem[(32 * _744) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
    mem[(32 * _744) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 32
    mem[(32 * _744) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[_241 + ceil32(return_data.size) + 96]
    mem[(32 * _744) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 225 len floor32(mem[_241 + ceil32(return_data.size) + 96])] = mem[_241 + ceil32(return_data.size) + 128 len floor32(mem[_241 + ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _744) + _241 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len (32 * mem[_241 + ceil32(return_data.size) + 96]) + 32], 
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
            _986 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_986]
            mem[_986 + 32] = WBNBAddress
            require 1 < mem[_986]
            mem[_986 + 64] = arg2
            if idx:
                mem[_986 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_986 + 100] = arg3
                mem[_986 + 132] = 64
                mem[_986 + 164] = mem[_986]
                s = 0
                while s < 32 * mem[_986]:
                    mem[_986 + s + 196] = mem[_986 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_986 + 164 len (32 * mem[_986]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_986 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _986 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2605 = mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + _986 + 96] <= 4294967296 and mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + _986 + 96]) + 32 <= return_data.size
                mem[_986 + ceil32(return_data.size) + 96] = mem[mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + _986 + 96]
                _2641 = mem[_2605 + _986 + 96]
                s = 0
                while s < 32 * _2641:
                    mem[_986 + ceil32(return_data.size) + s + 128] = mem[_2605 + _986 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2641) + _986 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_986 + ceil32(return_data.size) + 96]
                if mem[_986 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_986 + ceil32(return_data.size) + 96]
                    if mem[_986 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_986 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_986 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _986 + ceil32(return_data.size) + 96
                    t = _986
                    t = t
                    continue 
                require 1 < mem[_986 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_986 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_986 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_986 + 100] = arg3
                mem[_986 + 132] = 64
                mem[_986 + 164] = mem[_986]
                s = 0
                while s < 32 * mem[_986]:
                    mem[_986 + s + 196] = mem[_986 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_986 + 164 len (32 * mem[_986]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_986 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _986 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2609 = mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + _986 + 96] <= 4294967296 and mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + _986 + 96]) + 32 <= return_data.size
                mem[_986 + ceil32(return_data.size) + 96] = mem[mem[_986 + 96 len 4], Mask(224, 32, arg3) >> 32 + _986 + 96]
                _2643 = mem[_2609 + _986 + 96]
                s = 0
                while s < 32 * _2643:
                    mem[_986 + ceil32(return_data.size) + s + 128] = mem[_2609 + _986 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2643) + _986 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_986 + ceil32(return_data.size) + 96]
                if mem[_986 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_986 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_986 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_986 + ceil32(return_data.size) + 96]
            if mem[_986 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_986 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_986 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _986 + ceil32(return_data.size) + 96
            t = _986
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        if not arg2:
            _989 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_989]
            mem[_989 + 32] = BUSDAddress
            require 1 < mem[_989]
            mem[_989 + 64] = WBNBAddress
            if idx:
                mem[_989 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_989 + 100] = arg3
                mem[_989 + 132] = 64
                mem[_989 + 164] = mem[_989]
                s = 0
                while s < 32 * mem[_989]:
                    mem[_989 + s + 196] = mem[_989 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_989 + 164 len (32 * mem[_989]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_989 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _989 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2597 = mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + _989 + 96] <= 4294967296 and mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + _989 + 96]) + 32 <= return_data.size
                mem[_989 + ceil32(return_data.size) + 96] = mem[mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + _989 + 96]
                _2637 = mem[_2597 + _989 + 96]
                s = 0
                while s < 32 * _2637:
                    mem[_989 + ceil32(return_data.size) + s + 128] = mem[_2597 + _989 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2637) + _989 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_989 + ceil32(return_data.size) + 96]
                if mem[_989 + ceil32(return_data.size) + 160] <= mem[160]:
                    require 0 < mem[96]
                    require 1 < mem[_989 + ceil32(return_data.size) + 96]
                    if mem[_989 + ceil32(return_data.size) + 160] < mem[128]:
                        require 1 < mem[_989 + ceil32(return_data.size) + 96]
                        require 0 < mem[96]
                        mem[128] = mem[_989 + ceil32(return_data.size) + 160]
                    idx = idx + 1
                    s = _989 + ceil32(return_data.size) + 96
                    t = _989
                    t = t
                    continue 
                require 1 < mem[_989 + ceil32(return_data.size) + 96]
                require 1 < mem[96]
                mem[160] = mem[_989 + ceil32(return_data.size) + 160]
                require idx < arg1.length
            else:
                require 0 < mem[s]
                require 1 < mem[96]
                mem[160] = mem[s + 32]
                require 0 < mem[s]
                require 0 < mem[96]
                mem[128] = mem[s + 32]
                require idx < arg1.length
                mem[_989 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_989 + 100] = arg3
                mem[_989 + 132] = 64
                mem[_989 + 164] = mem[_989]
                s = 0
                while s < 32 * mem[_989]:
                    mem[_989 + s + 196] = mem[_989 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, 64, mem[_989 + 164 len (32 * mem[_989]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_989 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _989 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _2601 = mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32
                require mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + _989 + 96] <= 4294967296 and mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + _989 + 96]) + 32 <= return_data.size
                mem[_989 + ceil32(return_data.size) + 96] = mem[mem[_989 + 96 len 4], Mask(224, 32, arg3) >> 32 + _989 + 96]
                _2639 = mem[_2601 + _989 + 96]
                s = 0
                while s < 32 * _2639:
                    mem[_989 + ceil32(return_data.size) + s + 128] = mem[_2601 + _989 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2639) + _989 + ceil32(return_data.size) + 128
                require 1 < mem[96]
                require 1 < mem[_989 + ceil32(return_data.size) + 96]
                if mem[_989 + ceil32(return_data.size) + 160] > mem[160]:
                    require 1 < mem[_989 + ceil32(return_data.size) + 96]
                    require 1 < mem[96]
                    mem[160] = mem[_989 + ceil32(return_data.size) + 160]
                    require idx < arg1.length
            require 0 < mem[96]
            require 1 < mem[_989 + ceil32(return_data.size) + 96]
            if mem[_989 + ceil32(return_data.size) + 160] < mem[128]:
                require 1 < mem[_989 + ceil32(return_data.size) + 96]
                require 0 < mem[96]
                mem[128] = mem[_989 + ceil32(return_data.size) + 160]
            idx = idx + 1
            s = _989 + ceil32(return_data.size) + 96
            t = _989
            t = address(cd[((32 * idx) + arg1 + 36)])
            continue 
        _988 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        require 0 < mem[_988]
        mem[_988 + 32] = BUSDAddress
        require 1 < mem[_988]
        mem[_988 + 64] = WBNBAddress
        require 2 < mem[_988]
        mem[_988 + 96] = arg2
        if idx:
            mem[_988 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_988 + 132] = arg3
            mem[_988 + 164] = 64
            mem[_988 + 196] = mem[_988]
            s = 0
            while s < 32 * mem[_988]:
                mem[_988 + s + 228] = mem[_988 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[_988 + 196 len (32 * mem[_988]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_988 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _988 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _2589 = mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32
            require mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + _988 + 128] <= 4294967296 and mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + _988 + 128]) + 32 <= return_data.size
            mem[_988 + ceil32(return_data.size) + 128] = mem[mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + _988 + 128]
            _2633 = mem[_2589 + _988 + 128]
            s = 0
            while s < 32 * _2633:
                mem[_988 + ceil32(return_data.size) + s + 160] = mem[_2589 + _988 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _2633) + _988 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_988 + ceil32(return_data.size) + 128]
            if mem[_988 + ceil32(return_data.size) + 192] <= mem[160]:
                require 0 < mem[96]
                require 1 < mem[_988 + ceil32(return_data.size) + 128]
                if mem[_988 + ceil32(return_data.size) + 192] < mem[128]:
                    require 1 < mem[_988 + ceil32(return_data.size) + 128]
                    require 0 < mem[96]
                    mem[128] = mem[_988 + ceil32(return_data.size) + 192]
                idx = idx + 1
                s = _988 + ceil32(return_data.size) + 128
                t = _988
                t = t
                continue 
            require 1 < mem[_988 + ceil32(return_data.size) + 128]
            require 1 < mem[96]
            mem[160] = mem[_988 + ceil32(return_data.size) + 192]
            require idx < arg1.length
        else:
            require 0 < mem[s]
            require 1 < mem[96]
            mem[160] = mem[s + 32]
            require 0 < mem[s]
            require 0 < mem[96]
            mem[128] = mem[s + 32]
            require idx < arg1.length
            mem[_988 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_988 + 132] = arg3
            mem[_988 + 164] = 64
            mem[_988 + 196] = mem[_988]
            s = 0
            while s < 32 * mem[_988]:
                mem[_988 + s + 228] = mem[_988 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[_988 + 196 len (32 * mem[_988]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_988 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _988 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            _2593 = mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32
            require mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + _988 + 128] <= 4294967296 and mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + _988 + 128]) + 32 <= return_data.size
            mem[_988 + ceil32(return_data.size) + 128] = mem[mem[_988 + 128 len 4], Mask(224, 32, arg3) >> 32 + _988 + 128]
            _2635 = mem[_2593 + _988 + 128]
            s = 0
            while s < 32 * _2635:
                mem[_988 + ceil32(return_data.size) + s + 160] = mem[_2593 + _988 + s + 160]
                s = s + 32
                continue 
            mem[64] = (32 * _2635) + _988 + ceil32(return_data.size) + 160
            require 1 < mem[96]
            require 1 < mem[_988 + ceil32(return_data.size) + 128]
            if mem[_988 + ceil32(return_data.size) + 192] > mem[160]:
                require 1 < mem[_988 + ceil32(return_data.size) + 128]
                require 1 < mem[96]
                mem[160] = mem[_988 + ceil32(return_data.size) + 192]
                require idx < arg1.length
        require 0 < mem[96]
        require 1 < mem[_988 + ceil32(return_data.size) + 128]
        if mem[_988 + ceil32(return_data.size) + 192] < mem[128]:
            require 1 < mem[_988 + ceil32(return_data.size) + 128]
            require 0 < mem[96]
            mem[128] = mem[_988 + ceil32(return_data.size) + 192]
        idx = idx + 1
        s = _988 + ceil32(return_data.size) + 128
        t = _988
        t = address(cd[((32 * idx) + arg1 + 36)])
        continue 
    _987 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    require 0 < mem[_987]
    mem[_987 + 32] = BUSDAddress
    require 1 < mem[_987]
    mem[_987 + 64] = WBNBAddress
    require 2 < mem[_987]
    mem[_987 + 96] = arg2
    mem[_987 + 164] = address(t)
    mem[_987 + 196] = arg3
    mem[_987 + 128] = 68
    mem[_987 + 164 len 28] = address(t) << 64
    mem[_987 + 160 len 4] = approve(address rg1, uint256 rg2)
    mem[_987 + 228 len 64] = approve(address rg1, uint256 rg2), address(t) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[_987 + 320 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[_987 + 292 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not mem[96]:
            mem[_987 + 264] = msg.sender
            mem[_987 + 296] = this.address
            mem[_987 + 328] = arg3
            mem[_987 + 228] = 100
            mem[64] = _987 + 360
            mem[_987 + 260 len 4] = unknown_0x23b872dd(?????)
            mem[_987 + 360 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
            mem[_987 + 484 len 4] = uint32(arg3)
            call arg2 with:
                 gas gas_remaining wei
                args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_987 + 456 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_987 + 464 len 20],
                                uint32(arg3),
                                mem[_987 + 488 len 4]
                if not mem[96]:
                    mem[_987 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_987 + 364] = arg3
                    mem[_987 + 396] = 0
                    mem[_987 + 460] = msg.sender
                    mem[_987 + 492] = block.timestamp + 60
                    mem[_987 + 428] = 160
                    mem[_987 + 524] = mem[_987]
                    mem[_987 + 556 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
                    require ext_code.size(address(t))
                    call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + 524 len (32 * mem[_987]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_987 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _987 + ceil32(return_data.size) + 360
                    require return_data.size >= 32
                    _5517 = mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32
                    require mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360] <= 4294967296 and mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360]) + 32 <= return_data.size
                    mem[_987 + ceil32(return_data.size) + 360] = mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360]
                    _5637 = mem[_5517 + _987 + 360]
                    mem[_987 + ceil32(return_data.size) + 392 len floor32(mem[_5517 + _987 + 360])] = mem[_5517 + _987 + 392 len floor32(mem[_5517 + _987 + 360])]
                    mem[(32 * _5637) + _987 + ceil32(return_data.size) + 392] = 32
                    mem[(32 * _5637) + _987 + ceil32(return_data.size) + 424] = mem[_987 + ceil32(return_data.size) + 360]
                    mem[(32 * _5637) + _987 + ceil32(return_data.size) + 456 len floor32(mem[_987 + ceil32(return_data.size) + 360])] = mem[_987 + ceil32(return_data.size) + 392 len floor32(mem[_987 + ceil32(return_data.size) + 360])]
                    return 32, mem[(32 * _5637) + _987 + ceil32(return_data.size) + 424 len (32 * mem[_987 + ceil32(return_data.size) + 360]) + 32], 
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[_987 + 464 len 20],
                                uint32(arg3),
                                mem[_987 + 488 len 4]
                mem[_987 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_987 + 364] = arg3
                mem[_987 + 396] = 0
                mem[_987 + 460] = msg.sender
                mem[_987 + 492] = block.timestamp + 60
                mem[_987 + 428] = 160
                mem[_987 + 524] = mem[_987]
                mem[_987 + 556 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + 524 len (32 * mem[_987]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_987 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _987 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _5519 = mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32
                require mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360] <= 4294967296 and mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360]) + 32 <= return_data.size
                mem[_987 + ceil32(return_data.size) + 360] = mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360]
                _5638 = mem[_5519 + _987 + 360]
                mem[_987 + ceil32(return_data.size) + 392 len floor32(mem[_5519 + _987 + 360])] = mem[_5519 + _987 + 392 len floor32(mem[_5519 + _987 + 360])]
                mem[(32 * _5638) + _987 + ceil32(return_data.size) + 392] = 32
                mem[(32 * _5638) + _987 + ceil32(return_data.size) + 424] = mem[_987 + ceil32(return_data.size) + 360]
                mem[(32 * _5638) + _987 + ceil32(return_data.size) + 456 len floor32(mem[_987 + ceil32(return_data.size) + 360])] = mem[_987 + ceil32(return_data.size) + 392 len floor32(mem[_987 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _5638) + _987 + ceil32(return_data.size) + 424 len (32 * mem[_987 + ceil32(return_data.size) + 360]) + 32], 
            mem[64] = _987 + ceil32(return_data.size) + 361
            mem[_987 + 360] = return_data.size
            mem[_987 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_987 + ceil32(return_data.size) + 465 len 28]
            if not return_data.size:
                mem[_987 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_987 + ceil32(return_data.size) + 365] = arg3
                mem[_987 + ceil32(return_data.size) + 397] = 0
                mem[_987 + ceil32(return_data.size) + 461] = msg.sender
                mem[_987 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_987 + ceil32(return_data.size) + 429] = 160
                mem[_987 + ceil32(return_data.size) + 525] = mem[_987]
                mem[_987 + ceil32(return_data.size) + 557 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + ceil32(return_data.size) + 525 len (32 * mem[_987]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_987 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _987 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _5521 = mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
                require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]
                _5639 = mem[_5521 + _987 + ceil32(return_data.size) + 361]
                mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_5521 + _987 + ceil32(return_data.size) + 361])] = mem[_5521 + _987 + ceil32(return_data.size) + 393 len floor32(mem[_5521 + _987 + ceil32(return_data.size) + 361])]
                mem[(32 * _5639) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                mem[(32 * _5639) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _5639) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _5639) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            require return_data.size >= 32
            if not mem[_987 + 392]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_987 + ceil32(return_data.size) + 465 len 28]
            mem[_987 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_987 + ceil32(return_data.size) + 365] = arg3
            mem[_987 + ceil32(return_data.size) + 397] = 0
            mem[_987 + ceil32(return_data.size) + 461] = msg.sender
            mem[_987 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_987 + ceil32(return_data.size) + 429] = 160
            mem[_987 + ceil32(return_data.size) + 525] = mem[_987]
            mem[_987 + ceil32(return_data.size) + 557 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + ceil32(return_data.size) + 525 len (32 * mem[_987]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_987 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _987 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _5523 = mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]
            _5640 = mem[_5523 + _987 + ceil32(return_data.size) + 361]
            mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_5523 + _987 + ceil32(return_data.size) + 361])] = mem[_5523 + _987 + ceil32(return_data.size) + 393 len floor32(mem[_5523 + _987 + ceil32(return_data.size) + 361])]
            mem[(32 * _5640) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _5640) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _5640) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _5640) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        mem[_987 + 264] = msg.sender
        mem[_987 + 296] = this.address
        mem[_987 + 328] = arg3
        mem[_987 + 228] = 100
        mem[64] = _987 + 360
        mem[_987 + 260 len 4] = unknown_0x23b872dd(?????)
        mem[_987 + 360 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[_987 + 484 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_987 + 456 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_987 + 464 len 20],
                            uint32(arg3),
                            mem[_987 + 488 len 4]
            if not mem[96]:
                mem[_987 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_987 + 364] = arg3
                mem[_987 + 396] = 0
                mem[_987 + 460] = msg.sender
                mem[_987 + 492] = block.timestamp + 60
                mem[_987 + 428] = 160
                mem[_987 + 524] = mem[_987]
                mem[_987 + 556 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + 524 len (32 * mem[_987]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_987 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _987 + ceil32(return_data.size) + 360
                require return_data.size >= 32
                _5525 = mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32
                require mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360] <= 4294967296 and mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360]) + 32 <= return_data.size
                mem[_987 + ceil32(return_data.size) + 360] = mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360]
                _5641 = mem[_5525 + _987 + 360]
                mem[_987 + ceil32(return_data.size) + 392 len floor32(mem[_5525 + _987 + 360])] = mem[_5525 + _987 + 392 len floor32(mem[_5525 + _987 + 360])]
                mem[(32 * _5641) + _987 + ceil32(return_data.size) + 392] = 32
                mem[(32 * _5641) + _987 + ceil32(return_data.size) + 424] = mem[_987 + ceil32(return_data.size) + 360]
                mem[(32 * _5641) + _987 + ceil32(return_data.size) + 456 len floor32(mem[_987 + ceil32(return_data.size) + 360])] = mem[_987 + ceil32(return_data.size) + 392 len floor32(mem[_987 + ceil32(return_data.size) + 360])]
                return 32, mem[(32 * _5641) + _987 + ceil32(return_data.size) + 424 len (32 * mem[_987 + ceil32(return_data.size) + 360]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_987 + 464 len 20],
                            uint32(arg3),
                            mem[_987 + 488 len 4]
            mem[_987 + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_987 + 364] = arg3
            mem[_987 + 396] = 0
            mem[_987 + 460] = msg.sender
            mem[_987 + 492] = block.timestamp + 60
            mem[_987 + 428] = 160
            mem[_987 + 524] = mem[_987]
            mem[_987 + 556 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + 524 len (32 * mem[_987]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_987 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _987 + ceil32(return_data.size) + 360
            require return_data.size >= 32
            _5527 = mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32
            require mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360] <= 4294967296 and mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360]) + 32 <= return_data.size
            mem[_987 + ceil32(return_data.size) + 360] = mem[mem[_987 + 360 len 4], Mask(224, 32, arg3) >> 32 + _987 + 360]
            _5642 = mem[_5527 + _987 + 360]
            mem[_987 + ceil32(return_data.size) + 392 len floor32(mem[_5527 + _987 + 360])] = mem[_5527 + _987 + 392 len floor32(mem[_5527 + _987 + 360])]
            mem[(32 * _5642) + _987 + ceil32(return_data.size) + 392] = 32
            mem[(32 * _5642) + _987 + ceil32(return_data.size) + 424] = mem[_987 + ceil32(return_data.size) + 360]
            mem[(32 * _5642) + _987 + ceil32(return_data.size) + 456 len floor32(mem[_987 + ceil32(return_data.size) + 360])] = mem[_987 + ceil32(return_data.size) + 392 len floor32(mem[_987 + ceil32(return_data.size) + 360])]
            return 32, mem[(32 * _5642) + _987 + ceil32(return_data.size) + 424 len (32 * mem[_987 + ceil32(return_data.size) + 360]) + 32], 
        mem[64] = _987 + ceil32(return_data.size) + 361
        mem[_987 + 360] = return_data.size
        mem[_987 + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_987 + ceil32(return_data.size) + 465 len 28]
        if not return_data.size:
            mem[_987 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_987 + ceil32(return_data.size) + 365] = arg3
            mem[_987 + ceil32(return_data.size) + 397] = 0
            mem[_987 + ceil32(return_data.size) + 461] = msg.sender
            mem[_987 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_987 + ceil32(return_data.size) + 429] = 160
            mem[_987 + ceil32(return_data.size) + 525] = mem[_987]
            mem[_987 + ceil32(return_data.size) + 557 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + ceil32(return_data.size) + 525 len (32 * mem[_987]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_987 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _987 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _5529 = mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]
            _5643 = mem[_5529 + _987 + ceil32(return_data.size) + 361]
            mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_5529 + _987 + ceil32(return_data.size) + 361])] = mem[_5529 + _987 + ceil32(return_data.size) + 393 len floor32(mem[_5529 + _987 + ceil32(return_data.size) + 361])]
            mem[(32 * _5643) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _5643) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _5643) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _5643) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require return_data.size >= 32
        if not mem[_987 + 392]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_987 + ceil32(return_data.size) + 465 len 28]
        mem[_987 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_987 + ceil32(return_data.size) + 365] = arg3
        mem[_987 + ceil32(return_data.size) + 397] = 0
        mem[_987 + ceil32(return_data.size) + 461] = msg.sender
        mem[_987 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_987 + ceil32(return_data.size) + 429] = 160
        mem[_987 + ceil32(return_data.size) + 525] = mem[_987]
        mem[_987 + ceil32(return_data.size) + 557 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + ceil32(return_data.size) + 525 len (32 * mem[_987]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_987 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _987 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _5531 = mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
        require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]
        _5644 = mem[_5531 + _987 + ceil32(return_data.size) + 361]
        mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_5531 + _987 + ceil32(return_data.size) + 361])] = mem[_5531 + _987 + ceil32(return_data.size) + 393 len floor32(mem[_5531 + _987 + ceil32(return_data.size) + 361])]
        mem[(32 * _5644) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[(32 * _5644) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _5644) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
        return 32, mem[(32 * _5644) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
    mem[_987 + 228] = return_data.size
    mem[_987 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    if not return_data.size:
        mem[_987 + ceil32(return_data.size) + 265] = msg.sender
        mem[_987 + ceil32(return_data.size) + 297] = this.address
        mem[_987 + ceil32(return_data.size) + 329] = arg3
        mem[_987 + ceil32(return_data.size) + 229] = 100
        mem[64] = _987 + ceil32(return_data.size) + 361
        mem[_987 + ceil32(return_data.size) + 261 len 4] = unknown_0x23b872dd(?????)
        mem[_987 + ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[_987 + ceil32(return_data.size) + 485 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_987 + ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_987 + ceil32(return_data.size) + 465 len 20],
                            uint32(arg3),
                            mem[_987 + ceil32(return_data.size) + 489 len 4]
            if not mem[96]:
                mem[_987 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_987 + ceil32(return_data.size) + 365] = arg3
                mem[_987 + ceil32(return_data.size) + 397] = 0
                mem[_987 + ceil32(return_data.size) + 461] = msg.sender
                mem[_987 + ceil32(return_data.size) + 493] = block.timestamp + 60
                mem[_987 + ceil32(return_data.size) + 429] = 160
                mem[_987 + ceil32(return_data.size) + 525] = mem[_987]
                mem[_987 + ceil32(return_data.size) + 557 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
                require ext_code.size(address(t))
                call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + ceil32(return_data.size) + 525 len (32 * mem[_987]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_987 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _987 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                require return_data.size >= 32
                _5533 = mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
                require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
                mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]
                _5645 = mem[_5533 + _987 + ceil32(return_data.size) + 361]
                mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_5533 + _987 + ceil32(return_data.size) + 361])] = mem[_5533 + _987 + ceil32(return_data.size) + 393 len floor32(mem[_5533 + _987 + ceil32(return_data.size) + 361])]
                mem[(32 * _5645) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                mem[(32 * _5645) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
                mem[(32 * _5645) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
                return 32, mem[(32 * _5645) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[_987 + ceil32(return_data.size) + 465 len 20],
                            uint32(arg3),
                            mem[_987 + ceil32(return_data.size) + 489 len 4]
            mem[_987 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_987 + ceil32(return_data.size) + 365] = arg3
            mem[_987 + ceil32(return_data.size) + 397] = 0
            mem[_987 + ceil32(return_data.size) + 461] = msg.sender
            mem[_987 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_987 + ceil32(return_data.size) + 429] = 160
            mem[_987 + ceil32(return_data.size) + 525] = mem[_987]
            mem[_987 + ceil32(return_data.size) + 557 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + ceil32(return_data.size) + 525 len (32 * mem[_987]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_987 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _987 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _5535 = mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]
            _5646 = mem[_5535 + _987 + ceil32(return_data.size) + 361]
            mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_5535 + _987 + ceil32(return_data.size) + 361])] = mem[_5535 + _987 + ceil32(return_data.size) + 393 len floor32(mem[_5535 + _987 + ceil32(return_data.size) + 361])]
            mem[(32 * _5646) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _5646) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _5646) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _5646) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        mem[64] = _987 + (2 * ceil32(return_data.size)) + 362
        mem[_987 + ceil32(return_data.size) + 361] = return_data.size
        mem[_987 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_987 + (2 * ceil32(return_data.size)) + 466 len 28]
        if not return_data.size:
            mem[_987 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_987 + (2 * ceil32(return_data.size)) + 366] = arg3
            mem[_987 + (2 * ceil32(return_data.size)) + 398] = 0
            mem[_987 + (2 * ceil32(return_data.size)) + 462] = msg.sender
            mem[_987 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
            mem[_987 + (2 * ceil32(return_data.size)) + 430] = 160
            mem[_987 + (2 * ceil32(return_data.size)) + 526] = mem[_987]
            mem[_987 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_987]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_987 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _987 + (4 * ceil32(return_data.size)) + 362
            require return_data.size >= 32
            _5537 = mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
            require mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
            mem[_987 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362]
            _5647 = mem[_5537 + _987 + (2 * ceil32(return_data.size)) + 362]
            mem[_987 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_5537 + _987 + (2 * ceil32(return_data.size)) + 362])] = mem[_5537 + _987 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_5537 + _987 + (2 * ceil32(return_data.size)) + 362])]
            mem[(32 * _5647) + _987 + (4 * ceil32(return_data.size)) + 394] = 32
            mem[(32 * _5647) + _987 + (4 * ceil32(return_data.size)) + 426] = mem[_987 + (4 * ceil32(return_data.size)) + 362]
            mem[(32 * _5647) + _987 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_987 + (4 * ceil32(return_data.size)) + 362])] = mem[_987 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_987 + (4 * ceil32(return_data.size)) + 362])]
            return 32, mem[(32 * _5647) + _987 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_987 + (4 * ceil32(return_data.size)) + 362]) + 32], 
        require return_data.size >= 32
        if not mem[_987 + ceil32(return_data.size) + 393]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_987 + (2 * ceil32(return_data.size)) + 466 len 28]
        mem[_987 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_987 + (2 * ceil32(return_data.size)) + 366] = arg3
        mem[_987 + (2 * ceil32(return_data.size)) + 398] = 0
        mem[_987 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_987 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_987 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_987 + (2 * ceil32(return_data.size)) + 526] = mem[_987]
        mem[_987 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_987]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_987 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _987 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _5539 = mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
        require mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_987 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362]
        _5648 = mem[_5539 + _987 + (2 * ceil32(return_data.size)) + 362]
        mem[_987 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_5539 + _987 + (2 * ceil32(return_data.size)) + 362])] = mem[_5539 + _987 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_5539 + _987 + (2 * ceil32(return_data.size)) + 362])]
        mem[(32 * _5648) + _987 + (4 * ceil32(return_data.size)) + 394] = 32
        mem[(32 * _5648) + _987 + (4 * ceil32(return_data.size)) + 426] = mem[_987 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _5648) + _987 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_987 + (4 * ceil32(return_data.size)) + 362])] = mem[_987 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_987 + (4 * ceil32(return_data.size)) + 362])]
        return 32, mem[(32 * _5648) + _987 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_987 + (4 * ceil32(return_data.size)) + 362]) + 32], 
    require return_data.size >= 32
    if not mem[_987 + 260]:
        revert with 0, 'TransferHelper: APPROVE_FAILED'
    mem[_987 + ceil32(return_data.size) + 265] = msg.sender
    mem[_987 + ceil32(return_data.size) + 297] = this.address
    mem[_987 + ceil32(return_data.size) + 329] = arg3
    mem[_987 + ceil32(return_data.size) + 229] = 100
    mem[64] = _987 + ceil32(return_data.size) + 361
    mem[_987 + ceil32(return_data.size) + 261 len 4] = unknown_0x23b872dd(?????)
    mem[_987 + ceil32(return_data.size) + 361 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[_987 + ceil32(return_data.size) + 485 len 4] = uint32(arg3)
    call arg2 with:
         gas gas_remaining wei
        args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[_987 + ceil32(return_data.size) + 457 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_987 + ceil32(return_data.size) + 465 len 20],
                        uint32(arg3),
                        mem[_987 + ceil32(return_data.size) + 489 len 4]
        if not mem[96]:
            mem[_987 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_987 + ceil32(return_data.size) + 365] = arg3
            mem[_987 + ceil32(return_data.size) + 397] = 0
            mem[_987 + ceil32(return_data.size) + 461] = msg.sender
            mem[_987 + ceil32(return_data.size) + 493] = block.timestamp + 60
            mem[_987 + ceil32(return_data.size) + 429] = 160
            mem[_987 + ceil32(return_data.size) + 525] = mem[_987]
            mem[_987 + ceil32(return_data.size) + 557 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
            require ext_code.size(address(t))
            call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + ceil32(return_data.size) + 525 len (32 * mem[_987]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_987 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _987 + ceil32(return_data.size) + ceil32(return_data.size) + 361
            require return_data.size >= 32
            _5541 = mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
            require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
            mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]
            _5649 = mem[_5541 + _987 + ceil32(return_data.size) + 361]
            mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_5541 + _987 + ceil32(return_data.size) + 361])] = mem[_5541 + _987 + ceil32(return_data.size) + 393 len floor32(mem[_5541 + _987 + ceil32(return_data.size) + 361])]
            mem[(32 * _5649) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
            mem[(32 * _5649) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
            mem[(32 * _5649) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
            return 32, mem[(32 * _5649) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[_987 + ceil32(return_data.size) + 465 len 20],
                        uint32(arg3),
                        mem[_987 + ceil32(return_data.size) + 489 len 4]
        mem[_987 + ceil32(return_data.size) + 361] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_987 + ceil32(return_data.size) + 365] = arg3
        mem[_987 + ceil32(return_data.size) + 397] = 0
        mem[_987 + ceil32(return_data.size) + 461] = msg.sender
        mem[_987 + ceil32(return_data.size) + 493] = block.timestamp + 60
        mem[_987 + ceil32(return_data.size) + 429] = 160
        mem[_987 + ceil32(return_data.size) + 525] = mem[_987]
        mem[_987 + ceil32(return_data.size) + 557 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + ceil32(return_data.size) + 525 len (32 * mem[_987]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_987 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _987 + ceil32(return_data.size) + ceil32(return_data.size) + 361
        require return_data.size >= 32
        _5543 = mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32
        require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361] <= 4294967296 and mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]) + 32 <= return_data.size
        mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[mem[_987 + ceil32(return_data.size) + 361 len 4], Mask(224, 32, arg3) >> 32 + _987 + ceil32(return_data.size) + 361]
        _5650 = mem[_5543 + _987 + ceil32(return_data.size) + 361]
        mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_5543 + _987 + ceil32(return_data.size) + 361])] = mem[_5543 + _987 + ceil32(return_data.size) + 393 len floor32(mem[_5543 + _987 + ceil32(return_data.size) + 361])]
        mem[(32 * _5650) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
        mem[(32 * _5650) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]
        mem[(32 * _5650) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])] = mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 393 len floor32(mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361])]
        return 32, mem[(32 * _5650) + _987 + ceil32(return_data.size) + ceil32(return_data.size) + 425 len (32 * mem[_987 + ceil32(return_data.size) + ceil32(return_data.size) + 361]) + 32], 
    mem[64] = _987 + (2 * ceil32(return_data.size)) + 362
    mem[_987 + ceil32(return_data.size) + 361] = return_data.size
    mem[_987 + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_987 + (2 * ceil32(return_data.size)) + 466 len 28]
    if not return_data.size:
        mem[_987 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_987 + (2 * ceil32(return_data.size)) + 366] = arg3
        mem[_987 + (2 * ceil32(return_data.size)) + 398] = 0
        mem[_987 + (2 * ceil32(return_data.size)) + 462] = msg.sender
        mem[_987 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
        mem[_987 + (2 * ceil32(return_data.size)) + 430] = 160
        mem[_987 + (2 * ceil32(return_data.size)) + 526] = mem[_987]
        mem[_987 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
        require ext_code.size(address(t))
        call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_987]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_987 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _987 + (4 * ceil32(return_data.size)) + 362
        require return_data.size >= 32
        _5545 = mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
        require mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
        mem[_987 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362]
        _5651 = mem[_5545 + _987 + (2 * ceil32(return_data.size)) + 362]
        mem[_987 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_5545 + _987 + (2 * ceil32(return_data.size)) + 362])] = mem[_5545 + _987 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_5545 + _987 + (2 * ceil32(return_data.size)) + 362])]
        mem[(32 * _5651) + _987 + (4 * ceil32(return_data.size)) + 394] = 32
        mem[(32 * _5651) + _987 + (4 * ceil32(return_data.size)) + 426] = mem[_987 + (4 * ceil32(return_data.size)) + 362]
        mem[(32 * _5651) + _987 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_987 + (4 * ceil32(return_data.size)) + 362])] = mem[_987 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_987 + (4 * ceil32(return_data.size)) + 362])]
        return 32, mem[(32 * _5651) + _987 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_987 + (4 * ceil32(return_data.size)) + 362]) + 32], 
    require return_data.size >= 32
    if not mem[_987 + ceil32(return_data.size) + 393]:
        revert with 0, 
                    32,
                    36,
                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[_987 + (2 * ceil32(return_data.size)) + 466 len 28]
    mem[_987 + (2 * ceil32(return_data.size)) + 362] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_987 + (2 * ceil32(return_data.size)) + 366] = arg3
    mem[_987 + (2 * ceil32(return_data.size)) + 398] = 0
    mem[_987 + (2 * ceil32(return_data.size)) + 462] = msg.sender
    mem[_987 + (2 * ceil32(return_data.size)) + 494] = block.timestamp + 60
    mem[_987 + (2 * ceil32(return_data.size)) + 430] = 160
    mem[_987 + (2 * ceil32(return_data.size)) + 526] = mem[_987]
    mem[_987 + (2 * ceil32(return_data.size)) + 558 len floor32(mem[_987])] = mem[_987 + 32 len floor32(mem[_987])]
    require ext_code.size(address(t))
    call address(t).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, msg.sender, block.timestamp + 60, mem[_987 + (2 * ceil32(return_data.size)) + 526 len (32 * mem[_987]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_987 + (2 * ceil32(return_data.size)) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _987 + (4 * ceil32(return_data.size)) + 362
    require return_data.size >= 32
    _5547 = mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32
    require mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362] <= 4294967296 and mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362]) + 32 <= return_data.size
    mem[_987 + (4 * ceil32(return_data.size)) + 362] = mem[mem[_987 + (2 * ceil32(return_data.size)) + 362 len 4], Mask(224, 32, arg3) >> 32 + _987 + (2 * ceil32(return_data.size)) + 362]
    _5652 = mem[_5547 + _987 + (2 * ceil32(return_data.size)) + 362]
    mem[_987 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_5547 + _987 + (2 * ceil32(return_data.size)) + 362])] = mem[_5547 + _987 + (2 * ceil32(return_data.size)) + 394 len floor32(mem[_5547 + _987 + (2 * ceil32(return_data.size)) + 362])]
    mem[(32 * _5652) + _987 + (4 * ceil32(return_data.size)) + 394] = 32
    mem[(32 * _5652) + _987 + (4 * ceil32(return_data.size)) + 426] = mem[_987 + (4 * ceil32(return_data.size)) + 362]
    mem[(32 * _5652) + _987 + (4 * ceil32(return_data.size)) + 458 len floor32(mem[_987 + (4 * ceil32(return_data.size)) + 362])] = mem[_987 + (4 * ceil32(return_data.size)) + 394 len floor32(mem[_987 + (4 * ceil32(return_data.size)) + 362])]
    return 32, mem[(32 * _5652) + _987 + (4 * ceil32(return_data.size)) + 426 len (32 * mem[_987 + (4 * ceil32(return_data.size)) + 362]) + 32], 
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
                if arg5 != 1:
                    if arg5:
                        idx = idx + 1
                        s = s
                        t = _614
                        t = t
                        continue 
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
            if arg5 != 1:
                if arg5:
                    idx = idx + 1
                    s = s
                    t = _614
                    t = address(cd[((32 * idx) + arg1 + 36)])
                    continue 
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
                if arg5 != 1:
                    if arg5:
                        idx = idx + 1
                        s = s
                        t = _618
                        t = t
                        continue 
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
            if arg5 != 1:
                if arg5:
                    idx = idx + 1
                    s = s
                    t = _618
                    t = address(cd[((32 * idx) + arg1 + 36)])
                    continue 
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
            if arg5 != 1:
                if arg5:
                    idx = idx + 1
                    s = s
                    t = _617
                    t = t
                    continue 
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
        if arg5 != 1:
            if arg5:
                idx = idx + 1
                s = s
                t = _617
                t = address(cd[((32 * idx) + arg1 + 36)])
                continue 
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
