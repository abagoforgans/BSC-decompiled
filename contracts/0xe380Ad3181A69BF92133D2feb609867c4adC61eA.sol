contract main {




// =====================  Runtime code  =====================


#
#  - sub_38f4c188(?)
#
address _DODO_APPROVE_Address; offset 8
address _DODO_SELL_HELPER_Address;
address _WETH_Address;

function _WETH_() {
    return _WETH_Address
}

function _DODO_APPROVE_() {
    return _DODO_APPROVE_Address
}

function _DODO_SELL_HELPER_() {
    return _DODO_SELL_HELPER_Address
}

function _fallback() payable {
  stop
}

function sub_22d1b732(?) payable {
    require calldata.size - 4 >= 224
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[64] = (32 * arg5.length) + (32 * arg6.length) + 160
    mem[(32 * arg5.length) + 128] = arg6.length
    mem[(32 * arg5.length) + 160 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    if arg7 < block.timestamp:
        revert with 0, 'DODOV1Proxy01: EXPIRED'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if arg3 != msg.value:
            revert with 0, 
                        32,
                        35,
                        0x64444f444f563150726f787930313a204554485f414d4f554e545f4e4f545f4d415443,
                        mem[(32 * arg5.length) + (32 * arg6.length) + 263 len 29]
        mem[(32 * arg5.length) + (32 * arg6.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(_WETH_Address)
        call _WETH_Address.0xd0e30db0 with:
           value arg3 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg5.length:
            require idx < mem[96]
            _1415 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg5.length) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            if 0 == mem[(32 * idx) + (32 * arg5.length) + 191 len 1]:
                call mem[(32 * idx) + 140 len 20]._BASE_TOKEN_() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_1415)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = 0
                    require ext_code.size(address(_1415))
                    call address(_1415).0x8dae7333 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 96, 0, mem[mem[64] + 132]
                    mem[mem[64]] = ext_call.return_data[0]
                else:
                    if not ext_call.return_data[0]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_1415)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[mem[64] + 122 len 10]
                        _1681 = mem[64]
                        mem[mem[64] + 36] = address(_1415)
                        mem[mem[64] + 68] = -1
                        _1682 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1682 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1682 + 36 len 28]
                        _1712 = mem[_1682]
                        t = _1682 + 32
                        u = _1681 + 100
                        s = mem[_1682]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1681 + floor32(mem[_1682]) + 100] = mem[_1682 + -(mem[_1682] % 32) + floor32(mem[_1682]) + 64 len mem[_1682] % 32] or Mask(8 * -(mem[_1682] % 32) + 32, -(8 * -(mem[_1682] % 32) + 32) + 256, mem[_1681 + floor32(mem[_1682]) + 100])
                        call address(ext_call.return_data[0]).mem[_1681 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1681 + 104 len _1712 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1681 + 210 len 22]
                            mem[_1681 + 104] = ext_call.return_data[0]
                            mem[_1681 + 136] = 0
                            mem[_1681 + 168] = 96
                            mem[_1681 + 200] = 0
                            require ext_code.size(address(_1415))
                            call address(_1415).0x8dae7333 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 96, 0, mem[_1681 + 232]
                            mem[_1681 + 100] = ext_call.return_data[0]
                        else:
                            mem[64] = _1681 + ceil32(return_data.size) + 101
                            mem[_1681 + 100] = return_data.size
                            mem[_1681 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1681 + 132]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1681 + ceil32(return_data.size) + 211 len 22]
                            mem[_1681 + ceil32(return_data.size) + 105] = ext_call.return_data[0]
                            mem[_1681 + ceil32(return_data.size) + 137] = 0
                            mem[_1681 + ceil32(return_data.size) + 169] = 96
                            mem[_1681 + ceil32(return_data.size) + 201] = 0
                            require ext_code.size(address(_1415))
                            call address(_1415).0x8dae7333 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 96, 0, mem[_1681 + ceil32(return_data.size) + 233]
                            mem[_1681 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                    else:
                        _1588 = mem[64]
                        mem[mem[64] + 36] = address(_1415)
                        mem[mem[64] + 68] = 0
                        _1589 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1589 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1589 + 36 len 28]
                        _1613 = mem[_1589]
                        t = _1589 + 32
                        u = _1588 + 100
                        s = mem[_1589]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1588 + floor32(mem[_1589]) + 100] = mem[_1589 + -(mem[_1589] % 32) + floor32(mem[_1589]) + 64 len mem[_1589] % 32] or Mask(8 * -(mem[_1589] % 32) + 32, -(8 * -(mem[_1589] % 32) + 32) + 256, mem[_1588 + floor32(mem[_1589]) + 100])
                        call address(ext_call.return_data[0]).mem[_1588 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1588 + 104 len _1613 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1588 + 210 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_1415)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[_1588 + 222 len 10]
                            mem[_1588 + 136] = address(_1415)
                            mem[_1588 + 168] = -1
                            mem[_1588 + 100] = 68
                            mem[64] = _1588 + 200
                            mem[_1588 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1415) << 64
                            t = _1588 + 132
                            u = _1588 + 200
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1588 + 264] = mem[_1588 + 224 len 4] or Mask(224, 32, mem[_1588 + 264])
                            call address(ext_call.return_data[0]).mem[_1588 + 200 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1588 + 204 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1588 + 310 len 22]
                                mem[_1588 + 204] = ext_call.return_data[0]
                                mem[_1588 + 236] = 0
                                mem[_1588 + 268] = 96
                                mem[_1588 + 300] = 0
                                require ext_code.size(address(_1415))
                                call address(_1415).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 96, 0, mem[_1588 + 332]
                                mem[_1588 + 200] = ext_call.return_data[0]
                            else:
                                mem[64] = _1588 + ceil32(return_data.size) + 201
                                mem[_1588 + 200] = return_data.size
                                mem[_1588 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1588 + 232]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1588 + ceil32(return_data.size) + 311 len 22]
                                mem[_1588 + ceil32(return_data.size) + 205] = ext_call.return_data[0]
                                mem[_1588 + ceil32(return_data.size) + 237] = 0
                                mem[_1588 + ceil32(return_data.size) + 269] = 96
                                mem[_1588 + ceil32(return_data.size) + 301] = 0
                                require ext_code.size(address(_1415))
                                call address(_1415).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 96, 0, mem[_1588 + ceil32(return_data.size) + 333]
                                mem[_1588 + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                        else:
                            mem[_1588 + 100] = return_data.size
                            mem[_1588 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1588 + 132]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1588 + ceil32(return_data.size) + 211 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_1415)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[_1588 + ceil32(return_data.size) + 223 len 10]
                            mem[_1588 + ceil32(return_data.size) + 137] = address(_1415)
                            mem[_1588 + ceil32(return_data.size) + 169] = -1
                            mem[_1588 + ceil32(return_data.size) + 101] = 68
                            mem[64] = _1588 + ceil32(return_data.size) + 201
                            mem[_1588 + ceil32(return_data.size) + 133] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1415) << 64
                            t = _1588 + ceil32(return_data.size) + 133
                            u = _1588 + ceil32(return_data.size) + 201
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1588 + ceil32(return_data.size) + 265] = mem[_1588 + ceil32(return_data.size) + 225 len 4] or Mask(224, 32, mem[_1588 + ceil32(return_data.size) + 265])
                            call address(ext_call.return_data[0]).mem[_1588 + ceil32(return_data.size) + 201 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1588 + ceil32(return_data.size) + 205 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1588 + ceil32(return_data.size) + 311 len 22]
                                mem[_1588 + ceil32(return_data.size) + 205] = ext_call.return_data[0]
                                mem[_1588 + ceil32(return_data.size) + 237] = 0
                                mem[_1588 + ceil32(return_data.size) + 269] = 96
                                mem[_1588 + ceil32(return_data.size) + 301] = 0
                                require ext_code.size(address(_1415))
                                call address(_1415).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 96, 0, mem[_1588 + ceil32(return_data.size) + 333]
                                mem[_1588 + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                            else:
                                mem[64] = _1588 + (2 * ceil32(return_data.size)) + 202
                                mem[_1588 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_1588 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[_1588 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1588 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1588 + (2 * ceil32(return_data.size)) + 312 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                mem[_1588 + (2 * ceil32(return_data.size)) + 206] = ext_call.return_data[0]
                                mem[_1588 + (2 * ceil32(return_data.size)) + 238] = 0
                                mem[_1588 + (2 * ceil32(return_data.size)) + 270] = 96
                                mem[_1588 + (2 * ceil32(return_data.size)) + 302] = 0
                                require ext_code.size(address(_1415))
                                call address(_1415).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 96, 0, mem[_1588 + (2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                                mem[_1588 + (2 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
            else:
                call mem[(32 * idx) + 140 len 20]._QUOTE_TOKEN_() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_1415)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    require ext_code.size(_DODO_SELL_HELPER_Address)
                    staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                            gas gas_remaining wei
                           args address(_1415), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = 0
                    require ext_code.size(address(_1415))
                    call address(_1415).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[mem[64] + 132]
                    mem[mem[64]] = ext_call.return_data[0]
                else:
                    if not ext_call.return_data[0]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_1415)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[mem[64] + 122 len 10]
                        _1675 = mem[64]
                        mem[mem[64] + 36] = address(_1415)
                        mem[mem[64] + 68] = -1
                        _1676 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1676 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1676 + 36 len 28]
                        _1710 = mem[_1676]
                        t = _1676 + 32
                        u = _1675 + 100
                        s = mem[_1676]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1675 + floor32(mem[_1676]) + 100] = mem[_1676 + -(mem[_1676] % 32) + floor32(mem[_1676]) + 64 len mem[_1676] % 32] or Mask(8 * -(mem[_1676] % 32) + 32, -(8 * -(mem[_1676] % 32) + 32) + 256, mem[_1675 + floor32(mem[_1676]) + 100])
                        call address(ext_call.return_data[0]).mem[_1675 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1675 + 104 len _1710 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1675 + 210 len 22]
                            require ext_code.size(_DODO_SELL_HELPER_Address)
                            staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                    gas gas_remaining wei
                                   args address(_1415), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1675 + 104] = ext_call.return_data[0]
                            mem[_1675 + 136] = ext_call.return_data[0]
                            mem[_1675 + 168] = 96
                            mem[_1675 + 200] = 0
                            require ext_code.size(address(_1415))
                            call address(_1415).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1675 + 232]
                            mem[_1675 + 100] = ext_call.return_data[0]
                        else:
                            mem[64] = _1675 + ceil32(return_data.size) + 101
                            mem[_1675 + 100] = return_data.size
                            mem[_1675 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1675 + 132]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1675 + ceil32(return_data.size) + 211 len 22]
                            require ext_code.size(_DODO_SELL_HELPER_Address)
                            staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                    gas gas_remaining wei
                                   args address(_1415), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1675 + ceil32(return_data.size) + 105] = ext_call.return_data[0]
                            mem[_1675 + ceil32(return_data.size) + 137] = ext_call.return_data[0]
                            mem[_1675 + ceil32(return_data.size) + 169] = 96
                            mem[_1675 + ceil32(return_data.size) + 201] = 0
                            require ext_code.size(address(_1415))
                            call address(_1415).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1675 + ceil32(return_data.size) + 233]
                            mem[_1675 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                    else:
                        _1585 = mem[64]
                        mem[mem[64] + 36] = address(_1415)
                        mem[mem[64] + 68] = 0
                        _1586 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1586 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1586 + 36 len 28]
                        _1610 = mem[_1586]
                        t = _1586 + 32
                        u = _1585 + 100
                        s = mem[_1586]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1585 + floor32(mem[_1586]) + 100] = mem[_1586 + -(mem[_1586] % 32) + floor32(mem[_1586]) + 64 len mem[_1586] % 32] or Mask(8 * -(mem[_1586] % 32) + 32, -(8 * -(mem[_1586] % 32) + 32) + 256, mem[_1585 + floor32(mem[_1586]) + 100])
                        call address(ext_call.return_data[0]).mem[_1585 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1585 + 104 len _1610 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1585 + 210 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_1415)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[_1585 + 222 len 10]
                            mem[_1585 + 136] = address(_1415)
                            mem[_1585 + 168] = -1
                            mem[_1585 + 100] = 68
                            mem[64] = _1585 + 200
                            mem[_1585 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1415) << 64
                            t = _1585 + 132
                            u = _1585 + 200
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1585 + 264] = mem[_1585 + 224 len 4] or Mask(224, 32, mem[_1585 + 264])
                            call address(ext_call.return_data[0]).mem[_1585 + 200 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1585 + 204 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1585 + 310 len 22]
                                require ext_code.size(_DODO_SELL_HELPER_Address)
                                staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                        gas gas_remaining wei
                                       args address(_1415), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1585 + 204] = ext_call.return_data[0]
                                mem[_1585 + 236] = ext_call.return_data[0]
                                mem[_1585 + 268] = 96
                                mem[_1585 + 300] = 0
                                require ext_code.size(address(_1415))
                                call address(_1415).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1585 + 332]
                                mem[_1585 + 200] = ext_call.return_data[0]
                            else:
                                mem[64] = _1585 + ceil32(return_data.size) + 201
                                mem[_1585 + 200] = return_data.size
                                mem[_1585 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1585 + 232]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1585 + ceil32(return_data.size) + 311 len 22]
                                require ext_code.size(_DODO_SELL_HELPER_Address)
                                staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                        gas gas_remaining wei
                                       args address(_1415), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1585 + ceil32(return_data.size) + 205] = ext_call.return_data[0]
                                mem[_1585 + ceil32(return_data.size) + 237] = ext_call.return_data[0]
                                mem[_1585 + ceil32(return_data.size) + 269] = 96
                                mem[_1585 + ceil32(return_data.size) + 301] = 0
                                require ext_code.size(address(_1415))
                                call address(_1415).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1585 + ceil32(return_data.size) + 333]
                                mem[_1585 + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                        else:
                            mem[_1585 + 100] = return_data.size
                            mem[_1585 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1585 + 132]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1585 + ceil32(return_data.size) + 211 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_1415)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[_1585 + ceil32(return_data.size) + 223 len 10]
                            mem[_1585 + ceil32(return_data.size) + 137] = address(_1415)
                            mem[_1585 + ceil32(return_data.size) + 169] = -1
                            mem[_1585 + ceil32(return_data.size) + 101] = 68
                            mem[64] = _1585 + ceil32(return_data.size) + 201
                            mem[_1585 + ceil32(return_data.size) + 133] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1415) << 64
                            t = _1585 + ceil32(return_data.size) + 133
                            u = _1585 + ceil32(return_data.size) + 201
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1585 + ceil32(return_data.size) + 265] = mem[_1585 + ceil32(return_data.size) + 225 len 4] or Mask(224, 32, mem[_1585 + ceil32(return_data.size) + 265])
                            call address(ext_call.return_data[0]).mem[_1585 + ceil32(return_data.size) + 201 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1585 + ceil32(return_data.size) + 205 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1585 + ceil32(return_data.size) + 311 len 22]
                                require ext_code.size(_DODO_SELL_HELPER_Address)
                                staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                        gas gas_remaining wei
                                       args address(_1415), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1585 + ceil32(return_data.size) + 205] = ext_call.return_data[0]
                                mem[_1585 + ceil32(return_data.size) + 237] = ext_call.return_data[0]
                                mem[_1585 + ceil32(return_data.size) + 269] = 96
                                mem[_1585 + ceil32(return_data.size) + 301] = 0
                                require ext_code.size(address(_1415))
                                call address(_1415).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1585 + ceil32(return_data.size) + 333]
                                mem[_1585 + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                            else:
                                mem[64] = _1585 + (2 * ceil32(return_data.size)) + 202
                                mem[_1585 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_1585 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[_1585 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1585 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1585 + (2 * ceil32(return_data.size)) + 312 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(_DODO_SELL_HELPER_Address)
                                staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                        gas gas_remaining wei
                                       args address(_1415), ext_call.return_data[0], mem[_1585 + (2 * ceil32(return_data.size)) + 270 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1585 + (2 * ceil32(return_data.size)) + 206] = ext_call.return_data[0]
                                mem[_1585 + (2 * ceil32(return_data.size)) + 238] = ext_call.return_data[0]
                                mem[_1585 + (2 * ceil32(return_data.size)) + 270] = 96
                                mem[_1585 + (2 * ceil32(return_data.size)) + 302] = 0
                                require ext_code.size(address(_1415))
                                call address(_1415).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1585 + (2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                                mem[_1585 + (2 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg4:
                revert with 0, 
                            32,
                            42,
                            0x48444f444f563150726f787930313a2052657475726e20616d6f756e74206973206e6f7420656e6f7567,
                            mem[mem[64] + 110 len 22]
            if ext_call.return_data[0]:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _1521 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1522 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1522 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _1540 = mem[_1522]
                    mem[_1521 + 100 len floor32(mem[_1522])] = mem[_1522 + 32 len floor32(mem[_1522])]
                    mem[_1521 + floor32(mem[_1522]) + -(mem[_1522] % 32) + 132 len mem[_1522] % 32] = mem[_1522 + -(mem[_1522] % 32) + floor32(mem[_1522]) + 64 len mem[_1522] % 32]
                    call arg2.mem[_1521 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_1521 + 104 len _1540 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1521 + 210 len 22]
                    else:
                        mem[_1521 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1521 + 132]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1521 + ceil32(return_data.size) + 211 len 22]
        else:
            require ext_code.size(_WETH_Address)
            staticcall _WETH_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(_WETH_Address)
            call _WETH_Address.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < arg4:
                revert with 0, 
                            32,
                            42,
                            0x48444f444f563150726f787930313a2052657475726e20616d6f756e74206973206e6f7420656e6f7567,
                            mem[mem[64] + 110 len 22]
            if ext_call.return_data[0]:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _1514 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1515 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1515 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _1525 = mem[_1515]
                    mem[_1514 + 100 len floor32(mem[_1515])] = mem[_1515 + 32 len floor32(mem[_1515])]
                    mem[_1514 + floor32(mem[_1515]) + -(mem[_1515] % 32) + 132 len mem[_1515] % 32] = mem[_1515 + -(mem[_1515] % 32) + floor32(mem[_1515]) + 64 len mem[_1515] % 32]
                    call arg2.mem[_1514 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_1514 + 104 len _1525 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1514 + 210 len 22]
                    else:
                        mem[_1514 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1514 + 132]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1514 + ceil32(return_data.size) + 211 len 22]
    else:
        mem[(32 * arg5.length) + (32 * arg6.length) + 160] = 0xa5ea46600000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (32 * arg6.length) + 164] = arg1
        mem[(32 * arg5.length) + (32 * arg6.length) + 196] = msg.sender
        mem[(32 * arg5.length) + (32 * arg6.length) + 228] = this.address
        mem[(32 * arg5.length) + (32 * arg6.length) + 260] = arg3
        require ext_code.size(_DODO_APPROVE_Address)
        call _DODO_APPROVE_Address.claimTokens(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args address(arg1), msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg5.length:
            require idx < mem[96]
            _1419 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg5.length) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            if 0 == mem[(32 * idx) + (32 * arg5.length) + 191 len 1]:
                call mem[(32 * idx) + 140 len 20]._BASE_TOKEN_() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_1419)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = 0
                    require ext_code.size(address(_1419))
                    call address(_1419).0x8dae7333 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 96, 0, mem[mem[64] + 132]
                    mem[mem[64]] = ext_call.return_data[0]
                else:
                    if not ext_call.return_data[0]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_1419)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[mem[64] + 122 len 10]
                        _1697 = mem[64]
                        mem[mem[64] + 36] = address(_1419)
                        mem[mem[64] + 68] = -1
                        _1698 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1698 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1698 + 36 len 28]
                        _1722 = mem[_1698]
                        t = _1698 + 32
                        u = _1697 + 100
                        s = mem[_1698]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1697 + floor32(mem[_1698]) + 100] = mem[_1698 + -(mem[_1698] % 32) + floor32(mem[_1698]) + 64 len mem[_1698] % 32] or Mask(8 * -(mem[_1698] % 32) + 32, -(8 * -(mem[_1698] % 32) + 32) + 256, mem[_1697 + floor32(mem[_1698]) + 100])
                        call address(ext_call.return_data[0]).mem[_1697 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1697 + 104 len _1722 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1697 + 210 len 22]
                            mem[_1697 + 104] = ext_call.return_data[0]
                            mem[_1697 + 136] = 0
                            mem[_1697 + 168] = 96
                            mem[_1697 + 200] = 0
                            require ext_code.size(address(_1419))
                            call address(_1419).0x8dae7333 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 96, 0, mem[_1697 + 232]
                            mem[_1697 + 100] = ext_call.return_data[0]
                        else:
                            mem[64] = _1697 + ceil32(return_data.size) + 101
                            mem[_1697 + 100] = return_data.size
                            mem[_1697 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1697 + 132]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1697 + ceil32(return_data.size) + 211 len 22]
                            mem[_1697 + ceil32(return_data.size) + 105] = ext_call.return_data[0]
                            mem[_1697 + ceil32(return_data.size) + 137] = 0
                            mem[_1697 + ceil32(return_data.size) + 169] = 96
                            mem[_1697 + ceil32(return_data.size) + 201] = 0
                            require ext_code.size(address(_1419))
                            call address(_1419).0x8dae7333 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 96, 0, mem[_1697 + ceil32(return_data.size) + 233]
                            mem[_1697 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                    else:
                        _1604 = mem[64]
                        mem[mem[64] + 36] = address(_1419)
                        mem[mem[64] + 68] = 0
                        _1605 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1605 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1605 + 36 len 28]
                        _1620 = mem[_1605]
                        t = _1605 + 32
                        u = _1604 + 100
                        s = mem[_1605]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1604 + floor32(mem[_1605]) + 100] = mem[_1605 + -(mem[_1605] % 32) + floor32(mem[_1605]) + 64 len mem[_1605] % 32] or Mask(8 * -(mem[_1605] % 32) + 32, -(8 * -(mem[_1605] % 32) + 32) + 256, mem[_1604 + floor32(mem[_1605]) + 100])
                        call address(ext_call.return_data[0]).mem[_1604 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1604 + 104 len _1620 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1604 + 210 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_1419)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[_1604 + 222 len 10]
                            mem[_1604 + 136] = address(_1419)
                            mem[_1604 + 168] = -1
                            mem[_1604 + 100] = 68
                            mem[64] = _1604 + 200
                            mem[_1604 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1419) << 64
                            t = _1604 + 132
                            u = _1604 + 200
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1604 + 264] = mem[_1604 + 224 len 4] or Mask(224, 32, mem[_1604 + 264])
                            call address(ext_call.return_data[0]).mem[_1604 + 200 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1604 + 204 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1604 + 310 len 22]
                                mem[_1604 + 204] = ext_call.return_data[0]
                                mem[_1604 + 236] = 0
                                mem[_1604 + 268] = 96
                                mem[_1604 + 300] = 0
                                require ext_code.size(address(_1419))
                                call address(_1419).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 96, 0, mem[_1604 + 332]
                                mem[_1604 + 200] = ext_call.return_data[0]
                            else:
                                mem[64] = _1604 + ceil32(return_data.size) + 201
                                mem[_1604 + 200] = return_data.size
                                mem[_1604 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1604 + 232]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1604 + ceil32(return_data.size) + 311 len 22]
                                mem[_1604 + ceil32(return_data.size) + 205] = ext_call.return_data[0]
                                mem[_1604 + ceil32(return_data.size) + 237] = 0
                                mem[_1604 + ceil32(return_data.size) + 269] = 96
                                mem[_1604 + ceil32(return_data.size) + 301] = 0
                                require ext_code.size(address(_1419))
                                call address(_1419).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 96, 0, mem[_1604 + ceil32(return_data.size) + 333]
                                mem[_1604 + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                        else:
                            mem[_1604 + 100] = return_data.size
                            mem[_1604 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1604 + 132]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1604 + ceil32(return_data.size) + 211 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_1419)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[_1604 + ceil32(return_data.size) + 223 len 10]
                            mem[_1604 + ceil32(return_data.size) + 137] = address(_1419)
                            mem[_1604 + ceil32(return_data.size) + 169] = -1
                            mem[_1604 + ceil32(return_data.size) + 101] = 68
                            mem[64] = _1604 + ceil32(return_data.size) + 201
                            mem[_1604 + ceil32(return_data.size) + 133] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1419) << 64
                            t = _1604 + ceil32(return_data.size) + 133
                            u = _1604 + ceil32(return_data.size) + 201
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1604 + ceil32(return_data.size) + 265] = mem[_1604 + ceil32(return_data.size) + 225 len 4] or Mask(224, 32, mem[_1604 + ceil32(return_data.size) + 265])
                            call address(ext_call.return_data[0]).mem[_1604 + ceil32(return_data.size) + 201 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1604 + ceil32(return_data.size) + 205 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1604 + ceil32(return_data.size) + 311 len 22]
                                mem[_1604 + ceil32(return_data.size) + 205] = ext_call.return_data[0]
                                mem[_1604 + ceil32(return_data.size) + 237] = 0
                                mem[_1604 + ceil32(return_data.size) + 269] = 96
                                mem[_1604 + ceil32(return_data.size) + 301] = 0
                                require ext_code.size(address(_1419))
                                call address(_1419).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 96, 0, mem[_1604 + ceil32(return_data.size) + 333]
                                mem[_1604 + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                            else:
                                mem[64] = _1604 + (2 * ceil32(return_data.size)) + 202
                                mem[_1604 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_1604 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[_1604 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1604 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1604 + (2 * ceil32(return_data.size)) + 312 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                mem[_1604 + (2 * ceil32(return_data.size)) + 206] = ext_call.return_data[0]
                                mem[_1604 + (2 * ceil32(return_data.size)) + 238] = 0
                                mem[_1604 + (2 * ceil32(return_data.size)) + 270] = 96
                                mem[_1604 + (2 * ceil32(return_data.size)) + 302] = 0
                                require ext_code.size(address(_1419))
                                call address(_1419).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 96, 0, mem[_1604 + (2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                                mem[_1604 + (2 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
            else:
                call mem[(32 * idx) + 140 len 20]._QUOTE_TOKEN_() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_1419)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    require ext_code.size(_DODO_SELL_HELPER_Address)
                    staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                            gas gas_remaining wei
                           args address(_1419), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = 0
                    require ext_code.size(address(_1419))
                    call address(_1419).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[mem[64] + 132]
                    mem[mem[64]] = ext_call.return_data[0]
                else:
                    if not ext_call.return_data[0]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_1419)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[mem[64] + 122 len 10]
                        _1691 = mem[64]
                        mem[mem[64] + 36] = address(_1419)
                        mem[mem[64] + 68] = -1
                        _1692 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1692 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1692 + 36 len 28]
                        _1720 = mem[_1692]
                        t = _1692 + 32
                        u = _1691 + 100
                        s = mem[_1692]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1691 + floor32(mem[_1692]) + 100] = mem[_1692 + -(mem[_1692] % 32) + floor32(mem[_1692]) + 64 len mem[_1692] % 32] or Mask(8 * -(mem[_1692] % 32) + 32, -(8 * -(mem[_1692] % 32) + 32) + 256, mem[_1691 + floor32(mem[_1692]) + 100])
                        call address(ext_call.return_data[0]).mem[_1691 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1691 + 104 len _1720 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1691 + 210 len 22]
                            require ext_code.size(_DODO_SELL_HELPER_Address)
                            staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                    gas gas_remaining wei
                                   args address(_1419), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1691 + 104] = ext_call.return_data[0]
                            mem[_1691 + 136] = ext_call.return_data[0]
                            mem[_1691 + 168] = 96
                            mem[_1691 + 200] = 0
                            require ext_code.size(address(_1419))
                            call address(_1419).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1691 + 232]
                            mem[_1691 + 100] = ext_call.return_data[0]
                        else:
                            mem[64] = _1691 + ceil32(return_data.size) + 101
                            mem[_1691 + 100] = return_data.size
                            mem[_1691 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1691 + 132]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1691 + ceil32(return_data.size) + 211 len 22]
                            require ext_code.size(_DODO_SELL_HELPER_Address)
                            staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                    gas gas_remaining wei
                                   args address(_1419), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1691 + ceil32(return_data.size) + 105] = ext_call.return_data[0]
                            mem[_1691 + ceil32(return_data.size) + 137] = ext_call.return_data[0]
                            mem[_1691 + ceil32(return_data.size) + 169] = 96
                            mem[_1691 + ceil32(return_data.size) + 201] = 0
                            require ext_code.size(address(_1419))
                            call address(_1419).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1691 + ceil32(return_data.size) + 233]
                            mem[_1691 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                    else:
                        _1601 = mem[64]
                        mem[mem[64] + 36] = address(_1419)
                        mem[mem[64] + 68] = 0
                        _1602 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1602 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1602 + 36 len 28]
                        _1617 = mem[_1602]
                        t = _1602 + 32
                        u = _1601 + 100
                        s = mem[_1602]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1601 + floor32(mem[_1602]) + 100] = mem[_1602 + -(mem[_1602] % 32) + floor32(mem[_1602]) + 64 len mem[_1602] % 32] or Mask(8 * -(mem[_1602] % 32) + 32, -(8 * -(mem[_1602] % 32) + 32) + 256, mem[_1601 + floor32(mem[_1602]) + 100])
                        call address(ext_call.return_data[0]).mem[_1601 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1601 + 104 len _1617 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1601 + 210 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_1419)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[_1601 + 222 len 10]
                            mem[_1601 + 136] = address(_1419)
                            mem[_1601 + 168] = -1
                            mem[_1601 + 100] = 68
                            mem[64] = _1601 + 200
                            mem[_1601 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1419) << 64
                            t = _1601 + 132
                            u = _1601 + 200
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1601 + 264] = mem[_1601 + 224 len 4] or Mask(224, 32, mem[_1601 + 264])
                            call address(ext_call.return_data[0]).mem[_1601 + 200 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1601 + 204 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1601 + 310 len 22]
                                require ext_code.size(_DODO_SELL_HELPER_Address)
                                staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                        gas gas_remaining wei
                                       args address(_1419), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1601 + 204] = ext_call.return_data[0]
                                mem[_1601 + 236] = ext_call.return_data[0]
                                mem[_1601 + 268] = 96
                                mem[_1601 + 300] = 0
                                require ext_code.size(address(_1419))
                                call address(_1419).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1601 + 332]
                                mem[_1601 + 200] = ext_call.return_data[0]
                            else:
                                mem[64] = _1601 + ceil32(return_data.size) + 201
                                mem[_1601 + 200] = return_data.size
                                mem[_1601 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1601 + 232]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1601 + ceil32(return_data.size) + 311 len 22]
                                require ext_code.size(_DODO_SELL_HELPER_Address)
                                staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                        gas gas_remaining wei
                                       args address(_1419), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1601 + ceil32(return_data.size) + 205] = ext_call.return_data[0]
                                mem[_1601 + ceil32(return_data.size) + 237] = ext_call.return_data[0]
                                mem[_1601 + ceil32(return_data.size) + 269] = 96
                                mem[_1601 + ceil32(return_data.size) + 301] = 0
                                require ext_code.size(address(_1419))
                                call address(_1419).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1601 + ceil32(return_data.size) + 333]
                                mem[_1601 + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                        else:
                            mem[_1601 + 100] = return_data.size
                            mem[_1601 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1601 + 132]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1601 + ceil32(return_data.size) + 211 len 22]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_1419)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[_1601 + ceil32(return_data.size) + 223 len 10]
                            mem[_1601 + ceil32(return_data.size) + 137] = address(_1419)
                            mem[_1601 + ceil32(return_data.size) + 169] = -1
                            mem[_1601 + ceil32(return_data.size) + 101] = 68
                            mem[64] = _1601 + ceil32(return_data.size) + 201
                            mem[_1601 + ceil32(return_data.size) + 133] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1419) << 64
                            t = _1601 + ceil32(return_data.size) + 133
                            u = _1601 + ceil32(return_data.size) + 201
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1601 + ceil32(return_data.size) + 265] = mem[_1601 + ceil32(return_data.size) + 225 len 4] or Mask(224, 32, mem[_1601 + ceil32(return_data.size) + 265])
                            call address(ext_call.return_data[0]).mem[_1601 + ceil32(return_data.size) + 201 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1601 + ceil32(return_data.size) + 205 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1601 + ceil32(return_data.size) + 311 len 22]
                                require ext_code.size(_DODO_SELL_HELPER_Address)
                                staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                        gas gas_remaining wei
                                       args address(_1419), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1601 + ceil32(return_data.size) + 205] = ext_call.return_data[0]
                                mem[_1601 + ceil32(return_data.size) + 237] = ext_call.return_data[0]
                                mem[_1601 + ceil32(return_data.size) + 269] = 96
                                mem[_1601 + ceil32(return_data.size) + 301] = 0
                                require ext_code.size(address(_1419))
                                call address(_1419).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1601 + ceil32(return_data.size) + 333]
                                mem[_1601 + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                            else:
                                mem[64] = _1601 + (2 * ceil32(return_data.size)) + 202
                                mem[_1601 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_1601 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[_1601 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1601 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_1601 + (2 * ceil32(return_data.size)) + 312 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(_DODO_SELL_HELPER_Address)
                                staticcall _DODO_SELL_HELPER_Address.0xca19ebd9 with:
                                        gas gas_remaining wei
                                       args address(_1419), ext_call.return_data[0], mem[_1601 + (2 * ceil32(return_data.size)) + 270 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1601 + (2 * ceil32(return_data.size)) + 206] = ext_call.return_data[0]
                                mem[_1601 + (2 * ceil32(return_data.size)) + 238] = ext_call.return_data[0]
                                mem[_1601 + (2 * ceil32(return_data.size)) + 270] = 96
                                mem[_1601 + (2 * ceil32(return_data.size)) + 302] = 0
                                require ext_code.size(address(_1419))
                                call address(_1419).buyBaseToken(uint256 rg1, uint256 rg2, bytes rg3) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], 96, 0, mem[_1601 + (2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                                mem[_1601 + (2 * ceil32(return_data.size)) + 202] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg4:
                revert with 0, 
                            32,
                            42,
                            0x48444f444f563150726f787930313a2052657475726e20616d6f756e74206973206e6f7420656e6f7567,
                            mem[mem[64] + 110 len 22]
            if ext_call.return_data[0]:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _1530 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1531 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1531 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _1544 = mem[_1531]
                    mem[_1530 + 100 len floor32(mem[_1531])] = mem[_1531 + 32 len floor32(mem[_1531])]
                    mem[_1530 + floor32(mem[_1531]) + -(mem[_1531] % 32) + 132 len mem[_1531] % 32] = mem[_1531 + -(mem[_1531] % 32) + floor32(mem[_1531]) + 64 len mem[_1531] % 32]
                    call arg2.mem[_1530 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_1530 + 104 len _1544 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1530 + 210 len 22]
                    else:
                        mem[_1530 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1530 + 132]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1530 + ceil32(return_data.size) + 211 len 22]
        else:
            require ext_code.size(_WETH_Address)
            staticcall _WETH_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(_WETH_Address)
            call _WETH_Address.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < arg4:
                revert with 0, 
                            32,
                            42,
                            0x48444f444f563150726f787930313a2052657475726e20616d6f756e74206973206e6f7420656e6f7567,
                            mem[mem[64] + 110 len 22]
            if ext_call.return_data[0]:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _1518 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _1519 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1519 + 32 len 4] = unknown_0xa9059cbb(?????)
                    _1534 = mem[_1519]
                    mem[_1518 + 100 len floor32(mem[_1519])] = mem[_1519 + 32 len floor32(mem[_1519])]
                    mem[_1518 + floor32(mem[_1519]) + -(mem[_1519] % 32) + 132 len mem[_1519] % 32] = mem[_1519 + -(mem[_1519] % 32) + floor32(mem[_1519]) + 64 len mem[_1519] % 32]
                    call arg2.mem[_1518 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_1518 + 104 len _1534 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1518 + 210 len 22]
                    else:
                        mem[_1518 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1518 + 132]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1518 + ceil32(return_data.size) + 211 len 22]
    emit OrderHistory(arg3, ext_call.return_data[0], arg1, arg2, msg.sender);
    return ext_call.return_data[0]
}



}
