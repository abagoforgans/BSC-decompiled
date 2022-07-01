contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1;
uint8 pairCount; offset 160
address sub_17d0d4dcAddress;
mapping of address sub_2859a355;
mapping of address routers;

function pairCount() payable {
    return pairCount
}

function sub_17d0d4dc(?) payable {
    return sub_17d0d4dcAddress
}

function sub_2859a355(?) payable {
    require calldata.size - 4 >= 32
    return sub_2859a355[arg1]
}

function owner() payable {
    return owner
}

function routers(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return routers[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c3bbe507(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_17d0d4dcAddress = arg1
}

function sqrt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        require s
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function addPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2859a355[stor1] = arg1
    routers[stor1] = arg2
    pairCount = uint8(pairCount + 1)
}

function sub_2501752c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= pairCount:
        revert with 0, 'invalid index'
    sub_2859a355[arg1 << 248] = 0
    routers[arg1 << 248] = 0
}

function transferOwnership(address arg1) payable {
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

function sub_b2d6e751(?) payable {
    require calldata.size - 4 >= 32
    require pairCount <= test266151307()
    if pairCount:
        mem[128 len 32 * pairCount] = call.data[calldata.size len 32 * pairCount]
    idx = 0
    while uint8(idx) < pairCount:
        mem[0] = uint8(idx)
        mem[32] = 2
        if not sub_2859a355[idx << 248]:
            require uint8(idx) < pairCount
            mem[(32 * uint8(idx)) + 128] = 0
        else:
            mem[0] = uint8(idx)
            mem[32] = 2
            require ext_code.size(sub_2859a355[idx << 248])
            staticcall sub_2859a355[idx << 248].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * pairCount) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_2859a355[idx << 248])
            staticcall sub_2859a355[idx << 248].token0() with:
                    gas gas_remaining wei
            mem[(32 * pairCount) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = arg1 + 100000001 / 2
            t = arg1 + 100 * 10^6
            while s < t:
                require s
                s = (arg1 + 100 * 10^6 / s) + s / 2
                t = s
                continue 
            require uint8(idx) < pairCount
            if address(ext_call.return_data[0]) == sub_17d0d4dcAddress:
                mem[(32 * uint8(idx)) + 128] = (-10000 * Mask(112, 0, ext_call.return_data[32])) + (t * Mask(112, 0, ext_call.return_data[32])) / 10000
            else:
                mem[(32 * uint8(idx)) + 128] = (-10000 * Mask(112, 0, ext_call.return_data[0])) + (t * Mask(112, 0, ext_call.return_data[0])) / 10000
        idx = idx + 1
        continue 
    mem[(32 * pairCount) + 192 len floor32(pairCount)] = mem[128 len floor32(pairCount)]
    return Array(len=stor1, data=mem[128 len floor32(pairCount)], mem[(32 * pairCount) + floor32(pairCount) + 192 len (32 * pairCount) - floor32(pairCount)]), 
}

