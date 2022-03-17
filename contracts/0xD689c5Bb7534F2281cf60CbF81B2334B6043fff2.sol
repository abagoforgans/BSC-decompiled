contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function getOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1
    return bool(stor1[address(arg1)])
}

function sub_1fd5d764(?) {
    require calldata.size - 4 >= 32
    require msg.sender == 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1
    if arg1 == stor0:
        revert with 0, 'equal'
    stor0 = arg1
}

function sub_393e2169(?) {
    require calldata.size - 4 >= 32
    require msg.sender == 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1
    call 0x0f3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if bool(stor1[address(msg.sender)]) != 1:
    delegate stor0 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_f4305035(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        idx = idx + 1
        continue 
}

function sub_13076174(?) {
    require calldata.size - 4 >= 64
    require msg.sender == 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), 0xf3c2476fbf0ed09dff00ea7, 0, Mask(224, 32, arg2) >> 32
    call arg1.0xcc72e6f1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), 0xf3c2476fbf0ed09dff00ea7:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}



}
