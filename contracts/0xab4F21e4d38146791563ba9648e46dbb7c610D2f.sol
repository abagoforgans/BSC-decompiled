contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
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

function sub_e9b5255e(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + 228] = this.address
    mem[(32 * arg3.length) + (32 * arg4.length) + 260] = arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 100
    mem[(32 * arg3.length) + (32 * arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 4] = unknown_0x23b872dd(?????)
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 356
    mem[(32 * arg3.length) + (32 * arg4.length) + 292] = 32
    mem[(32 * arg3.length) + (32 * arg4.length) + 324] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * arg3.length) + (32 * arg4.length) + 462 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * arg3.length) + (32 * arg4.length) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[(32 * arg3.length) + (32 * arg4.length) + 480 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[(32 * arg3.length) + (32 * arg4.length) + 452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg3.length:
                revert with memory
                  from 128
                   len arg3.length
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg3.length:
            if arg3.length != arg4.length:
                revert with 0, 'tos length no match!'
            idx = 0
            while idx < arg3.length:
                require idx < mem[96]
                require idx < mem[(32 * arg3.length) + 128]
                _518 = mem[(32 * idx) + (32 * arg3.length) + 160]
                _523 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 68] = _518
                _524 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_524 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_524 + 36 len 28]
                mem[64] = _523 + 164
                mem[_523 + 100] = 32
                mem[_523 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_523 + 270 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                _548 = mem[_524]
                t = _524 + 32
                u = _523 + 164
                s = mem[_524]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_523 + floor32(mem[_524]) + 164] = mem[_524 + -(mem[_524] % 32) + floor32(mem[_524]) + 64 len mem[_524] % 32] or Mask(8 * -(mem[_524] % 32) + 32, -(8 * -(mem[_524] % 32) + 32) + 256, mem[_523 + floor32(mem[_524]) + 164])
                call arg1.mem[_523 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_523 + 168 len _548 - 4]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_523 + 274 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_523 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_523 + 168] = 32
                    mem[_523 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _523 + 232] = mem[idx + _523 + 132]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _523 + -mem[64] + 264
                mem[64] = _523 + ceil32(return_data.size) + 165
                mem[_523 + 164] = return_data.size
                mem[_523 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_523 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_523 + ceil32(return_data.size) + 275 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_523 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_523 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _523 + ceil32(return_data.size) + 233] = mem[idx + _523 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_523 + ceil32(return_data.size) + 233]
        else:
            require arg3.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg3.length) + (32 * arg4.length) + 466 len 14],
                            0,
                            mem[(32 * arg3.length) + (32 * arg4.length) + 484 len 4]
            if arg3.length != arg4.length:
                revert with 0, 'tos length no match!'
            idx = 0
            while idx < arg3.length:
                require idx < mem[96]
                require idx < mem[(32 * arg3.length) + 128]
                _519 = mem[(32 * idx) + (32 * arg3.length) + 160]
                _526 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 68] = _519
                _527 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_527 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_527 + 36 len 28]
                mem[64] = _526 + 164
                mem[_526 + 100] = 32
                mem[_526 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_526 + 270 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                _552 = mem[_527]
                t = _527 + 32
                u = _526 + 164
                s = mem[_527]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_526 + floor32(mem[_527]) + 164] = mem[_527 + -(mem[_527] % 32) + floor32(mem[_527]) + 64 len mem[_527] % 32] or Mask(8 * -(mem[_527] % 32) + 32, -(8 * -(mem[_527] % 32) + 32) + 256, mem[_526 + floor32(mem[_527]) + 164])
                call arg1.mem[_526 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_526 + 168 len _552 - 4]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_526 + 274 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_526 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_526 + 168] = 32
                    mem[_526 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _526 + 232] = mem[idx + _526 + 132]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _526 + -mem[64] + 264
                mem[64] = _526 + ceil32(return_data.size) + 165
                mem[_526 + 164] = return_data.size
                mem[_526 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_526 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_526 + ceil32(return_data.size) + 275 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_526 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_526 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _526 + ceil32(return_data.size) + 233] = mem[idx + _526 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_526 + ceil32(return_data.size) + 233]
    else:
        mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 357
        mem[(32 * arg3.length) + (32 * arg4.length) + 356] = return_data.size
        mem[(32 * arg3.length) + (32 * arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if arg3.length != arg4.length:
                revert with 0, 'tos length no match!'
            idx = 0
            while idx < arg3.length:
                require idx < mem[96]
                require idx < mem[(32 * arg3.length) + 128]
                _521 = mem[(32 * idx) + (32 * arg3.length) + 160]
                _529 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 68] = _521
                _530 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_530 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_530 + 36 len 28]
                mem[64] = _529 + 164
                mem[_529 + 100] = 32
                mem[_529 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_529 + 270 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                _556 = mem[_530]
                t = _530 + 32
                u = mem[64]
                s = mem[_530]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_530])] = mem[_530 + floor32(mem[_530]) + -(mem[_530] % 32) + 64 len mem[_530] % 32] or Mask(8 * -(mem[_530] % 32) + 32, -(8 * -(mem[_530] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_530])])
                call arg1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _556 + _529 + -mem[64] + 160]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _739 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_529 + 100]
                    _741 = mem[_529 + 100]
                    idx = 0
                    while idx < _741:
                        mem[idx + _739 + 68] = mem[idx + _529 + 132]
                        idx = idx + 32
                        continue 
                    if not _741 % 32:
                        revert with memory
                          from mem[64]
                           len _741 + _739 + -mem[64] + 68
                    mem[floor32(_741) + _739 + 68] = mem[floor32(_741) + _739 + -(_741 % 32) + 100 len _741 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_741) + _739 + -mem[64] + 100
                _713 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_713] = return_data.size
                mem[_713 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_713 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _743 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_529 + 100]
                _745 = mem[_529 + 100]
                idx = 0
                while idx < _745:
                    mem[idx + _743 + 68] = mem[idx + _529 + 132]
                    idx = idx + 32
                    continue 
                if not _745 % 32:
                    revert with memory
                      from mem[64]
                       len _745 + _743 + -mem[64] + 68
                mem[floor32(_745) + _743 + 68] = mem[floor32(_745) + _743 + -(_745 % 32) + 100 len _745 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_745) + _743 + -mem[64] + 100
        else:
            require return_data.size >= 32
            if not mem[(32 * arg3.length) + (32 * arg4.length) + 388]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 467 len 22]
            if arg3.length != arg4.length:
                revert with 0, 'tos length no match!'
            idx = 0
            while idx < arg3.length:
                require idx < mem[96]
                require idx < mem[(32 * arg3.length) + 128]
                _522 = mem[(32 * idx) + (32 * arg3.length) + 160]
                _532 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 68] = _522
                _533 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_533 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_533 + 36 len 28]
                mem[64] = _532 + 164
                mem[_532 + 100] = 32
                mem[_532 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_532 + 270 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                _560 = mem[_533]
                t = _533 + 32
                u = _532 + 164
                s = mem[_533]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_532 + floor32(mem[_533]) + 164] = mem[_533 + -(mem[_533] % 32) + floor32(mem[_533]) + 64 len mem[_533] % 32] or Mask(8 * -(mem[_533] % 32) + 32, -(8 * -(mem[_533] % 32) + 32) + 256, mem[_532 + floor32(mem[_533]) + 164])
                call arg1.mem[_532 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_532 + 168 len _560 - 4]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_532 + 274 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_532 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_532 + 168] = 32
                    mem[_532 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _532 + 232] = mem[idx + _532 + 132]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _532 + -mem[64] + 264
                mem[64] = _532 + ceil32(return_data.size) + 165
                mem[_532 + 164] = return_data.size
                mem[_532 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_532 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_532 + ceil32(return_data.size) + 275 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_532 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_532 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _532 + ceil32(return_data.size) + 233] = mem[idx + _532 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_532 + ceil32(return_data.size) + 233]
}



}