function sub_5858d161(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require pairCount <= test266151307()
    mem[96] = pairCount
    mem[64] = (32 * pairCount) + 128
    if not pairCount:
        idx = 0
        while uint8(idx) < pairCount:
            mem[0] = uint8(idx)
            mem[32] = 2
            if not sub_2859a355[idx << 248]:
                require uint8(idx) < pairCount
                mem[(32 * uint8(idx)) + 128] = 0
            else:
                mem[0] = uint8(idx)
                mem[32] = 2
                require ext_code.size(sub_2859a355[idx << 248])
                staticcall sub_2859a355[idx << 248].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * pairCount) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_2859a355[idx << 248])
                staticcall sub_2859a355[idx << 248].token0() with:
                        gas gas_remaining wei
                mem[(32 * pairCount) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = arg1 + 100000001 / 2
                t = arg1 + 100 * 10^6
                while s < t:
                    require s
                    s = (arg1 + 100 * 10^6 / s) + s / 2
                    t = s
                    continue 
                require uint8(idx) < pairCount
                if address(ext_call.return_data[0]) == sub_17d0d4dcAddress:
                    mem[(32 * uint8(idx)) + 128] = (-10000 * Mask(112, 0, ext_call.return_data[32])) + (t * Mask(112, 0, ext_call.return_data[32])) / 10000
                else:
                    mem[(32 * uint8(idx)) + 128] = (-10000 * Mask(112, 0, ext_call.return_data[0])) + (t * Mask(112, 0, ext_call.return_data[0])) / 10000
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < pairCount:
            require uint8(idx) < mem[96]
            if mem[(32 * uint8(idx)) + 128]:
                mem[0] = uint8(idx)
                mem[32] = 2
                require ext_code.size(sub_2859a355[idx << 248])
                staticcall sub_2859a355[idx << 248].token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_2859a355[idx << 248])
                if address(ext_call.return_data[0]) == sub_17d0d4dcAddress:
                    staticcall sub_2859a355[idx << 248].token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _264 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_264]
                    mem[_264 + 32] = address(ext_call.return_data[0])
                    require 1 < mem[_264]
                    mem[_264 + 64] = sub_17d0d4dcAddress
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    require uint8(idx) < mem[96]
                    _284 = mem[(32 * uint8(idx)) + 128]
                    mem[_264 + 100] = msg.sender
                    mem[_264 + 132] = this.address
                    mem[_264 + 164] = _284
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _284
                    mem[_264 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    _308 = mem[(32 * uint8(idx)) + 128]
                    mem[_264 + 100] = this.address
                    mem[_264 + 132] = routers[idx << 248]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), routers[idx << 248]
                    mem[_264 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _308 <= ext_call.return_data[0]:
                        require uint8(idx) < mem[96]
                        _340 = mem[(32 * uint8(idx)) + 128]
                        mem[_264 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_264 + 100] = _340
                        mem[_264 + 132] = 1
                        mem[_264 + 196] = msg.sender
                        mem[_264 + 228] = block.timestamp + 60000
                        mem[_264 + 164] = 160
                        mem[_264 + 260] = mem[_264]
                        s = 0
                        while s < 32 * mem[_264]:
                            mem[_264 + s + 292] = mem[_264 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(routers[idx << 248])
                        call routers[idx << 248].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _340, 1, 160, msg.sender, block.timestamp + 60000, mem[_264 + 260 len (32 * mem[_264]) + 32]
                    else:
                        mem[_264 + 100] = routers[idx << 248]
                        mem[_264 + 132] = _308
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routers[idx << 248], _308
                        mem[_264 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < mem[96]
                        _376 = mem[(32 * uint8(idx)) + 128]
                        mem[_264 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_264 + 100] = _376
                        mem[_264 + 132] = 1
                        mem[_264 + 196] = msg.sender
                        mem[_264 + 228] = block.timestamp + 60000
                        mem[_264 + 164] = 160
                        mem[_264 + 260] = mem[_264]
                        s = 0
                        while s < 32 * mem[_264]:
                            mem[_264 + s + 292] = mem[_264 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(routers[idx << 248])
                        call routers[idx << 248].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _376, 1, 160, msg.sender, block.timestamp + 60000, mem[_264 + 260 len (32 * mem[_264]) + 32]
                else:
                    staticcall sub_2859a355[idx << 248].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _265 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_265]
                    mem[_265 + 32] = address(ext_call.return_data[0])
                    require 1 < mem[_265]
                    mem[_265 + 64] = sub_17d0d4dcAddress
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    require uint8(idx) < mem[96]
                    _287 = mem[(32 * uint8(idx)) + 128]
                    mem[_265 + 100] = msg.sender
                    mem[_265 + 132] = this.address
                    mem[_265 + 164] = _287
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _287
                    mem[_265 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    _309 = mem[(32 * uint8(idx)) + 128]
                    mem[_265 + 100] = this.address
                    mem[_265 + 132] = routers[idx << 248]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), routers[idx << 248]
                    mem[_265 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _309 <= ext_call.return_data[0]:
                        require uint8(idx) < mem[96]
                        _345 = mem[(32 * uint8(idx)) + 128]
                        mem[_265 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_265 + 100] = _345
                        mem[_265 + 132] = 1
                        mem[_265 + 196] = msg.sender
                        mem[_265 + 228] = block.timestamp + 60000
                        mem[_265 + 164] = 160
                        mem[_265 + 260] = mem[_265]
                        s = 0
                        while s < 32 * mem[_265]:
                            mem[_265 + s + 292] = mem[_265 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(routers[idx << 248])
                        call routers[idx << 248].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _345, 1, 160, msg.sender, block.timestamp + 60000, mem[_265 + 260 len (32 * mem[_265]) + 32]
                    else:
                        mem[_265 + 100] = routers[idx << 248]
                        mem[_265 + 132] = _309
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routers[idx << 248], _309
                        mem[_265 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < mem[96]
                        _380 = mem[(32 * uint8(idx)) + 128]
                        mem[_265 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_265 + 100] = _380
                        mem[_265 + 132] = 1
                        mem[_265 + 196] = msg.sender
                        mem[_265 + 228] = block.timestamp + 60000
                        mem[_265 + 164] = 160
                        mem[_265 + 260] = mem[_265]
                        s = 0
                        while s < 32 * mem[_265]:
                            mem[_265 + s + 292] = mem[_265 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(routers[idx << 248])
                        call routers[idx << 248].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _380, 1, 160, msg.sender, block.timestamp + 60000, mem[_265 + 260 len (32 * mem[_265]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * pairCount] = call.data[calldata.size len 32 * pairCount]
        idx = 0
        while uint8(idx) < pairCount:
            mem[0] = uint8(idx)
            mem[32] = 2
            if not sub_2859a355[idx << 248]:
                require uint8(idx) < pairCount
                mem[(32 * uint8(idx)) + 128] = 0
            else:
                mem[0] = uint8(idx)
                mem[32] = 2
                require ext_code.size(sub_2859a355[idx << 248])
                staticcall sub_2859a355[idx << 248].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * pairCount) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(sub_2859a355[idx << 248])
                staticcall sub_2859a355[idx << 248].token0() with:
                        gas gas_remaining wei
                mem[(32 * pairCount) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = arg1 + 100000001 / 2
                t = arg1 + 100 * 10^6
                while s < t:
                    require s
                    s = (arg1 + 100 * 10^6 / s) + s / 2
                    t = s
                    continue 
                require uint8(idx) < pairCount
                if address(ext_call.return_data[0]) == sub_17d0d4dcAddress:
                    mem[(32 * uint8(idx)) + 128] = (-10000 * Mask(112, 0, ext_call.return_data[32])) + (t * Mask(112, 0, ext_call.return_data[32])) / 10000
                else:
                    mem[(32 * uint8(idx)) + 128] = (-10000 * Mask(112, 0, ext_call.return_data[0])) + (t * Mask(112, 0, ext_call.return_data[0])) / 10000
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < pairCount:
            require uint8(idx) < mem[96]
            if mem[(32 * uint8(idx)) + 128]:
                mem[0] = uint8(idx)
                mem[32] = 2
                require ext_code.size(sub_2859a355[idx << 248])
                staticcall sub_2859a355[idx << 248].token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_2859a355[idx << 248])
                if address(ext_call.return_data[0]) == sub_17d0d4dcAddress:
                    staticcall sub_2859a355[idx << 248].token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _266 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_266]
                    mem[_266 + 32] = address(ext_call.return_data[0])
                    require 1 < mem[_266]
                    mem[_266 + 64] = sub_17d0d4dcAddress
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    require uint8(idx) < mem[96]
                    _290 = mem[(32 * uint8(idx)) + 128]
                    mem[_266 + 100] = msg.sender
                    mem[_266 + 132] = this.address
                    mem[_266 + 164] = _290
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _290
                    mem[_266 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    _310 = mem[(32 * uint8(idx)) + 128]
                    mem[_266 + 100] = this.address
                    mem[_266 + 132] = routers[idx << 248]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), routers[idx << 248]
                    mem[_266 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _310 <= ext_call.return_data[0]:
                        require uint8(idx) < mem[96]
                        _350 = mem[(32 * uint8(idx)) + 128]
                        mem[_266 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_266 + 100] = _350
                        mem[_266 + 132] = 1
                        mem[_266 + 196] = msg.sender
                        mem[_266 + 228] = block.timestamp + 60000
                        mem[_266 + 164] = 160
                        mem[_266 + 260] = mem[_266]
                        s = 0
                        while s < 32 * mem[_266]:
                            mem[_266 + s + 292] = mem[_266 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(routers[idx << 248])
                        call routers[idx << 248].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _350, 1, 160, msg.sender, block.timestamp + 60000, mem[_266 + 260 len (32 * mem[_266]) + 32]
                    else:
                        mem[_266 + 100] = routers[idx << 248]
                        mem[_266 + 132] = _310
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routers[idx << 248], _310
                        mem[_266 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < mem[96]
                        _384 = mem[(32 * uint8(idx)) + 128]
                        mem[_266 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_266 + 100] = _384
                        mem[_266 + 132] = 1
                        mem[_266 + 196] = msg.sender
                        mem[_266 + 228] = block.timestamp + 60000
                        mem[_266 + 164] = 160
                        mem[_266 + 260] = mem[_266]
                        s = 0
                        while s < 32 * mem[_266]:
                            mem[_266 + s + 292] = mem[_266 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(routers[idx << 248])
                        call routers[idx << 248].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _384, 1, 160, msg.sender, block.timestamp + 60000, mem[_266 + 260 len (32 * mem[_266]) + 32]
                else:
                    staticcall sub_2859a355[idx << 248].token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _267 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_267]
                    mem[_267 + 32] = address(ext_call.return_data[0])
                    require 1 < mem[_267]
                    mem[_267 + 64] = sub_17d0d4dcAddress
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    require uint8(idx) < mem[96]
                    _293 = mem[(32 * uint8(idx)) + 128]
                    mem[_267 + 100] = msg.sender
                    mem[_267 + 132] = this.address
                    mem[_267 + 164] = _293
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _293
                    mem[_267 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    _311 = mem[(32 * uint8(idx)) + 128]
                    mem[_267 + 100] = this.address
                    mem[_267 + 132] = routers[idx << 248]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), routers[idx << 248]
                    mem[_267 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _311 <= ext_call.return_data[0]:
                        require uint8(idx) < mem[96]
                        _355 = mem[(32 * uint8(idx)) + 128]
                        mem[_267 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_267 + 100] = _355
                        mem[_267 + 132] = 1
                        mem[_267 + 196] = msg.sender
                        mem[_267 + 228] = block.timestamp + 60000
                        mem[_267 + 164] = 160
                        mem[_267 + 260] = mem[_267]
                        s = 0
                        while s < 32 * mem[_267]:
                            mem[_267 + s + 292] = mem[_267 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(routers[idx << 248])
                        call routers[idx << 248].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _355, 1, 160, msg.sender, block.timestamp + 60000, mem[_267 + 260 len (32 * mem[_267]) + 32]
                    else:
                        mem[_267 + 100] = routers[idx << 248]
                        mem[_267 + 132] = _311
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routers[idx << 248], _311
                        mem[_267 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < mem[96]
                        _388 = mem[(32 * uint8(idx)) + 128]
                        mem[_267 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[_267 + 100] = _388
                        mem[_267 + 132] = 1
                        mem[_267 + 196] = msg.sender
                        mem[_267 + 228] = block.timestamp + 60000
                        mem[_267 + 164] = 160
                        mem[_267 + 260] = mem[_267]
                        s = 0
                        while s < 32 * mem[_267]:
                            mem[_267 + s + 292] = mem[_267 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(routers[idx << 248])
                        call routers[idx << 248].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _388, 1, 160, msg.sender, block.timestamp + 60000, mem[_267 + 260 len (32 * mem[_267]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}



}
