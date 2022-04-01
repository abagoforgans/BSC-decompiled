contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function doAirdrop(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _48 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
        _49 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_49 + 32] = mem[_49 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _48 + 196
        mem[_48 + 132] = 32
        mem[_48 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_48 + 302 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        _55 = mem[_49]
        t = _49 + 32
        u = mem[64]
        s = mem[_49]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_49])] = mem[_49 + floor32(mem[_49]) + -(mem[_49] % 32) + 64 len mem[_49] % 32] or Mask(8 * -(mem[_49] % 32) + 32, -(8 * -(mem[_49] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_49])])
        call arg1.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _55 + _48 + -mem[64] + 192]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            _98 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_48 + 132]
            _100 = mem[_48 + 132]
            idx = 0
            while idx < _100:
                mem[_98 + idx + 68] = mem[_48 + idx + 164]
                idx = idx + 32
                continue 
            if not _100 % 32:
                revert with memory
                  from mem[64]
                   len _100 + _98 + -mem[64] + 68
            mem[floor32(_100) + _98 + 68] = mem[floor32(_100) + _98 + -(_100 % 32) + 100 len _100 % 32]
            revert with memory
              from mem[64]
               len floor32(_100) + _98 + -mem[64] + 100
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_95] = return_data.size
        mem[_95 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_95 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_48 + 132]
        _104 = mem[_48 + 132]
        idx = 0
        while idx < _104:
            mem[_102 + idx + 68] = mem[_48 + idx + 164]
            idx = idx + 32
            continue 
        if not _104 % 32:
            revert with memory
              from mem[64]
               len _104 + _102 + -mem[64] + 68
        mem[floor32(_104) + _102 + 68] = mem[floor32(_104) + _102 + -(_104 % 32) + 100 len _104 % 32]
        revert with memory
          from mem[64]
           len floor32(_104) + _102 + -mem[64] + 100
    return idx
}



}
